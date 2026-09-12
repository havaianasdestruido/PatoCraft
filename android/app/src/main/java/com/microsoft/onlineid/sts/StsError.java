package com.microsoft.onlineid.sts;

import com.microsoft.onlineid.internal.Objects;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StsError {
    private final StsErrorCode _code;
    private final String _logMessage;
    private final String _originalErrorMessage;

    public StsError(IntegerCodeServerError error) {
        Objects.verifyArgumentNotNull(error, "error");
        this._code = StsErrorCode.convertServerError(error);
        this._originalErrorMessage = error.toString();
        this._logMessage = String.format(Locale.US, "%s error caused by server error:\n%s", this._code.name(), this._originalErrorMessage);
    }

    public StsError(StringCodeServerError error) {
        Objects.verifyArgumentNotNull(error, "error");
        this._code = StsErrorCode.convertServerError(error);
        this._originalErrorMessage = error.toString();
        this._logMessage = String.format(Locale.US, "%s error caused by server error:\n%s", this._code.name(), this._originalErrorMessage);
    }

    public StsError(StsErrorCode code) {
        Objects.verifyArgumentNotNull(code, "code");
        this._code = code;
        this._originalErrorMessage = code.name();
        this._logMessage = String.format(Locale.US, "%s error.", this._originalErrorMessage);
    }

    public StsErrorCode getCode() {
        return this._code;
    }

    public String getMessage() {
        return this._logMessage;
    }

    public String getOriginalErrorMessage() {
        return this._originalErrorMessage;
    }

    public boolean isRetryableDeviceDAErrorForUserAuth() {
        switch (this._code) {
            case PPCRL_REQUEST_E_DEVICE_DA_INVALID:
            case PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:
                return true;
            default:
                return false;
        }
    }

    public boolean isRetryableDeviceDAErrorForDeviceAuth() {
        switch (this._code) {
            case PPCRL_REQUEST_E_DEVICE_DA_INVALID:
            case PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:
            case PPCRL_REQUEST_E_FORCE_SIGNIN:
            case PP_E_FORCESIGNIN:
                return true;
            default:
                return false;
        }
    }

    public boolean isInvalidSessionError() {
        switch (this._code) {
            case PP_E_SA_CANT_DENY_APPROVED_SESSION:
            case PP_E_SA_CANT_APPROVE_DENIED_SESSION:
            case PP_E_SA_INVALID_STATE_TRANSITION:
            case PP_E_SA_INVALID_OPERATION:
            case PP_E_TOTP_AUTHENTICATOR_ID_INVALID:
                return true;
            default:
                return false;
        }
    }

    public boolean isNgcKeyNotFoundError() {
        return this._code == StsErrorCode.PP_E_NGC_LOGIN_KEY_NOT_FOUND;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if ((o instanceof StsError) && o != null) {
            StsError other = (StsError) o;
            return Objects.equals(this._code, other._code);
        }
        if ((o instanceof StsErrorCode) && o != null) {
            StsErrorCode other2 = (StsErrorCode) o;
            return Objects.equals(this._code, other2);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this._code);
    }
}
