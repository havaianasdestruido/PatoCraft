.class public Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;
.super Ljava/lang/Object;
.source "UTCFriendFinder.java"


# static fields
.field private static currentUserXuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setCurrentUserXuid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setUserIdForCommonData()V

    return-void
.end method

.method static synthetic access$200([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->formatXuids([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatXuids([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "xuids"    # [Ljava/lang/String;

    .prologue
    .line 396
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 397
    aget-object v0, p0, v1

    .line 398
    .local v0, "currentXuid":Ljava/lang/String;
    const-string v2, "x:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "currentXuid":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private static setCurrentUserXuid(Ljava/lang/String;)V
    .locals 0
    .param p0, "userXuid"    # Ljava/lang/String;

    .prologue
    .line 16
    sput-object p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->setUserIdForCommonData()V

    .line 18
    return-void
.end method

.method private static setUserIdForCommonData()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->currentUserXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->setUserId(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static trackAddFacebookFriend(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXuids"    # [Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$23;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$23;-><init>([Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 270
    return-void
.end method

.method public static trackAddFacebookFriendCancel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$26;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$26;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 300
    return-void
.end method

.method public static trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 2
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "friendFinderType"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .prologue
    .line 240
    sget-object v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$36;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookFriendFinderBack(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsBack(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static trackContactsAddPhoneView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$8;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$8;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 104
    return-void
.end method

.method public static trackContactsFindFriendsView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$6;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$6;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 84
    return-void
.end method

.method public static trackContactsInviteFriendsView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$9;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$9;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 114
    return-void
.end method

.method public static trackContactsOptInView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$10;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$10;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 124
    return-void
.end method

.method public static trackContactsSignUp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$13;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$13;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 154
    return-void
.end method

.method public static trackContactsSuggestions(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$14;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$14;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 164
    return-void
.end method

.method public static trackContactsVerifyPhoneView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$7;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$7;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 94
    return-void
.end method

.method public static trackDone(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$18;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$18;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 206
    return-void
.end method

.method public static trackFacebookAddFriendView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$4;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$4;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 64
    return-void
.end method

.method private static trackFacebookFriendFinderBack(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$21;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$21;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 237
    return-void
.end method

.method public static trackFacebookLinkAccountView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$3;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 54
    return-void
.end method

.method public static trackFacebookLoginCancel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$20;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$20;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 226
    return-void
.end method

.method public static trackFacebookLoginSuccessful(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$22;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$22;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 258
    return-void
.end method

.method public static trackFacebookOptInNext(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$19;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$19;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 216
    return-void
.end method

.method public static trackFacebookOptInView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$2;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 44
    return-void
.end method

.method public static trackFacebookShareView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$5;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$5;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 74
    return-void
.end method

.method public static trackFacebookSignup(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$11;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$11;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 134
    return-void
.end method

.method public static trackFacebookSuggestions(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$12;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$12;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 144
    return-void
.end method

.method public static trackFriendFinderView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "currentUserXuid"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$1;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 34
    return-void
.end method

.method public static trackGamertagSearch(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 167
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$15;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$15;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 174
    return-void
.end method

.method public static trackGamertagSearchSubmit(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$16;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$16;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 184
    return-void
.end method

.method public static trackGamertagSearchSuccess(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$17;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$17;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 196
    return-void
.end method

.method public static trackPhoneContactsAddFriends(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;
    .param p1, "targetXuids"    # [Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$34;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$34;-><init>([Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 383
    return-void
.end method

.method private static trackPhoneContactsBack(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 313
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 321
    return-void
.end method

.method public static trackPhoneContactsCallMe(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 354
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$32;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$32;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 361
    return-void
.end method

.method public static trackPhoneContactsChangeRegion(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$30;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$30;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 341
    return-void
.end method

.method public static trackPhoneContactsLinkSuccess(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 386
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$35;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$35;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 393
    return-void
.end method

.method public static trackPhoneContactsNext(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$27;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$27;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 310
    return-void
.end method

.method public static trackPhoneContactsResendCode(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 344
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$31;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$31;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 351
    return-void
.end method

.method public static trackPhoneContactsSendInvite(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 364
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$33;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$33;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 371
    return-void
.end method

.method public static trackPhoneContactsSkipAddFriends(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 324
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$29;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$29;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 331
    return-void
.end method

.method public static trackShareFacebookLinkToFeed(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$24;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$24;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 280
    return-void
.end method

.method public static trackSkipFacebookSharing(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    new-instance v0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$25;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$25;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    .line 290
    return-void
.end method
