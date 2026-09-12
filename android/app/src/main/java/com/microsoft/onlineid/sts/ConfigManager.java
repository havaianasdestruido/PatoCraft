package com.microsoft.onlineid.sts;

import android.content.Context;
import android.text.TextUtils;
import android.util.Xml;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.configuration.Environment;
import com.microsoft.onlineid.internal.configuration.ISetting;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.client.ServiceFinder;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.transport.Transport;
import com.microsoft.onlineid.internal.transport.TransportFactory;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.response.parsers.ConfigParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ConfigManager {
    private final Context _applicationContext;
    private ServerConfig _config;
    private ServiceFinder _serviceFinder;
    private TypedStorage _storage;

    public ConfigManager(Context applicationContext) {
        this._applicationContext = applicationContext;
    }

    protected ServerConfig getConfig() {
        if (this._config == null) {
            this._config = new ServerConfig(this._applicationContext);
        }
        return this._config;
    }

    protected TypedStorage getStorage() {
        if (this._storage == null) {
            this._storage = new TypedStorage(this._applicationContext);
        }
        return this._storage;
    }

    protected ServiceFinder getServiceFinder() {
        if (this._serviceFinder == null) {
            this._serviceFinder = new ServiceFinder(this._applicationContext);
        }
        return this._serviceFinder;
    }

    protected TransportFactory getTransportFactory() {
        return new TransportFactory(this._applicationContext);
    }

    public boolean switchEnvironment(Environment newEnvironment) {
        if (newEnvironment.equals(getConfig().getEnvironment())) {
            return true;
        }
        return downloadConfiguration(newEnvironment);
    }

    public boolean isClientConfigVersionOlder(String clientConfigVersion) {
        try {
            return compareVersions(clientConfigVersion, getCurrentConfigVersion()) < 0;
        } catch (NumberFormatException ex) {
            Logger.warning("Invalid client version: " + clientConfigVersion, ex);
            return false;
        }
    }

    public boolean hasConfigBeenUpdatedRecently(long configLastDownloadedTime) {
        return (System.currentTimeMillis() - configLastDownloadedTime) / 1000 < ((long) getConfig().getInt(ServerConfig.Int.MinSecondsBetweenConfigDownloads));
    }

    public String getCurrentConfigVersion() {
        return getConfig().getString(ServerConfig.Version);
    }

    public boolean update() {
        return downloadConfiguration(getConfig().getEnvironment());
    }

    public boolean updateIfFirstDownloadNeeded() {
        Environment environment;
        PrebundledConfiguration bundledConfig;
        if (compareVersions(getCurrentConfigVersion(), "1") == 0 && ((bundledConfig = loadPrebundledConfiguration((environment = getConfig().getEnvironment()))) == null || bundledConfig.isExpired() || getServiceFinder().doesUntrustedPotentialMasterExist())) {
            boolean downloadResult = downloadConfiguration(environment);
            if (!downloadResult) {
                getConfig().markDownloadNeeded();
                return false;
            }
        }
        return true;
    }

    public boolean updateIfNeeded(String desiredVersion) {
        if (hasConfigBeenUpdatedRecently(getStorage().readConfigLastDownloadedTime())) {
            return true;
        }
        String currentVersion = getCurrentConfigVersion();
        Logger.info(String.format(Locale.US, "Checking for config update from version \"%s\" to version \"%s\"", currentVersion, desiredVersion));
        try {
            if (compareVersions(desiredVersion, currentVersion) > 0) {
                return downloadConfiguration(getConfig().getEnvironment());
            }
            return true;
        } catch (NumberFormatException ex) {
            Logger.warning("Invalid server configuration requested: " + desiredVersion, ex);
            return false;
        }
    }

    protected boolean downloadConfiguration(Environment environment) {
        Exception ex;
        boolean result = false;
        Logger.info("Downloading new PPCRL config file (" + environment.getEnvironmentName() + ").");
        Transport transport = getTransportFactory().createTransport();
        try {
            try {
                transport.openGetRequest(environment.getConfigUrl());
                int responseCode = transport.getResponseCode();
                if (responseCode == 200) {
                    result = parseConfig(transport.getResponseStream(), environment);
                } else {
                    Logger.error("Failed to download ppcrlconfig due to HTTP response code " + responseCode);
                }
                transport.closeConnection();
            } catch (Throwable th) {
                transport.closeConnection();
                throw th;
            }
        } catch (NetworkException e) {
            ex = e;
            Logger.error("Failed to download ppcrlconfig.", ex);
            ClientAnalytics.get().logException(ex);
            transport.closeConnection();
        } catch (StsParseException e2) {
            ex = e2;
            Logger.error("Failed to download ppcrlconfig.", ex);
            ClientAnalytics.get().logException(ex);
            transport.closeConnection();
        } catch (IOException e3) {
            ex = e3;
            Logger.error("Failed to download ppcrlconfig.", ex);
            ClientAnalytics.get().logException(ex);
            transport.closeConnection();
        } catch (XmlPullParserException e4) {
            ex = e4;
            Logger.error("Failed to download ppcrlconfig.", ex);
            ClientAnalytics.get().logException(ex);
            transport.closeConnection();
        }
        if (result) {
            Logger.info("Successfully downloaded ppcrlconfig version: " + getCurrentConfigVersion());
            getStorage().writeConfigLastDownloadedTime();
        } else {
            Logger.error("Failed to update ppcrlconfig (parseConfig() returned false).");
        }
        return result;
    }

    protected PrebundledConfiguration loadPrebundledConfiguration(Environment environment) {
        PrebundledConfiguration configFile = findNewestPrebundledConfiguration(environment);
        if (configFile == null) {
            return null;
        }
        InputStream stream = null;
        try {
            stream = configFile.getConfigFileStream();
            if (parseConfig(stream, environment)) {
                Logger.info("Succesfully loaded prebundled config file " + configFile.getFilePath() + ".xml (" + getCurrentConfigVersion() + ", " + environment.getEnvironmentName() + ", " + configFile.getConfigDate() + ").");
                if (configFile.isExpired()) {
                    Logger.info("Prebundled config file potentially expired (" + configFile.getConfigDate() + "), attempting download.");
                }
                if (stream == null) {
                    return configFile;
                }
                try {
                    return configFile;
                } catch (IOException e) {
                    return configFile;
                }
            }
        } catch (Exception e2) {
            Logger.error("Failed to load prebundled configuration.", e2);
            ClientAnalytics.get().logException(e2);
        } finally {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException e3) {
                }
            }
        }
        return null;
    }

    protected PrebundledConfiguration findNewestPrebundledConfiguration(Environment environment) {
        List<PrebundledConfiguration> possibleConfigurationFiles = getPossiblePrebundledConfigurationFiles(environment);
        Iterator<PrebundledConfiguration> iterator = possibleConfigurationFiles.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().exists()) {
                iterator.remove();
            }
        }
        if (possibleConfigurationFiles.isEmpty()) {
            Logger.warning("No prebundled configuration file was found.");
            return null;
        }
        Collections.sort(possibleConfigurationFiles, new Comparator<PrebundledConfiguration>() { // from class: com.microsoft.onlineid.sts.ConfigManager.1
            @Override // java.util.Comparator
            public int compare(PrebundledConfiguration lhs, PrebundledConfiguration rhs) {
                return lhs.getConfigDate().compareTo(rhs.getConfigDate()) * (-1);
            }
        });
        return possibleConfigurationFiles.get(0);
    }

    protected List<PrebundledConfiguration> getPossiblePrebundledConfigurationFiles(Environment environment) {
        String environmentName = environment.getEnvironmentName().toLowerCase(Locale.US);
        return new ArrayList(Arrays.asList(new PrebundledConfiguration(this._applicationContext, "msa-sdk/config/ppcrlconfig600-" + environmentName), new PrebundledConfiguration(this._applicationContext, "msa/config/ppcrlconfig600-" + environmentName)));
    }

    static long compareVersions(String left, String right) {
        int diff = 0;
        String[] leftTokens = TextUtils.isEmpty(left) ? new String[0] : left.split("\\.");
        String[] rightTokens = TextUtils.isEmpty(right) ? new String[0] : right.split("\\.");
        int index = 0;
        while (true) {
            if (index >= leftTokens.length && index >= rightTokens.length) {
                break;
            }
            int leftValue = 0;
            int rightValue = 0;
            if (index < leftTokens.length) {
                leftValue = Integer.parseInt(leftTokens[index]);
            }
            if (index < rightTokens.length) {
                rightValue = Integer.parseInt(rightTokens[index]);
            }
            diff = leftValue - rightValue;
            if (diff != 0) {
                break;
            }
            index++;
        }
        return diff;
    }

    protected boolean parseConfig(InputStream stream, Environment environment) throws XmlPullParserException, IOException, StsParseException {
        try {
            XmlPullParser rawParser = Xml.newPullParser();
            rawParser.setInput(stream, null);
            Integer cloudPinLength = getConfig().getNgcCloudPinLength();
            ServerConfig.Editor editor = getConfig().edit();
            editor.clear();
            editor.setString((ISetting<? extends String>) ServerConfig.EnvironmentName, environment.getEnvironmentName());
            editor.setUrl(ServerConfig.Endpoint.Configuration, environment.getConfigUrl());
            editor.setInt((ISetting<? extends Integer>) ServerConfig.NgcCloudPinLength, cloudPinLength.intValue());
            ConfigParser parser = new ConfigParser(rawParser, editor);
            parser.parse();
            boolean result = editor.commit();
            return result;
        } finally {
            stream.close();
        }
    }
}
