package com.microsoft.onlineid.internal.sso.client.request;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.internal.sso.SsoService;
import com.microsoft.onlineid.internal.sso.SsoServiceError;
import com.microsoft.onlineid.internal.sso.client.ServiceBindingException;
import com.microsoft.onlineid.internal.sso.client.ServiceFinder;
import com.microsoft.onlineid.internal.sso.service.IMsaSsoService;
import com.microsoft.onlineid.internal.sso.service.MsaSsoService;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.sts.ServerConfig;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class SingleSsoRequest<T> implements ServiceConnection {
    static final String MaxTriesErrorMessage = "Max SSO tries exceeded.";
    static final int MaxWaitTimeForServiceBindingInMillis = 3000;
    protected final Context _applicationContext;
    protected final Bundle _clientState;
    protected final ServerConfig _config;
    private final Object _lock = new Object();
    protected IMsaSsoService _msaSsoService = null;
    protected boolean _serviceConnected;
    protected final TypedStorage _storage;

    protected abstract T performRequestTask() throws AuthenticationException, RemoteException;

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName className, IBinder service) {
        this._msaSsoService = IMsaSsoService.Stub.asInterface(service);
        synchronized (this._lock) {
            this._serviceConnected = true;
            this._lock.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName className) {
        this._msaSsoService = null;
        this._serviceConnected = false;
    }

    public SingleSsoRequest(Context applicationContext, Bundle clientState) {
        this._applicationContext = applicationContext;
        this._clientState = clientState;
        this._config = new ServerConfig(applicationContext);
        this._storage = new TypedStorage(applicationContext);
    }

    public Bundle getDefaultCallingParams() {
        Bundle params = new Bundle();
        try {
            Bundle metadata = this._applicationContext.getPackageManager().getServiceInfo(new ComponentName(this._applicationContext, MsaSsoService.class.getName()), 128).metaData;
            params.putString(BundleMarshaller.ClientPackageNameKey, this._applicationContext.getPackageName());
            params.putInt(BundleMarshaller.ClientSsoVersionKey, metadata.getInt(ServiceFinder.SsoVersionMetaDataName));
            params.putString(BundleMarshaller.ClientSdkVersionKey, metadata.getString(ServiceFinder.SdkVersionMetaDataName));
            params.putString(BundleMarshaller.ClientConfigVersionKey, this._config.getString(ServerConfig.Version));
            params.putLong(BundleMarshaller.ClientConfigLastDownloadedTimeKey, this._storage.readConfigLastDownloadedTime());
            params.putBundle(BundleMarshaller.ClientStateBundleKey, this._clientState);
        } catch (PackageManager.NameNotFoundException e) {
            Logger.error("Could not find calling SSO service meta-data.", e);
        }
        return params;
    }

    public T performRequest(SsoService ssoService) throws AuthenticationException {
        int maxTries = this._config.getInt(ServerConfig.Int.MaxTriesForSsoRequestToSingleService);
        if (maxTries < 1) {
            String error = "Invalid MaxTriesForSsoRequestToSingleService: " + maxTries;
            Logger.error(error);
            ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoFallback, error);
            maxTries = 1;
        }
        ServiceBindingException lastException = null;
        for (int tries = 1; tries <= maxTries; tries++) {
            try {
                return tryPerformRequest(ssoService);
            } catch (ServiceBindingException e) {
                lastException = e;
            }
        }
        throw new ServiceBindingException(MaxTriesErrorMessage, lastException);
    }

    public T tryPerformRequest(SsoService ssoService) throws AuthenticationException {
        String requestType = getClass().getSimpleName();
        try {
            try {
                if (bind(ssoService)) {
                    synchronized (this._lock) {
                        if (!this._serviceConnected) {
                            this._lock.wait(3000L);
                        }
                    }
                    if (this._serviceConnected) {
                        Logger.info("Bound to: " + ssoService.getPackageName() + " [" + requestType + "]");
                        T tPerformRequestTask = performRequestTask();
                        if (1 != 0) {
                            unbind();
                        }
                        return tPerformRequestTask;
                    }
                    String error = "Timed out after " + String.valueOf(MaxWaitTimeForServiceBindingInMillis) + " milliseconds when trying to bind to: " + ssoService.getPackageName() + " [" + requestType + "]";
                    Logger.warning(error);
                    throw new ServiceBindingException(error);
                }
                String errorMessage = "Failed to bind to " + ssoService.getPackageName() + " [" + requestType + "]";
                Logger.error(errorMessage);
                throw new ServiceBindingException(errorMessage);
            } catch (AuthenticationException e) {
                throw e;
            } catch (SecurityException e2) {
                Logger.error("Caught a SecurityException while trying to bind to " + ssoService.getPackageName() + ", service may not be exported correctly. [" + requestType + "]", e2);
                throw new ServiceBindingException(e2);
            } catch (Exception e3) {
                Logger.error("SSO service request threw an unhandled exception.", e3);
                throw new InternalException(e3);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                unbind();
            }
            throw th;
        }
    }

    boolean getIsServiceConnected() {
        return this._serviceConnected;
    }

    protected boolean bind(SsoService ssoService) {
        Intent intent = new Intent(SsoService.SsoServiceIntent).setPackage(ssoService.getPackageName());
        Logger.info(this._applicationContext.getPackageName() + " attempting to bind to: " + ssoService.getPackageName() + " [" + getClass().getSimpleName() + "]");
        return this._applicationContext.bindService(intent, this, 1);
    }

    protected void unbind() {
        this._serviceConnected = false;
        this._msaSsoService = null;
        this._applicationContext.unbindService(this);
    }

    protected static void checkForErrors(Bundle bundle) throws AuthenticationException {
        checkForErrors(bundle, true);
    }

    static void checkForErrors(Bundle bundle, boolean logError) throws AuthenticationException {
        if (BundleMarshaller.hasError(bundle)) {
            if (logError) {
                SsoServiceError error = SsoServiceError.get(bundle.getInt(BundleMarshaller.ErrorCodeKey));
                String message = bundle.getString(BundleMarshaller.ErrorMessageKey);
                Logger.error(String.format(Locale.US, "%s: %s, %s", ClientAnalytics.SsoError, error.name(), message));
                ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.SsoError, error.name() + ": " + message);
            }
            throw BundleMarshaller.exceptionFromBundle(bundle);
        }
    }
}
