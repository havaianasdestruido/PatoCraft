.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "UploadContactsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask",
        "<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_UPLOAD_NUM_PER_REQUEST:I = 0x64


# instance fields
.field private callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;)V
    .locals 1
    .param p1, "callback"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    .line 28
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getProfileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getProfileNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getUserEnteredNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getUserEnteredNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getPhoneNumberFromSim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getPhoneNumberFromSim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private batchUploadContacts(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x64

    if-le v3, v6, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "startUploadIndex":I
    const/4 v1, 0x1

    .line 104
    .local v1, "moreContactsToUpload":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 105
    add-int/lit8 v0, v2, 0x64

    .line 107
    .local v0, "endUploadIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 109
    const/4 v1, 0x0

    .line 112
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContacts(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    .end local v0    # "endUploadIndex":I
    :goto_2
    return v5

    .end local v1    # "moreContactsToUpload":Z
    .end local v2    # "startUploadIndex":I
    :cond_1
    move v3, v5

    .line 98
    goto :goto_0

    .line 116
    .restart local v0    # "endUploadIndex":I
    .restart local v1    # "moreContactsToUpload":Z
    .restart local v2    # "startUploadIndex":I
    :cond_2
    move v2, v0

    goto :goto_1

    .end local v0    # "endUploadIndex":I
    :cond_3
    move v5, v4

    .line 119
    goto :goto_2
.end method

.method private uploadContacts(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v6, 0x64

    if-gt v3, v6, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 126
    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;

    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 130
    .local v1, "uploadContactsRequest":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->updatePhoneContacts(Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;

    move-result-object v2

    .line 132
    .local v2, "uploadContactsResponse":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->isErrorResponse:Z

    if-nez v3, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;->getXboxPhoneContacts()Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->updateXboxContacts(Ljava/util/Set;)V

    .line 138
    .end local v0    # "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return v4

    .end local v1    # "uploadContactsRequest":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;
    .end local v2    # "uploadContactsResponse":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    :cond_0
    move v3, v5

    .line 124
    goto :goto_0

    .restart local v1    # "uploadContactsRequest":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsRequest;
    .restart local v2    # "uploadContactsResponse":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$UploadPhoneContactsResponse;
    :cond_1
    move v4, v5

    .line 138
    goto :goto_1
.end method

.method private uploadContactsSucceeded()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;>;"
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->batchUploadContacts(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContacts(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0

    .line 93
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getMyShortCircuitProfile()Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;

    move-result-object v0

    .line 57
    .local v0, "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    if-nez v0, :cond_0

    .line 58
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 77
    .end local v0    # "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    :goto_0
    return-object v2

    .line 61
    .restart local v0    # "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;->getXboxNumber()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "profileNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->setProfileNumber(Ljava/lang/String;)V

    .line 65
    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->phoneNumber:Ljava/lang/String;

    .line 71
    .end local v0    # "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .end local v1    # "profileNumber":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->uploadContactsSucceeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0

    .line 67
    .restart local v0    # "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .restart local v1    # "profileNumber":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "profile":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$ShortCircuitProfileResponse;
    .end local v1    # "profileNumber":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    :cond_3
    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->callback:Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask$UploadContactsCompleted;->onResult(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/UploadContactsAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
