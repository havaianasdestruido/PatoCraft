package com.microsoft.onlineid.internal.profile;

import android.content.Context;
import android.content.Intent;
import android.util.JsonReader;
import android.util.JsonToken;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.SecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.MsaService;
import com.microsoft.onlineid.internal.exception.AccountNotFoundException;
import com.microsoft.onlineid.internal.exception.PromptNeededException;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.internal.transport.Transport;
import com.microsoft.onlineid.internal.transport.TransportFactory;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.ClockSkewManager;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.exception.InvalidResponseException;
import com.microsoft.onlineid.sts.exception.StsException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProfileManager {
    protected static final String AppIdRequestProperty = "PS-ApplicationId";
    protected static final String AuthTicketRequestProperty = "PS-MSAAuthTicket";
    protected static final String ClientVersion = "MSA Android";
    protected static final String ClientVersionRequestProperty = "X-ClientVersion";
    protected static final String OrderedBasicNameAttributeName = "PublicProfile.OrderedBasicName";
    protected static final String ProfileAppId = "F5EF4246-47B3-403A-885B-023BBAE0F547";
    protected static final String ProfileServiceUrlInt = "https://directory.services.live-int.com/profile/mine/WLX.Profiles.IC.json";
    protected static final String ProfileServiceUrlProduction = "https://pf.directory.live.com/profile/mine/WLX.Profiles.IC.json";
    private final Context _applicationContext;
    private final ClockSkewManager _clockSkewManager;
    private final JsonParser _jsonParser;
    private final ServerConfig _serverConfig;
    private final TicketManager _ticketManager;
    private final TransportFactory _transportFactory;
    private final TypedStorage _typedStorage;
    protected static final ISecurityScope ProfileServiceScopeProduction = new SecurityScope("ssl.live.com", "mbi_ssl");
    protected static final ISecurityScope ProfileServiceScopeInt = new SecurityScope("ssl.live-int.com", "mbi_ssl");

    @Deprecated
    public ProfileManager() {
        this._applicationContext = null;
        this._clockSkewManager = null;
        this._jsonParser = null;
        this._serverConfig = null;
        this._ticketManager = null;
        this._transportFactory = null;
        this._typedStorage = null;
    }

    public ProfileManager(Context applicationContext) {
        this._applicationContext = applicationContext;
        this._clockSkewManager = new ClockSkewManager(applicationContext);
        this._jsonParser = new JsonParser();
        this._serverConfig = new ServerConfig(applicationContext);
        this._ticketManager = new TicketManager(applicationContext);
        this._transportFactory = new TransportFactory(applicationContext);
        this._typedStorage = new TypedStorage(applicationContext);
    }

    public ApiRequest createUpdateProfileRequest(String accountPuid) {
        return new ApiRequest(this._applicationContext, new Intent(this._applicationContext, (Class<?>) MsaService.class).setAction(MsaService.ActionUpdateProfile)).setAccountPuid(accountPuid);
    }

    public void updateProfile(String accountPuid, String flowToken) throws NetworkException, PromptNeededException, IOException, AccountNotFoundException, StsException, InvalidResponseException {
        boolean isProduction = this._serverConfig.getEnvironment().equals(ServerConfig.KnownEnvironment.Production.getEnvironment());
        ISecurityScope scope = isProduction ? ProfileServiceScopeProduction : ProfileServiceScopeInt;
        Ticket ticket = this._ticketManager.getTicket(accountPuid, scope, flowToken, true);
        Transport transport = this._transportFactory.createTransport();
        InputStream responseStream = null;
        String url = isProduction ? ProfileServiceUrlProduction : ProfileServiceUrlInt;
        try {
            transport.openGetRequest(new URL(url));
            transport.addRequestProperty(AppIdRequestProperty, ProfileAppId);
            transport.addRequestProperty(AuthTicketRequestProperty, ticket.getValue());
            transport.addRequestProperty(ClientVersionRequestProperty, ClientVersion);
            InputStream responseStream2 = transport.getResponseStream();
            JsonReader reader = new JsonReader(new BufferedReader(new InputStreamReader(responseStream2)));
            String displayName = this._jsonParser.parseDisplayName(reader);
            AuthenticatorUserAccount account = this._typedStorage.readAccount(accountPuid);
            if (account == null) {
                throw new AccountNotFoundException("Account was deleted before operation could be completed.");
            }
            account.setDisplayName(displayName);
            account.setTimeOfLastProfileUpdate(this._clockSkewManager.getCurrentServerTime().getTime());
            this._typedStorage.writeAccount(account);
            transport.closeConnection();
            if (responseStream2 != null) {
                responseStream2.close();
            }
        } catch (Throwable th) {
            transport.closeConnection();
            if (0 != 0) {
                responseStream.close();
            }
            throw th;
        }
    }

    protected static class JsonParser {
        protected String parseDisplayName(JsonReader reader) throws IOException {
            try {
                reader.beginObject();
                findName(reader, "Views");
                reader.beginArray();
                reader.beginObject();
                findName(reader, "Attributes");
                reader.beginArray();
                while (reader.hasNext()) {
                    String value = readDisplayNameFromEntry(reader);
                    if (value != null) {
                        return value;
                    }
                }
                return null;
            } finally {
                reader.close();
            }
        }

        protected String readDisplayNameFromEntry(JsonReader reader) throws IOException {
            String key = null;
            String value = null;
            reader.beginObject();
            while (reader.hasNext()) {
                String name = reader.nextName();
                if ("Name".equals(name)) {
                    key = reader.nextString();
                } else if ("Value".equals(name)) {
                    JsonToken token = reader.peek();
                    switch (AnonymousClass1.$SwitchMap$android$util$JsonToken[token.ordinal()]) {
                        case 1:
                            value = null;
                            reader.nextNull();
                            break;
                        case 2:
                            value = reader.nextString();
                            break;
                        default:
                            reader.skipValue();
                            break;
                    }
                } else {
                    reader.skipValue();
                }
            }
            reader.endObject();
            if (ProfileManager.OrderedBasicNameAttributeName.equals(key)) {
                return value;
            }
            return null;
        }

        protected void findName(JsonReader reader, String expectedName) throws IOException {
            while (reader.hasNext()) {
                String name = reader.nextName();
                if (expectedName.equals(name)) {
                    return;
                } else {
                    reader.skipValue();
                }
            }
            throw new IOException("Unable to find name " + expectedName);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.onlineid.internal.profile.ProfileManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$util$JsonToken = new int[JsonToken.values().length];

        static {
            try {
                $SwitchMap$android$util$JsonToken[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$util$JsonToken[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }
}
