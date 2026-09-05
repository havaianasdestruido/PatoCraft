.class public Lcom/microsoft/xbox/idp/interop/Interop;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;,
        Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$MSAError;,
        Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;,
        Lcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$Callback;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorCallback;
    }
.end annotation


# static fields
.field private static final DNET_SCOPE:Ljava/lang/String; = "user.auth.dnet.xboxlive.com"

.field private static final PACKAGE_NAME_TO_REMOVE:Ljava/lang/String; = "com.microsoft.onlineid.sample"

.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final PROD_SCOPE:Ljava/lang/String; = "user.auth.xboxlive.com"

.field private static final TAG:Ljava/lang/String;

.field private static final brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

.field private static s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

.field private static final silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    .line 376
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$2;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    .line 420
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$3;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$3;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearIntent()V
    .locals 0

    .prologue
    .line 278
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->clearXboxAppLaunchIntent()V

    .line 279
    return-void
.end method

.method public static GetLiveXTokenCallback(Z)Ljava/lang/String;
    .locals 1
    .param p0, "forceRefresh"    # Z

    .prologue
    .line 104
    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->get_uploader_x_token_callback(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLocalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetXTokenCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "xuid"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->get_supporting_x_token_callback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static InitCLL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iKey"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez v2, :cond_0

    .line 189
    const-string v2, "XSAPI.Android"

    const-string v3, "Init CLL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v2, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    new-instance v3, Lcom/microsoft/cll/android/AndroidCll;

    invoke-direct {v3, p1, p0}, Lcom/microsoft/cll/android/AndroidCll;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;-><init>(Lcom/microsoft/cll/android/AndroidCll;Landroid/content/Context;)V

    sput-object v2, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    .line 192
    new-instance v0, Lcom/microsoft/xbox/idp/interop/CLLCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/microsoft/xbox/idp/interop/CLLCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    .local v0, "callback":Lcom/microsoft/xbox/idp/interop/CLLCallback;
    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v1

    .line 194
    .local v1, "cll":Lcom/microsoft/cll/android/AndroidCll;
    invoke-virtual {v1, v0}, Lcom/microsoft/cll/android/AndroidCll;->setXuidCallback(Lcom/microsoft/cll/android/ITicketCallback;)V

    .line 195
    sget-object v2, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    invoke-virtual {v1, v2}, Lcom/microsoft/cll/android/AndroidCll;->setDebugVerbosity(Lcom/microsoft/cll/android/Verbosity;)V

    .line 196
    invoke-virtual {v1}, Lcom/microsoft/cll/android/AndroidCll;->start()V

    .line 198
    .end local v0    # "callback":Lcom/microsoft/xbox/idp/interop/CLLCallback;
    .end local v1    # "cll":Lcom/microsoft/cll/android/AndroidCll;
    :cond_0
    return-void
.end method

.method public static InvokeAuthFlow(JLandroid/app/Activity;ZLjava/lang/String;)V
    .locals 4
    .param p0, "userPtr"    # J
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "isProd"    # Z
    .param p4, "signInText"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v2, "InvokeAuthFlow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-nez p3, :cond_0

    .line 297
    sget-object v1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v1, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    .line 300
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$1;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/interop/Interop$1;-><init>()V

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setStaticCallbacks(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;)V

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ARG_SECURITY_SCOPE"

    if-eqz p3, :cond_2

    const-string v1, "user.auth.xboxlive.com"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "ARG_SECURITY_POLICY"

    const-string v2, "mbi_ssl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v1, "ARG_USER_PTR"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 314
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    const-string v1, "ARG_LOG_IN_BUTTON_TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :cond_1
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void

    .line 311
    :cond_2
    const-string v1, "user.auth.dnet.xboxlive.com"

    goto :goto_0
.end method

.method public static InvokeBrokeredMSA(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isProd"    # Z

    .prologue
    .line 243
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeAuthFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez p1, :cond_0

    .line 246
    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v0, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    .line 249
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->brokeredSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;)V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->start()Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;

    .line 250
    return-void
.end method

.method public static InvokeEventInitialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V
    .locals 2
    .param p0, "userPtr"    # J
    .param p2, "rpsTicket"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;

    .prologue
    .line 334
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeEventInitialization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_event_initialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V

    .line 336
    return-void
.end method

.method public static InvokeLatestIntent(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intentObject"    # Ljava/lang/Object;

    .prologue
    .line 253
    sget-object v5, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v6, "InvokeLatestIntent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;->getXboxAppLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 255
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 256
    instance-of v5, p1, Landroid/content/Intent;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 257
    check-cast v3, Landroid/content/Intent;

    .line 258
    .local v3, "minecraftIntent":Landroid/content/Intent;
    const-string v5, "com.microsoft.xbox.extra.RELAUNCH_INTENT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    sget-object v5, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v6, "Invoking the launch intent..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "intentPackageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "intentAction":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 264
    .local v4, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v5, "packageName"

    invoke-virtual {v4, v5, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v5, "action"

    invoke-virtual {v4, v5, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v5, "DeepLink - GearVR SignIn"

    const-string v6, "Minecraft GearVR SignIn"

    invoke-static {v5, v6, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 268
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 275
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v1    # "intentPackageName":Ljava/lang/String;
    .end local v3    # "minecraftIntent":Landroid/content/Intent;
    .end local v4    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v5, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v6, "Minecraft relaunch intent was null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    sget-object v5, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v6, "Xbox App launch intent was null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static InvokeMSA(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "isProd"    # Z
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "XSAPI.Android"

    const-string v1, "Invoking MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p2, :cond_0

    .line 210
    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v0, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;->fromId(I)Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;

    move-result-object v7

    .line 213
    .local v7, "purpose":Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;
    if-eqz v7, :cond_3

    .line 215
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$4;->$SwitchMap$com$microsoft$xbox$idp$interop$Interop$MSAPurpose:[I

    invoke-virtual {v7}, Lcom/microsoft/xbox/idp/interop/Interop$MSAPurpose;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    const-string v0, ""

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v1, v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 218
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvokeMSA OPPORTUNISTIC_SIGN_IN cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const-string v0, ""

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v1, v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    const-string v2, "Must show UI to acquire an account."

    invoke-static {v0, p1, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    const/4 v2, 0x0

    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop;->silentSignInCallbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    if-eqz p2, :cond_2

    const-string v4, "user.auth.xboxlive.com"

    :goto_1
    const-string v5, "mbi_ssl"

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    goto :goto_0

    :cond_2
    const-string v4, "user.auth.dnet.xboxlive.com"

    goto :goto_1

    .line 227
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeMSA SIGN_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    .line 229
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->sign_out_callback()V

    goto :goto_0

    .line 238
    :cond_3
    const-string v0, ""

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    iget v1, v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/microsoft/xbox/idp/interop/Interop;->MSACallback(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static InvokeXBLogin(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V
    .locals 2
    .param p0, "userPtr"    # J
    .param p2, "rpsTicket"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;

    .prologue
    .line 324
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeXBLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_xb_login(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V

    .line 326
    return-void
.end method

.method public static InvokeXBLogout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V
    .locals 2
    .param p0, "userPtr"    # J
    .param p2, "callback"    # Lcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;

    .prologue
    .line 345
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeSignOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_xb_logout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V

    .line 347
    return-void
.end method

.method public static InvokeXTokenCallback(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V
    .locals 2
    .param p0, "userPtr"    # J
    .param p2, "callback"    # Lcom/microsoft/xbox/idp/interop/Interop$Callback;

    .prologue
    .line 356
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "InvokeXTokenCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/idp/interop/Interop;->invoke_x_token_acquisition(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V

    .line 358
    return-void
.end method

.method public static LogCLL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "xuid"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "XSAPI.Android"

    const-string v1, "Log CLL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "XSAPI.Android"

    const-string v1, "Log CLL null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v0

    sget-object v3, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/cll/android/AndroidCll;->log(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)V

    goto :goto_0
.end method

.method public static LogTelemetrySignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "api"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v2, "XSAPI.Android"

    const-string v3, "LogTelemetrySignIn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 130
    .local v0, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1, v1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 132
    return-void
.end method

.method public static MSACallback(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p0, "rpsTicket"    # Ljava/lang/String;
    .param p1, "state"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 288
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v1, "MSA Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->ticket_callback(Ljava/lang/String;IILjava/lang/String;)V

    .line 290
    return-void
.end method

.method public static NotificationRegisterCallback(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "regId"    # Ljava/lang/String;
    .param p1, "isCached"    # Z

    .prologue
    .line 361
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v2, "callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_0
    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/interop/Interop;->notificiation_registration_callback(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v2, "Token refreshed while process was not running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ReadConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "xboxservices"

    const-string v7, "raw"

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 158
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 161
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 167
    .local v0, "buf":[B
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 169
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v2    # "len":I
    :catch_0
    move-exception v4

    .line 177
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 171
    .restart local v2    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 172
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static RegisterWithGNS(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    const-string v2, "trying to register.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/xbox/idp/model/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 374
    return-void
.end method

.method public static UpdateGamerTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "newGamerTag"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->gamertag_updated_callback(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/Interop;->auth_flow_callback(JILjava/lang/String;)V

    return-void
.end method

.method private static native auth_flow_callback(JILjava/lang/String;)V
.end method

.method public static native deinitializeInterop()Z
.end method

.method private static native gamertag_updated_callback(Ljava/lang/String;)V
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCll()Lcom/microsoft/cll/android/AndroidCll;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_cll:Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "locale":Ljava/lang/String;
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0
.end method

.method public static getSystemProxy()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    const-string v3, "http.proxyHost"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "proxyAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 138
    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "proxyPort":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "fullProxy":Ljava/lang/String;
    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "fullProxy":Ljava/lang/String;
    .end local v2    # "proxyPort":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTitleDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->get_title_telemetry_device_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->get_title_telemetry_session_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native get_supporting_x_token_callback(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native get_title_telemetry_device_id()Ljava/lang/String;
.end method

.method private static native get_title_telemetry_session_id()Ljava/lang/String;
.end method

.method private static native get_uploader_x_token_callback(Z)Ljava/lang/String;
.end method

.method public static native initializeInterop(Landroid/content/Context;)Z
.end method

.method private static native invoke_event_initialization(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;)V
.end method

.method private static native invoke_x_token_acquisition(JLcom/microsoft/xbox/idp/interop/Interop$Callback;)V
.end method

.method private static native invoke_xb_login(JLjava/lang/String;Lcom/microsoft/xbox/idp/interop/Interop$XBLoginCallback;)V
.end method

.method private static native invoke_xb_logout(JLcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;)V
.end method

.method private static native notificiation_registration_callback(Ljava/lang/String;Z)V
.end method

.method private static native sign_out_callback()V
.end method

.method private static native ticket_callback(Ljava/lang/String;IILjava/lang/String;)V
.end method
