.class public Lcom/microsoft/xbox/idp/util/XboxAppLinker;
.super Ljava/lang/Object;
.source "XboxAppLinker.java"


# static fields
.field private static final AMAZON_STORE_URI:Ljava/lang/String; = "amzn://apps/android?p="

.field private static final AMAZON_TABLET_STORE_PACKAGE:Ljava/lang/String; = "com.amazon.venezia"

.field private static final AMAZON_UNDERGROUND_PACKAGE:Ljava/lang/String; = "com.amazon.mShop.android"

.field private static final OCULUS_STORE_WEB_URI:Ljava/lang/String; = "oculus.store://link/products?referrer=manual&item_id="

.field private static final OCULUS_XBOXAPP_APP_ID:Ljava/lang/String; = "1193603937358048"

.field private static final PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id="

.field private static final PLAY_STORE_WEB_URI:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final TAG:Ljava/lang/String;

.field public static final XBOXAPP_BETA_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass.beta"

.field public static final XBOXAPP_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass"

.field public static betaAppInstalled:Z

.field public static mainAppInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentString"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getXboxAppInAnyMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v1, "market://details?id="

    const-string v2, "com.android.vending"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "storeIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 85
    const-string v1, "amzn://apps/android?p="

    const-string v2, "com.amazon.mShop.android"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    :cond_0
    if-nez v0, :cond_1

    .line 90
    const-string v1, "amzn://apps/android?p="

    const-string v2, "com.amazon.venezia"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    :cond_1
    if-nez v0, :cond_2

    .line 95
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "storeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.microsoft.xboxone.smartglass"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .restart local v0    # "storeIntent":Landroid/content/Intent;
    :cond_2
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method public static getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeUri"    # Ljava/lang/String;
    .param p2, "expectedStorePackage"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.microsoft.xboxone.smartglass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v3, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "appsAbleToHandleIntent":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 111
    .local v4, "otherAppActivity":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v2, "componentName":Landroid/content/ComponentName;
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "marketIntent":Landroid/content/Intent;
    .end local v4    # "otherAppActivity":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v3

    .restart local v3    # "marketIntent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getXboxAppInOculusMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "oculus.store://link/products?referrer=manual&item_id=1193603937358048"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, "storeIntent":Landroid/content/Intent;
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public static getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    sget-boolean v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.microsoft.xboxone.smartglass.beta"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.microsoft.xboxone.smartglass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v2, 0x1

    .line 54
    .end local v0    # "component":Landroid/content/ComponentName;
    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v3, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static launchXboxAppStorePage(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInAnyMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "storePageIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public static xboxAppIsInstalled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    const-string v2, "com.microsoft.xboxone.smartglass"

    invoke-static {p0, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    sput-boolean v1, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    .line 65
    :goto_0
    const-string v2, "com.microsoft.xboxone.smartglass.beta"

    invoke-static {p0, v2}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    sput-boolean v1, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    .line 71
    :goto_1
    sget-boolean v2, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 62
    :cond_2
    sput-boolean v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    goto :goto_0

    .line 68
    :cond_3
    sput-boolean v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    goto :goto_1
.end method
