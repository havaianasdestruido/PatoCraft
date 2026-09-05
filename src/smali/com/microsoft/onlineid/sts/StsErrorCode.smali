.class public final enum Lcom/microsoft/onlineid/sts/StsErrorCode;
.super Ljava/lang/Enum;
.source "StsErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/StsErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_INVALID_POLICY:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_NEED_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PPCRL_REQUEST_E_PARTNER_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_BAD_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_FLOWDISABLED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALIDPUID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALIDREQUESTFORMAT:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_INVALID_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INTERFACE_NOT_POST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_INVALIDREQUEST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_MISSING_CERT:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_ACCOUNT_LOCKED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_INVALID_CLOUD_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_NOT_OVER_SSL:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_DEVICE_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_DEVICE_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_REGISTRATION_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_SA_SID_ALREADY_APPROVED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_STS_NONCE_REQUIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field public static final enum Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;


# instance fields
.field private final _code:Ljava/lang/Integer;

.field private final _dcClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_FORCESIGNIN"

    const v2, -0x7ffbeff4

    invoke-direct {v0, v1, v4, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 17
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_FORCE_SIGNIN"

    const v2, -0x7ffb771b

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 20
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_INVALIDREQUEST"

    const v2, -0x7ffbefe4

    invoke-direct {v0, v1, v6, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INVALIDREQUEST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 21
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_INVALID_REGISTRATION_ID"

    const v2, -0x7ffb5ff8

    invoke-direct {v0, v1, v7, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_REGISTRATION_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 22
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_INVALID_DEVICE_ID"

    const v2, -0x7ffb5ff9

    invoke-direct {v0, v1, v8, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_DEVICE_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 23
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_INTERFACE_INVALIDPUID"

    const/4 v2, 0x5

    const v3, -0x7ffbcba9

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDPUID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 24
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_DEVICE_NOT_FOUND"

    const/4 v2, 0x6

    const v3, -0x7ffb5ffa

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_DEVICE_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 25
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_TOTP_AUTHENTICATOR_ID_INVALID"

    const/4 v2, 0x7

    const v3, -0x7ffb63cb

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 26
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_FLOWDISABLED"

    const/16 v2, 0x8

    const v3, -0x7ffbcbde

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FLOWDISABLED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 27
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_NOT_OVER_SSL"

    const/16 v2, 0x9

    const v3, -0x7ffbefea

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NOT_OVER_SSL:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 28
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_INTERFACE_NOT_POST"

    const/16 v2, 0xa

    const v3, -0x7ffbcbb7

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_NOT_POST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 29
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_INTERFACE_INVALIDREQUESTFORMAT"

    const/16 v2, 0xb

    const v3, -0x7ffbcbb0

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDREQUESTFORMAT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 32
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_CANT_APPROVE_DENIED_SESSION"

    const/16 v2, 0xc

    const v3, -0x7ffb5ff5

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 33
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_CANT_DENY_APPROVED_SESSION"

    const/16 v2, 0xd

    const v3, -0x7ffb5ff3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 34
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_SID_ALREADY_APPROVED"

    const/16 v2, 0xe

    const v3, -0x7ffb5ff2

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_SID_ALREADY_APPROVED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 35
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_INVALID_STATE_TRANSITION"

    const/16 v2, 0xf

    const v3, -0x7ffb5fff

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 36
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_SA_INVALID_OPERATION"

    const/16 v2, 0x10

    const v3, -0x7ffb5ffc

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 38
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_BAD_PASSWORD"

    const/16 v2, 0x11

    const v3, -0x7ffbefee

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_BAD_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 39
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_INTERFACE_INVALID_PASSWORD"

    const/16 v2, 0x12

    const v3, -0x7ffbcbab

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALID_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 40
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_MISSING_CERT"

    const/16 v2, 0x13

    const v3, -0x7ffba3d8

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_MISSING_CERT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 41
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_PARTNER_NOT_FOUND"

    const/16 v2, 0x14

    const v3, -0x7ffb77d6

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 42
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_INVALID_POLICY"

    const/16 v2, 0x15

    const v3, -0x7ffb77d4

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_INVALID_POLICY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 43
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_STS_NONCE_REQUIRED"

    const/16 v2, 0x16

    const v3, -0x7ffba3c7

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_STS_NONCE_REQUIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 44
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY"

    const/16 v2, 0x17

    const v3, -0x7ffb77d5

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 45
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_PARTNER_NEED_PIN"

    const/16 v2, 0x18

    const v3, -0x7ffb7719

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NEED_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 48
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_DEVICE_DA_INVALID"

    const/16 v2, 0x19

    const v3, -0x7ffb77c3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 49
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_E_DEVICE_DA_TOKEN_EXPIRED"

    const/16 v2, 0x1a

    const v3, -0x7ffb7f97

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 52
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST"

    const/16 v2, 0x1b

    const v3, -0x300003eb

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_K_ERROR_DB_MEMBER_EXISTS"

    const/16 v2, 0x1c

    const v3, -0x300003ea

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD"

    const/16 v2, 0x1d

    const v3, -0x7ffb77df

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 57
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_NGC_INVALID_CLOUD_PIN"

    const/16 v2, 0x1e

    const v3, -0x7ffb5f71

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_INVALID_CLOUD_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 58
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_NGC_ACCOUNT_LOCKED"

    const/16 v2, 0x1f

    const v3, -0x7ffb5f70

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_ACCOUNT_LOCKED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 59
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "PP_E_NGC_LOGIN_KEY_NOT_FOUND"

    const/16 v2, 0x20

    const v3, -0x7ffb5f78

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 66
    new-instance v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    const-string v1, "Unrecognized"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/StsErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 12
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/StsErrorCode;

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FORCESIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_FORCE_SIGNIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INVALIDREQUEST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_REGISTRATION_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_DEVICE_ID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDPUID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_DEVICE_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_TOTP_AUTHENTICATOR_ID_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_FLOWDISABLED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NOT_OVER_SSL:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_NOT_POST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALIDREQUESTFORMAT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_APPROVE_DENIED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_CANT_DENY_APPROVED_SESSION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_SID_ALREADY_APPROVED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_STATE_TRANSITION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_SA_INVALID_OPERATION:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_BAD_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_INTERFACE_INVALID_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_MISSING_CERT:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_INVALID_POLICY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_STS_NONCE_REQUIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_HAS_NO_ASYMMETRIC_KEY:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_PARTNER_NEED_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_DEVICE_DA_INVALID:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_E_DEVICE_DA_TOKEN_EXPIRED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_DOES_NOT_EXIST:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_K_ERROR_DB_MEMBER_EXISTS:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PPCRL_REQUEST_E_BAD_MEMBER_NAME_OR_PASSWORD:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_INVALID_CLOUD_PIN:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_ACCOUNT_LOCKED:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->$VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    .line 100
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static convertDCCode(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 5
    .param p0, "subCode"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v1, "subCode"

    invoke-static {p0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/microsoft/onlineid/sts/StsErrorCode;->values()[Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 210
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    iget-object v4, v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :goto_1
    return-object v0

    .line 208
    .restart local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 6
    .param p0, "subCode"    # I

    .prologue
    .line 186
    invoke-static {}, Lcom/microsoft/onlineid/sts/StsErrorCode;->values()[Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 188
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    iget-object v4, v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :goto_1
    return-object v0

    .line 186
    .restart local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convertServerError(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 2
    .param p0, "error"    # Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    .prologue
    .line 133
    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->getSubError()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    .line 137
    .local v0, "convertedError":Lcom/microsoft/onlineid/sts/StsErrorCode;
    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 145
    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 148
    :cond_1
    return-object v0
.end method

.method public static convertServerError(Lcom/microsoft/onlineid/sts/StringCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 2
    .param p0, "error"    # Lcom/microsoft/onlineid/sts/StringCodeServerError;

    .prologue
    .line 159
    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->getSubError()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    .line 163
    .local v0, "convertedError":Lcom/microsoft/onlineid/sts/StsErrorCode;
    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertDCCode(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    .line 169
    :cond_0
    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->Unrecognized:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 174
    :cond_1
    return-object v0
.end method

.method public static getFriendlyHRDescription(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 228
    invoke-static {p0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertHR(I)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    .line 229
    .local v0, "code":Lcom/microsoft/onlineid/sts/StsErrorCode;
    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/microsoft/onlineid/sts/StsErrorCode;->$VALUES:[Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/StsErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object v0
.end method


# virtual methods
.method getCode()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_code:Ljava/lang/Integer;

    return-object v0
.end method

.method getDCClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsErrorCode;->_dcClass:Ljava/lang/String;

    return-object v0
.end method
