.class public Lcom/microsoft/cll/android/AndroidPartA;
.super Lcom/microsoft/cll/android/PartA;
.source "AndroidPartA.java"


# instance fields
.field private final DeviceTypePC:Ljava/lang/String;

.field private final DeviceTypePhone:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field protected appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Landroid/content/Context;Lcom/microsoft/cll/android/CorrelationVector;)V
    .locals 1
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "iKey"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "correlationVector"    # Lcom/microsoft/cll/android/CorrelationVector;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/cll/android/PartA;-><init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/CorrelationVector;)V

    .line 23
    const-string v0, "AndroidCll-AndroidPartA"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "Android.Phone"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->DeviceTypePhone:Ljava/lang/String;

    .line 25
    const-string v0, "Android.PC"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->DeviceTypePC:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->PopulateConstantValues()V

    .line 38
    return-void
.end method

.method private testRadioVersion()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method


# virtual methods
.method protected PopulateConstantValues()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setDeviceInfo()V

    .line 178
    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setUserId()V

    .line 179
    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setAppInfo()V

    .line 180
    invoke-virtual {p0}, Lcom/microsoft/cll/android/AndroidPartA;->setOs()V

    .line 181
    return-void
.end method

.method getDeviceScreenSize(III)D
    .locals 16
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "density"    # I

    .prologue
    .line 163
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v6, v12, v14

    .line 164
    .local v6, "wi":D
    move/from16 v0, p1

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v2, v12, v14

    .line 165
    .local v2, "hi":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 166
    .local v8, "x":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 167
    .local v10, "y":D
    add-double v12, v8, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 168
    .local v4, "screenInches":D
    return-wide v4
.end method

.method protected setAppInfo()V
    .locals 6

    .prologue
    .line 141
    iget-object v3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 144
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 146
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appVer:Ljava/lang/String;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/cll/android/AndroidPartA;->appId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/microsoft/cll/android/AndroidPartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-AndroidPartA"

    const-string v5, "Could not get package name"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDeviceInfo()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    .line 82
    :try_start_0
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    .line 83
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 84
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    .line 84
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    .line 87
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 88
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 89
    .local v5, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 90
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    .line 91
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "m:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    .end local v5    # "manager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/AndroidPartA;->testRadioVersion()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 102
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v10, "Android.Phone"

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    .line 119
    :goto_1
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->osVer:Ljava/lang/String;

    .line 120
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    const-string v12, "-"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/os;->setLocale(Ljava/lang/String;)V

    .line 121
    return-void

    .line 93
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/microsoft/cll/android/AndroidPartA;->uniqueId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/SecurityException;
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v10, "AndroidCll-AndroidPartA"

    const-string v11, "Access Wifi State permission was not Provided. DeviceID will be blank"

    invoke-interface {v9, v10, v11}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    .local v8, "width":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .local v3, "height":I
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 110
    .local v0, "density":I
    invoke-virtual {p0, v3, v8, v0}, Lcom/microsoft/cll/android/AndroidPartA;->getDeviceScreenSize(III)D

    move-result-wide v6

    .line 112
    .local v6, "screenInches":D
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpl-double v9, v6, v10

    if-ltz v9, :cond_3

    .line 113
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v10, "Android.PC"

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v9, p0, Lcom/microsoft/cll/android/AndroidPartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    const-string v10, "Android.Phone"

    invoke-virtual {v9, v10}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected setOs()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "Android"

    iput-object v0, p0, Lcom/microsoft/cll/android/AndroidPartA;->osName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected setUserId()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v4, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 49
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/cll/android/AndroidPartA;->appContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 50
    .local v3, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 51
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 52
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/microsoft/cll/android/AndroidPartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "hashedEmail":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/cll/android/AndroidPartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "hashedEmail":Ljava/lang/String;
    .end local v3    # "manager":Landroid/accounts/AccountManager;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/microsoft/cll/android/AndroidPartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-AndroidPartA"

    const-string v6, "Get_Accounts permission was not provided. UserID will be blank"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    iget-object v4, p0, Lcom/microsoft/cll/android/AndroidPartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    goto :goto_0
.end method
