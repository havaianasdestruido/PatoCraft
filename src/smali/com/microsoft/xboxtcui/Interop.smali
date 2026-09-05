.class public Lcom/microsoft/xboxtcui/Interop;
.super Ljava/lang/Object;
.source "Interop.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/microsoft/xboxtcui/Interop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/microsoft/xboxtcui/Interop$1;

    invoke-direct {v0}, Lcom/microsoft/xboxtcui/Interop$1;-><init>()V

    sput-object v0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowAddFriends(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowAddFriends"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showAddFriends(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0
.end method

.method public static ShowFriendFinder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "meXuid"    # Ljava/lang/String;
    .param p2, "privileges"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v3, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCUI- ShowFriendFinder - meXuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v3, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCUI- ShowFriendFinder: privileges:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v3, "255"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    .local v1, "foregroundActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    move-object v0, p0

    .line 67
    .local v0, "activityToUse":Landroid/app/Activity;
    :goto_0
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 68
    .local v2, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-virtual {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putMeXuid(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putPrivileges(Ljava/lang/String;)V

    .line 71
    new-instance v3, Lcom/microsoft/xboxtcui/Interop$3;

    invoke-direct {v3, v0, v2}, Lcom/microsoft/xboxtcui/Interop$3;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    .end local v0    # "activityToUse":Landroid/app/Activity;
    .end local v1    # "foregroundActivity":Landroid/app/Activity;
    .end local v2    # "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :goto_1
    return-void

    .restart local v1    # "foregroundActivity":Landroid/app/Activity;
    :cond_0
    move-object v0, v1

    .line 65
    goto :goto_0

    .line 85
    .end local v1    # "foregroundActivity":Landroid/app/Activity;
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_1
.end method

.method public static ShowProfileCardUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "meXuid"    # Ljava/lang/String;
    .param p2, "targetProfileXuid"    # Ljava/lang/String;
    .param p3, "privileges"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v3, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCUI- ShowProfileCardUI: meXuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v3, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCUI- ShowProfileCardUI: targeProfileXuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v3, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TCUI- ShowProfileCardUI: privileges:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 35
    .local v1, "foregroundActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    move-object v0, p0

    .line 37
    .local v0, "activityToUse":Landroid/app/Activity;
    :goto_0
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    .line 38
    .local v2, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-virtual {v2, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putMeXuid(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putSelectedProfile(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, p3}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->putPrivileges(Ljava/lang/String;)V

    .line 42
    new-instance v3, Lcom/microsoft/xboxtcui/Interop$2;

    invoke-direct {v3, v0, v2}, Lcom/microsoft/xboxtcui/Interop$2;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    return-void

    .end local v0    # "activityToUse":Landroid/app/Activity;
    .end local v2    # "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    :cond_0
    move-object v0, v1

    .line 35
    goto :goto_0
.end method

.method public static ShowTitleAchievements(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetTitleId"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowTitleAchievements"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showTitleAchievements(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0
.end method

.method public static ShowTitleHub(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetTitleId"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowTitleHub"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showTitleHub(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0
.end method

.method public static ShowUserProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetXboxUserId"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowUserProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0, p1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0
.end method

.method public static ShowUserSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    const-string v1, "Deeplink - ShowUserSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    goto :goto_0
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 15
    invoke-static {p0}, Lcom/microsoft/xboxtcui/Interop;->tcui_completed_callback(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->detachedCallback:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getForegroundActivity()Landroid/app/Activity;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 136
    :try_start_0
    const-string v11, "android.app.ActivityThread"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 137
    .local v7, "activityThreadClass":Ljava/lang/Class;
    const-string v11, "currentActivityThread"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v7, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 138
    .local v6, "activityThread":Ljava/lang/Object;
    const-string v11, "mActivities"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 139
    .local v1, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "activities":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 142
    .local v4, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 143
    .local v5, "activityRecordClass":Ljava/lang/Class;
    const-string v12, "paused"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 144
    .local v9, "pausedField":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 146
    const-string v11, "activity"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 147
    .local v3, "activityField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v3    # "activityField":Ljava/lang/reflect/Field;
    .end local v4    # "activityRecord":Ljava/lang/Object;
    .end local v5    # "activityRecordClass":Ljava/lang/Class;
    .end local v6    # "activityThread":Ljava/lang/Object;
    .end local v9    # "pausedField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v8

    .line 153
    .local v8, "ex":Ljava/lang/Exception;
    sget-object v11, Lcom/microsoft/xboxtcui/Interop;->TAG:Ljava/lang/String;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v2, v10

    .line 156
    goto :goto_0
.end method

.method private static native tcui_completed_callback(I)V
.end method
