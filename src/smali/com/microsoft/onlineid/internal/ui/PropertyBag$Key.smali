.class public final enum Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
.super Ljava/lang/Enum;
.source "PropertyBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/PropertyBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum Password:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryDeviceYearClass:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

.field public static final enum Username:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "CID"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 35
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "DAToken"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 40
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "DASessionKey"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 45
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "ErrorCode"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 50
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "ErrorString"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 55
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "ExtendedErrorString"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 60
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "ErrorURL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 65
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "Password"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Password:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 70
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PUID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 75
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "STSInlineFlowToken"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 80
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "Username"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Username:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 86
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfUsernames"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 87
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfFirstName"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 88
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfLastName"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 89
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfDeviceEmail"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 90
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfPhone"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 91
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "PfCountryCode"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 97
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "SmsCode"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 103
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "IsSignUp"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 108
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "SigninName"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 115
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryAppVersion"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 119
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryDeviceYearClass"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryDeviceYearClass:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 122
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryIsRequestorMaster"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 125
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryNetworkType"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 128
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryPrecaching"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 131
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryResourceBundleHits"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 134
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryResourceBundleMisses"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 137
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    const-string v1, "TelemetryResourceBundleVersion"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .line 21
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->CID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DAToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->DASessionKey:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ExtendedErrorString:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ErrorURL:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Password:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PUID:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->STSInlineFlowToken:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->Username:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfUsernames:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfFirstName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfLastName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfDeviceEmail:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfPhone:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->PfCountryCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->IsSignUp:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SigninName:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryAppVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryDeviceYearClass:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryIsRequestorMaster:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryNetworkType:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryPrecaching:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleHits:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleMisses:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->TelemetryResourceBundleVersion:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    return-object v0
.end method
