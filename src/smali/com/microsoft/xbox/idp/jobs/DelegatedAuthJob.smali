.class public Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
.super Ljava/lang/Object;
.source "DelegatedAuthJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;
    }
.end annotation


# static fields
.field private static final RESULT_INVALID_APPURI:I = 0x6

.field private static final RESULT_INVALID_PACKAGE:I = 0x4

.field private static final RESULT_INVALID_SIGNATURE:I = 0x5

.field private static final RESULT_NOCID:I = 0x1

.field private static final RESULT_SUCCESS:I = 0x0

.field private static final RESULT_UNEXPECTED:I = 0x2

.field private static final RESULT_UNKNOWN_PACKAGE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static launchIntent:Landroid/content/Intent;


# instance fields
.field private final XBOX_BROKER_SERVICE_NAME:Ljava/lang/String;

.field private final callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field keyService:Lcom/microsoft/xbox/authenticate/IDelegateKeyService;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    .line 47
    const-class v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "com.microsoft.xbox.authenticate.DelegateKeyService"

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->XBOX_BROKER_SERVICE_NAME:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$1;-><init>(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    .line 52
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->packageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 33
    sput-object p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    return-object v0
.end method

.method public static clearXboxAppLaunchIntent()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public static getXboxAppLaunchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method launchXboxApp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 73
    sget-object v2, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->TAG:Ljava/lang/String;

    const-string v3, "check service exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v2, "com.microsoft.xboxone.smartglass.beta"

    iget-object v3, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    const-string v4, "com.microsoft.xbox.authenticate.DelegateKeyService"

    invoke-static {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 76
    .local v1, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v2, "launchType"

    const-string v3, "BETA"

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v2, "SignIn - DelegateRPSTicket"

    const-string v3, "DelegatedAuthJob"

    invoke-static {v2, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.microsoft.xboxone.smartglass.beta"

    const-string v4, "com.microsoft.xbox.authenticate.DelegateKeyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 81
    .end local v1    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :cond_0
    const-string v2, "com.microsoft.xboxone.smartglass"

    iget-object v3, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    const-string v4, "com.microsoft.xbox.authenticate.DelegateKeyService"

    invoke-static {v2, v3, v4}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 83
    .restart local v1    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v2, "launchType"

    const-string v3, "RETAIL"

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v2, "SignIn - DelegateRPSTicket"

    const-string v3, "DelegatedAuthJob"

    invoke-static {v2, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.microsoft.xboxone.smartglass"

    const-string v4, "com.microsoft.xbox.authenticate.DelegateKeyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :cond_1
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 90
    .restart local v1    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v2, "launchType"

    const-string v3, "STORE"

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v2, "SignIn - DelegateRPSTicket"

    const-string v3, "DelegatedAuthJob"

    invoke-static {v2, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 92
    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInOculusMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    sput-object v2, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchIntent:Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    invoke-interface {v2, p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;->onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V

    goto :goto_0
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->launchXboxApp()V

    .line 69
    return-object p0
.end method
