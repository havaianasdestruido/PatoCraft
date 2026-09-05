.class public Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;,
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;,
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;,
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase",
        "<",
        "Lcom/microsoft/xbox/service/model/serialization/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private friendFinderSettings:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

.field private final friendFinderSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private final hiddenMruItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latestVersion:I

.field private marketUrl:Ljava/lang/String;

.field private minRequiredOSVersion:I

.field private minVersion:I

.field private remoteControlSpecialTitleIds:[I

.field private smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

.field private final smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    .line 22
    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    .line 23
    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    .line 24
    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 42
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/xle/model/SystemSettingsModel$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->onGetSmartglassSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->onGetFriendFinderSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->access$000()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    move-result-object v0

    return-object v0
.end method

.method private getMinimumVersion()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    return v0
.end method

.method private onGetFriendFinderSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/xle/app/FriendFinderSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/xle/app/FriendFinderSettings;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettings:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettings:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettings:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettings:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    iget-object v1, v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->ICONS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconsFromJson(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onGetSmartglassSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/xle/app/SmartglassSettings;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    .line 106
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONMINOS:I

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    .line 108
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONMIN:I

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONLATEST:I

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    .line 110
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->marketUrl:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->HIDDEN_MRU_ITEMS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->populateHiddenMruItems(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object v0, v0, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->REMOTE_CONTROL_SPECIALS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->populateRemoteControlSpecialTitleIds(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getMustUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    invoke-interface {v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;->onMustUpdate()V

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getHasUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    invoke-interface {v0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;->onOptionalUpdate()V

    goto :goto_1
.end method

.method private populateHiddenMruItems(Ljava/lang/String;)V
    .locals 5
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "buf":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 144
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 145
    .local v1, "titleId":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "buf":[Ljava/lang/String;
    .end local v1    # "titleId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private populateRemoteControlSpecialTitleIds(Ljava/lang/String;)V
    .locals 8
    .param p1, "commaDelimited"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "buf":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    array-length v5, v0

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "index":I
    array-length v6, v0

    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    .line 158
    .local v4, "titleId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 160
    .local v1, "id":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_1
    iget-object v7, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput v1, v7, v3

    .line 157
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 161
    :catch_0
    move-exception v7

    goto :goto_1

    .line 167
    .end local v0    # "buf":[Ljava/lang/String;
    .end local v1    # "id":I
    .end local v3    # "index":I
    .end local v4    # "titleId":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getHasUpdate(I)Z
    .locals 4
    .param p1, "currentVersionCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getLatestVersion()I

    move-result v0

    if-le v0, p1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_1
.end method

.method public getLatestVersion()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    return v0
.end method

.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->marketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMustUpdate(I)Z
    .locals 4
    .param p1, "currentVersionCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getMinimumVersion()I

    move-result v0

    if-le v0, p1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    :cond_1
    move v1, v2

    .line 64
    goto :goto_1
.end method

.method public getRemoteControlSpecialTitleIds()[I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    return-object v0
.end method

.method public isInHiddenMruItems(Ljava/lang/String;)Z
    .locals 1
    .param p1, "titleId"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadAsync(Z)V
    .locals 7
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 89
    iget-wide v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;

    invoke-direct {v6, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 90
    iget-wide v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;

    invoke-direct {v6, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFriendFinderSettings(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/xle/app/FriendFinderSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-wide v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->friendFinderSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;

    invoke-direct {v6, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadSystemSettings(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-wide v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;

    invoke-direct {v6, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public setOnUpdateExistListener(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    .line 55
    return-void
.end method
