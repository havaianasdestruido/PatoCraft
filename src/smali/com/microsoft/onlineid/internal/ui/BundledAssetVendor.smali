.class public Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
.super Ljava/lang/Object;
.source "BundledAssetVendor.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/ui/IWebPropertyProvider;


# static fields
.field private static final AccessControlAllowOriginAllValue:Ljava/lang/String; = "*"

.field private static final AccessControlAllowOriginKey:Ljava/lang/String; = "Access-Control-Allow-Origin"

.field private static final AccessControlAllowOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpsScheme:Ljava/lang/String; = "https://"

.field private static Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor; = null

.field public static final ManifestAssetPath:Ljava/lang/String; = "com.microsoft.onlineid.serverAssetBundle.path"

.field public static final ManifestAssetVersion:Ljava/lang/String; = "com.microsoft.onlineid.serverAssetBundle.version"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _assetManager:Landroid/content/res/AssetManager;

.field private _countLock:Ljava/lang/Object;

.field private volatile _hitCount:I

.field private volatile _missCount:I

.field private _pathToAssetBundle:Ljava/lang/String;

.field private _version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    .line 32
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->AccessControlAllowOriginMap:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 82
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    if-nez v0, :cond_2

    .line 55
    const-class v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    .line 60
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->initialize()V

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 66
    :cond_2
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->getApplicationContextFromContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 69
    const/4 v0, 0x0

    const-string v1, "Replacing previous instance with new instance for provided different context."

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 70
    const-class v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    monitor-enter v1

    .line 72
    :try_start_2
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    .line 73
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->Instance:Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->initialize()V

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_assetManager:Landroid/content/res/AssetManager;

    .line 94
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 95
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    iput v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    iput v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    .line 99
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_applicationContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 99
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 103
    .local v2, "metaDataBundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 106
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    .line 107
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;

    .line 119
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaDataBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 111
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "metaDataBundle":Landroid/os/Bundle;
    :cond_0
    const-string v4, "com.microsoft.onlineid.serverAssetBundle.path"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    .line 112
    const-string v4, "com.microsoft.onlineid.serverAssetBundle.version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaDataBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Package name not found"

    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected buildLocalAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_pathToAssetBundle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 175
    :goto_0
    return-object v4

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->buildLocalAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "localAssetPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->findFromFilename(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;

    move-result-object v3

    .line 141
    .local v3, "mimetype":Lcom/microsoft/onlineid/internal/ui/Mimetype;
    if-nez v3, :cond_2

    move-object v4, v5

    .line 144
    goto :goto_0

    .line 149
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 150
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 151
    .local v4, "response":Landroid/webkit/WebResourceResponse;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_3

    sget-object v6, Lcom/microsoft/onlineid/internal/ui/Mimetype;->FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    if-ne v3, v6, :cond_3

    .line 153
    sget-object v6, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->AccessControlAllowOriginMap:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 156
    :cond_3
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BundledAssetVendor: Proxied "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->incrementHitCount()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "response":Landroid/webkit/WebResourceResponse;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BundledAssetVendor: MISS: No proxied asset found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->incrementMissCount()V

    move-object v4, v5

    .line 175
    goto :goto_0
.end method

.method public getProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .prologue
    .line 231
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_version:Ljava/lang/String;

    goto :goto_0

    .line 237
    :pswitch_1
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_2
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handlesProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .prologue
    .line 217
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 222
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected incrementHitCount()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected incrementMissCount()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setHitCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_hitCount:I

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setMissCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_countLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iput p1, p0, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->_missCount:I

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperty(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    :try_start_0
    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor$1;->$SwitchMap$com$microsoft$onlineid$internal$ui$PropertyBag$Key:[I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 264
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->setHitCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert string to integer: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/ui/BundledAssetVendor;->setMissCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
