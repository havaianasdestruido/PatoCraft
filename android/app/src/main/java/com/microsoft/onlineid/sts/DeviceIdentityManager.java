package com.microsoft.onlineid.sts;

import android.content.Context;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.sts.exception.InvalidResponseException;
import com.microsoft.onlineid.sts.exception.RequestThrottledException;
import com.microsoft.onlineid.sts.exception.StsException;
import com.microsoft.onlineid.sts.request.DeviceProvisionRequest;
import com.microsoft.onlineid.sts.request.StsRequestFactory;
import com.microsoft.onlineid.sts.response.DeviceAuthResponse;
import com.microsoft.onlineid.sts.response.DeviceProvisionResponse;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DeviceIdentityManager {
    static final int MaxProvisionAttemptsPerCall = 3;
    private final Context _applicationContext;
    private DeviceCredentialGenerator _credentialGenerator;
    private StsRequestFactory _requestFactory;
    private final TypedStorage _storage;

    public DeviceIdentityManager(Context applicationContext) {
        this._applicationContext = applicationContext;
        this._storage = new TypedStorage(applicationContext);
        this._requestFactory = null;
        this._credentialGenerator = null;
    }

    DeviceIdentityManager(TypedStorage storage, DeviceCredentialGenerator credentialGenerator, StsRequestFactory factory) {
        this._applicationContext = null;
        this._storage = storage;
        this._credentialGenerator = credentialGenerator;
        this._requestFactory = factory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeviceIdentity getDeviceIdentity(boolean forceReauthenticate) throws NetworkException, StsException, InvalidResponseException {
        DeviceIdentity identity = this._storage.readDeviceIdentity();
        if (identity != null && identity.getDAToken() != null && !forceReauthenticate) {
            return identity;
        }
        if (identity != null) {
            DeviceAuthResponse response = (DeviceAuthResponse) getRequestFactory().createDeviceAuthRequest(identity).send();
            if (response.succeeded()) {
                identity.setDAToken(response.getDAToken());
                this._storage.writeDeviceIdentity(identity);
                return identity;
            }
            StsError error = response.getError();
            switch (error.getCode()) {
                case PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:
                case PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:
                    break;
                default:
                    throw new StsException("Failed to authenticate device", error);
            }
        }
        DeviceIdentity identity2 = provisionNewDevice();
        DeviceAuthResponse response2 = (DeviceAuthResponse) getRequestFactory().createDeviceAuthRequest(identity2).send();
        if (response2.succeeded()) {
            identity2.setDAToken(response2.getDAToken());
            this._storage.writeDeviceIdentity(identity2);
            return identity2;
        }
        throw new StsException("Failed to authenticate device", response2.getError());
    }

    private DeviceCredentialGenerator getCredentialGenerator() {
        if (this._credentialGenerator == null) {
            this._credentialGenerator = new DeviceCredentialGenerator();
        }
        return this._credentialGenerator;
    }

    private StsRequestFactory getRequestFactory() {
        if (this._requestFactory == null) {
            this._requestFactory = new StsRequestFactory(this._applicationContext);
        }
        return this._requestFactory;
    }

    private DeviceIdentity provisionNewDevice() throws NetworkException, StsException, InvalidResponseException {
        this._storage.deleteDeviceIdentity();
        DeviceProvisionRequest request = null;
        for (int count = 1; count <= 3; count++) {
            DeviceCredentials credentials = getCredentialGenerator().generate();
            if (request == null) {
                request = getRequestFactory().createDeviceProvisionRequest(credentials);
            } else {
                request.setDeviceCredentials(credentials);
            }
            DeviceProvisionResponse response = request.send();
            if (checkProvisionResponse(count, response)) {
                DeviceIdentity identity = new DeviceIdentity(credentials, response.getPuid(), null);
                this._storage.writeDeviceIdentity(identity);
                return identity;
            }
        }
        return null;
    }

    private boolean checkProvisionResponse(int count, DeviceProvisionResponse response) throws RequestThrottledException, StsException {
        if (response.succeeded()) {
            return true;
        }
        StsError error = response.getError();
        switch (error.getCode()) {
            case PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:
            case PP_E_K_ERROR_DB_MEMBER_EXISTS:
                if (count == 3) {
                    Logger.error("provisionNewDevice() exceeded allowable number of retry attempts.");
                    throw new RequestThrottledException("provisionNewDevice() exceeded allowable number of retry attempts.");
                }
                Logger.warning("Device provision request failed due to invalid credentials. Trying again.");
                return false;
            default:
                throw new StsException("Unable to provision device", error);
        }
    }
}
