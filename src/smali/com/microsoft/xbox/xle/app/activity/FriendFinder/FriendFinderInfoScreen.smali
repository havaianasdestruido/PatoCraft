.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "FriendFinderInfoScreen.java"


# instance fields
.field private infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

.field private nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    .line 25
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 36
    return-void
.end method

.method private getFacebookText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    .line 110
    .local v0, "privacySetting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 121
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "text":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 112
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_0
    new-array v2, v7, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineTwo:I

    aput v3, v2, v5

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_NotSet_LineThree:I

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    new-array v2, v7, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineTwo:I

    aput v3, v2, v5

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Blocked_LineThree:I

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    new-array v2, v6, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_Default:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Text_PeopleIChoose_LineTwo:I

    aput v3, v2, v5

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneText()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    .line 133
    .local v0, "privacySetting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$privacy$PrivacySettings$PrivacySettingValue:[I

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 158
    new-array v2, v6, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v3, v2, v5

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "text":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 136
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_0
    new-array v2, v7, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v3, v2, v5

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    new-array v2, v8, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v3, v2, v5

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts:I

    aput v3, v2, v6

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v3, v2, v7

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x5

    new-array v2, v2, [I

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineOne:I

    aput v3, v2, v4

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineTwo:I

    aput v3, v2, v5

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_RealNameSharedWithContacts:I

    aput v3, v2, v6

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_ACoupleNotes:I

    aput v3, v2, v7

    sget v3, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Text_LineThree:I

    aput v3, v2, v8

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->multiLineText([I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private varargs multiLineText([I)Ljava/lang/String;
    .locals 5
    .param p1, "textIds"    # [I

    .prologue
    .line 167
    array-length v2, p1

    if-nez v2, :cond_1

    .line 168
    const-string v1, ""

    .line 175
    :cond_0
    return-object v1

    .line 171
    :cond_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    const-string v0, "Friend finder info"

    :goto_0
    return-object v0

    .line 182
    :pswitch_0
    const-string v0, "Friend finder facebook info"

    goto :goto_0

    .line 184
    :pswitch_1
    const-string v0, "Friend finder phone info"

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackBackButtonPressed(Ljava/lang/CharSequence;Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V

    .line 193
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onBackButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 42
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->onCreateContentView()V

    .line 44
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    .line 45
    .local v0, "params":Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 49
    const-string v2, "Expected info type"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 51
    :cond_0
    return-void

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateContentView()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->friend_finder_info_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->setContentView(I)V

    .line 56
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_title:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 57
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_subtitle:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 58
    sget v0, Lcom/microsoft/xboxtcui/R$id;->friendfinder_info_next:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    .line 68
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$3;->$SwitchMap$com$microsoft$xbox$service$model$friendfinder$FriendFinderType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->infoType:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkFacebook_Dialog_Title:I

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getFacebookText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackFacebookOptInView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v1, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_LinkPhone_Dialog_Title:I

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getPhoneText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->nextButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderInfoScreen;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackContactsOptInView(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
