.class public Lcom/microsoft/xboxtcui/XboxAppDeepLinker;
.super Ljava/lang/Object;
.source "XboxAppDeepLinker.java"


# static fields
.field public static final ACTION_FIND_PEOPLE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_FIND_PEOPLE"

.field private static final ACTION_VIEW_ACHIEVEMENTS:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_ACHIEVEMENTS"

.field private static final ACTION_VIEW_GAME_PROFILE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_GAME_PROFILE"

.field private static final ACTION_VIEW_SETTINGS:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_SETTINGS"

.field private static final ACTION_VIEW_USER_PROFILE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_USER_PROFILE"

.field private static final AMAZON_FIRE_TV_MODEL_PREFIX:Ljava/lang/String; = "AFT"

.field private static final AMAZON_MANUFACTURER:Ljava/lang/String; = "Amazon"

.field private static final AMAZON_STORE_URI:Ljava/lang/String; = "amzn://apps/android?p="

.field private static final AMAZON_TABLET_STORE_PACKAGE:Ljava/lang/String; = "com.amazon.venezia"

.field private static final AMAZON_UNDERGROUND_PACKAGE:Ljava/lang/String; = "com.amazon.mShop.android"

.field private static final EXTRA_IS_XBOX360_GAME:Ljava/lang/String; = "com.microsoft.xbox.extra.IS_XBOX360_GAME"

.field private static final EXTRA_TITLEID:Ljava/lang/String; = "com.microsoft.xbox.extra.TITLEID"

.field private static final EXTRA_XUID:Ljava/lang/String; = "com.microsoft.xbox.extra.XUID"

.field private static final OCULUS_STORE_WEB_URI:Ljava/lang/String; = "oculus.store://link/products?referrer=manual&item_id="

.field private static final OCULUS_XBOXAPP_APP_ID:Ljava/lang/String; = "1193603937358048"

.field private static final PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id="

.field private static final PLAY_STORE_WEB_URI:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final XBOXAPP_BETA_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass.beta"

.field private static final XBOXAPP_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass"

.field private static betaAppInstalled:Z

.field private static mainAppInstalled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static appDeeplinkingSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Amazon"

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "AFT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 53
    .local v0, "isAmazonFireTv":Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isAmazonFireTv":Z
    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    .restart local v0    # "isAmazonFireTv":Z
    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method

.method private static getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "DeepLink"

    return-object v0
.end method

.method private static getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeUri"    # Ljava/lang/String;
    .param p2, "expectedStorePackage"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v4, Landroid/content/Intent;

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

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v4, "storeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 228
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

    .line 229
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 233
    .local v3, "otherAppActivity":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v2, "componentName":Landroid/content/ComponentName;
    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "otherAppActivity":Landroid/content/pm/ActivityInfo;
    .end local v4    # "storeIntent":Landroid/content/Intent;
    :goto_0
    return-object v4

    .restart local v4    # "storeIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 191
    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.microsoft.xboxone.smartglass.beta"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    :goto_1
    return-object v0

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.microsoft.xboxone.smartglass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private static launchXboxAppStorePage(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const-string v1, "market://details?id="

    const-string v2, "com.android.vending"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "storeIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 201
    const-string v1, "amzn://apps/android?p="

    const-string v2, "com.amazon.mShop.android"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    :cond_0
    if-nez v0, :cond_1

    .line 206
    const-string v1, "amzn://apps/android?p="

    const-string v2, "com.amazon.venezia"

    invoke-static {p0, v1, v2}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    :cond_1
    if-nez v0, :cond_2

    .line 211
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "storeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.microsoft.xboxone.smartglass"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .restart local v0    # "storeIntent":Landroid/content/Intent;
    :cond_2
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private static launchXboxAppStorePageInOculusStore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "oculus.store://link/products?referrer=manual&item_id=1193603937358048"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v0, "storeIntent":Landroid/content/Intent;
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public static showAddFriends(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    const/4 v3, 0x0

    .line 168
    :goto_0
    return v3

    .line 153
    :cond_0
    if-nez p0, :cond_1

    const-string v2, ""

    .line 154
    .local v2, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "correlationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, "findPeopleIntent":Landroid/content/Intent;
    const-string v3, "com.microsoft.xbox.action.ACTION_FIND_PEOPLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v3, "deepLinkId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v3, "deepLinkCaller"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    .end local v0    # "correlationId":Ljava/lang/String;
    .end local v1    # "findPeopleIntent":Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 164
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeepLink - Friend Suggestions"

    invoke-static {v3, v2, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePageInOculusStore(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static showTitleAchievements(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const/4 v3, 0x0

    .line 123
    :goto_0
    return v3

    .line 108
    :cond_0
    if-nez p0, :cond_1

    const-string v2, ""

    .line 109
    .local v2, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "correlationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, "gameAchievementsIntent":Landroid/content/Intent;
    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_ACHIEVEMENTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v3, "com.microsoft.xbox.extra.TITLEID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v3, "deepLinkId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v3, "deepLinkCaller"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0    # "correlationId":Ljava/lang/String;
    .end local v1    # "gameAchievementsIntent":Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 119
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeepLink - GameHub Achievements"

    invoke-static {v3, v2, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static showTitleHub(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const/4 v3, 0x0

    .line 100
    :goto_0
    return v3

    .line 84
    :cond_0
    if-nez p0, :cond_1

    const-string v2, ""

    .line 85
    .local v2, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "correlationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "gameProfileIntent":Landroid/content/Intent;
    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_GAME_PROFILE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v3, "com.microsoft.xbox.extra.TITLEID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "deepLinkId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "deepLinkCaller"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "correlationId":Ljava/lang/String;
    .end local v1    # "gameProfileIntent":Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 96
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeepLink - GameHub"

    invoke-static {v3, v2, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const/4 v3, 0x0

    .line 76
    :goto_0
    return v3

    .line 61
    :cond_0
    if-nez p0, :cond_1

    const-string v1, ""

    .line 62
    .local v1, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, p1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "correlationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "profileIntent":Landroid/content/Intent;
    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_USER_PROFILE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "com.microsoft.xbox.extra.XUID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "deepLinkId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v3, "deepLinkCaller"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v0    # "correlationId":Ljava/lang/String;
    .end local v2    # "profileIntent":Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 72
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeepLink - User Profile"

    invoke-static {v3, v1, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static showUserSettings(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    const/4 v3, 0x0

    .line 145
    :goto_0
    return v3

    .line 131
    :cond_0
    if-nez p0, :cond_1

    const-string v1, ""

    .line 132
    .local v1, "packageName":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "correlationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 135
    .local v2, "settingsIntent":Landroid/content/Intent;
    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v3, "deepLinkId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v3, "deepLinkCaller"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v0    # "correlationId":Ljava/lang/String;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeepLink - User Settings"

    invoke-static {v3, v1, v4}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private static xboxAppIsInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.microsoft.xboxone.smartglass"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 174
    const/4 v3, 0x1

    sput-boolean v3, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.microsoft.xboxone.smartglass.beta"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 181
    const/4 v3, 0x1

    sput-boolean v3, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_1
    sget-boolean v3, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v1, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    goto :goto_0

    .line 182
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v1, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    goto :goto_1
.end method
