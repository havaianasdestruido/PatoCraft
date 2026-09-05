.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
.super Ljava/lang/Enum;
.source "ServerConfig.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/configuration/ISetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Endpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;",
        ">;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ApproveSession:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ListSessions:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ManageApprover:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum ManageLoginKeys:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Refresh:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum RemoteConnect:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignInMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignInPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

.field public static final enum Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;


# instance fields
.field private final _defaultValue:Ljava/net/URL;

.field private final _settingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    new-instance v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v2, "Configuration"

    const-string v3, "ConfigUrl"

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    .line 209
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    invoke-direct {v1, v2, v6, v3, v0}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 215
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "Sts"

    const-string v2, "WLIDSTS_WCF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://login."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":443/RST2.srf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 220
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "DeviceProvision"

    const-string v2, "DeviceAddService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://login."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ppsecure/deviceaddcredential.srf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 227
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ManageApprover"

    const-string v2, "ManageApprover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://login."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ManageApprover.srf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageApprover:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 232
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ManageLoginKeys"

    const-string v2, "ManageLoginKeys"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://login."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ManageLoginKeys.srf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageLoginKeys:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 237
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ListSessions"

    const/4 v2, 0x5

    const-string v3, "ListSessions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ListSessions.srf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ListSessions:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 242
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ApproveSession"

    const/4 v2, 0x6

    const-string v3, "ApproveSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ApproveSession.srf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ApproveSession:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 247
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ConnectMsa"

    const/4 v2, 0x7

    const-string v3, "CPConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineConnect.srf?id=80601"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 252
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "ConnectPartner"

    const/16 v2, 0x8

    const-string v3, "CompleteAccountConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 254
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineConnect.srf?id=80604"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 259
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignInMsa"

    const/16 v2, 0x9

    const-string v3, "CPSignInAuthUp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineLogin.srf?id=80601"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 264
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignInPartner"

    const/16 v2, 0xa

    const-string v3, "CompleteAccountSignIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineLogin.srf?id=80604"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 271
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignupMsa"

    const/16 v2, 0xb

    const-string v3, "SignupMsa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://signup."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/signup?id=80601"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 276
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignupPartner"

    const/16 v2, 0xc

    const-string v3, "SignupPartner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://signup."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/signup?id=80604"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 283
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignupWReplyMsa"

    const/16 v2, 0xd

    const-string v3, "SignupWReplyMsa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineLogin.srf?id=80601&actionid=7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 288
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "SignupWReplyPartner"

    const/16 v2, 0xe

    const-string v3, "SignupWReplyPartner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ppsecure/InlineLogin.srf?id=80604&actionid=7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 294
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "Refresh"

    const/16 v2, 0xf

    const-string v3, "URL_AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://account."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Refresh:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 300
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    const-string v1, "RemoteConnect"

    const/16 v2, 0x10

    const-string v3, "RemoteConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://login."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/RemoteConnectClientAuth.srf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->RemoteConnect:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 203
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Configuration:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Sts:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->DeviceProvision:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v1, v0, v8

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageApprover:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v1, v0, v9

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ManageLoginKeys:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ListSessions:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ApproveSession:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->ConnectPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignInPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyMsa:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->SignupWReplyPartner:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->Refresh:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->RemoteConnect:Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    .line 210
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3, "settingName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 315
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_settingName:Ljava/lang/String;

    .line 318
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_defaultValue:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default value for ServerConfig.Url with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a valid URL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getDefaultValue()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/net/URL;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_defaultValue:Ljava/net/URL;

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->_settingName:Ljava/lang/String;

    return-object v0
.end method
