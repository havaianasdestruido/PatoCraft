package com.microsoft.onlineid.sts;

import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Strings;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum StsErrorCode {
    PP_E_FORCESIGNIN(-2147217396),
    PPCRL_REQUEST_E_FORCE_SIGNIN(-2147186459),
    PP_E_INVALIDREQUEST(-2147217380),
    PP_E_SA_INVALID_REGISTRATION_ID(-2147180536),
    PP_E_SA_INVALID_DEVICE_ID(-2147180537),
    PP_E_INTERFACE_INVALIDPUID(-2147208105),
    PP_E_SA_DEVICE_NOT_FOUND(-2147180538),
    PP_E_TOTP_AUTHENTICATOR_ID_INVALID(-2147181515),
    PP_E_FLOWDISABLED(-2147208158),
    PP_E_NOT_OVER_SSL(-2147217386),
    PP_E_INTERFACE_NOT_POST(-2147208119),
    PP_E_INTERFACE_INVALIDREQUESTFORMAT(-2147208112),
    PP_E_SA_CANT_APPROVE_DENIED_SESSION(-2147180533),
    PP_E_SA_CANT_DENY_APPROVED_SESSION(-2147180531),
    PP_E_SA_SID_ALREADY_APPROVED(-2147180530),
    PP_E_SA_INVALID_STATE_TRANSITION(-2147180543),
    PP_E_SA_INVALID_OPERATION(-2147180540),
    PP_E_BAD_PASSWORD(-2147217390),
    PP_E_INTERFACE_INVALID_PASSWORD(-2147208107),
    PP_E_MISSING_CERT(-2147197912),
    PPCRL_REQUEST_E_PARTNER_NOT_FOUND(-2147186646),
    PPCRL_REQUEST_E_INVALID_POLICY(-2147186644),
    PP_E_STS_NONCE_REQUIRED(-2147197895),
    PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY(-2147186645),
    PPCRL_REQUEST_E_PARTNER_NEED_PIN(-2147186457),
    PPCRL_REQUEST_E_DEVICE_DA_INVALID(-2147186627),
    PPCRL_E_DEVICE_DA_TOKEN_EXPIRED(-2147188631),
    PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST(-805307371),
    PP_E_K_ERROR_DB_MEMBER_EXISTS(-805307370),
    PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD(-2147186655),
    PP_E_NGC_INVALID_CLOUD_PIN(-2147180401),
    PP_E_NGC_ACCOUNT_LOCKED(-2147180400),
    PP_E_NGC_LOGIN_KEY_NOT_FOUND(-2147180408),
    Unrecognized;

    private final Integer _code;
    private final String _dcClass;

    StsErrorCode() {
        this._code = null;
        this._dcClass = null;
    }

    StsErrorCode(int code) {
        this._code = Integer.valueOf(code);
        this._dcClass = null;
    }

    StsErrorCode(String code) {
        this._code = null;
        this._dcClass = code;
    }

    @Deprecated
    Integer getCode() {
        return this._code;
    }

    @Deprecated
    String getDCClass() {
        return this._dcClass;
    }

    public static StsErrorCode convertServerError(IntegerCodeServerError error) {
        Objects.verifyArgumentNotNull(error, "error");
        StsErrorCode convertedError = convertHR(error.getSubError());
        if (convertedError == null) {
            convertedError = convertHR(error.getError());
        }
        if (convertedError == null) {
            return Unrecognized;
        }
        return convertedError;
    }

    public static StsErrorCode convertServerError(StringCodeServerError error) {
        Objects.verifyArgumentNotNull(error, "error");
        StsErrorCode convertedError = convertHR(error.getSubError());
        if (convertedError == null) {
            convertedError = convertDCCode(error.getError());
        }
        if (convertedError == null) {
            return Unrecognized;
        }
        return convertedError;
    }

    private static StsErrorCode convertHR(int subCode) {
        for (StsErrorCode error : values()) {
            if (error._code != null && error._code.equals(Integer.valueOf(subCode))) {
                return error;
            }
        }
        return null;
    }

    private static StsErrorCode convertDCCode(String subCode) {
        Strings.verifyArgumentNotNullOrEmpty(subCode, "subCode");
        for (StsErrorCode error : values()) {
            if (error._dcClass != null && error._dcClass.equals(subCode)) {
                return error;
            }
        }
        return null;
    }

    public static String getFriendlyHRDescription(int errorCode) {
        StsErrorCode code = convertHR(errorCode);
        return code != null ? code.name() + " (0x" + Integer.toHexString(errorCode) + ")" : "0x" + Integer.toHexString(errorCode);
    }
}
