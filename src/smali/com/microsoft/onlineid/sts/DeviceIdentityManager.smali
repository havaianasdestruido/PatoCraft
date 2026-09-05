.class public Lcom/microsoft/onlineid/sts/DeviceIdentityManager;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"


# static fields
.field static final MaxProvisionAttemptsPerCall:I = 0x3


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

.field private _requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 75
    iput-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .line 76
    iput-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;Lcom/microsoft/onlineid/sts/request/StsRequestFactory;)V
    .locals 1
    .param p1, "storage"    # Lcom/microsoft/onlineid/internal/storage/TypedStorage;
    .param p2, "credentialGenerator"    # Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;
    .param p3, "factory"    # Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 94
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    .line 95
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .line 96
    return-void
.end method

.method private checkProvisionResponse(ILcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;)Z
    .locals 4
    .param p1, "count"    # I
    .param p2, "response"    # Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/RequestThrottledException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 287
    :goto_0
    return v2

    .line 272
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    .line 273
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsError;
    sget-object v2, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/StsErrorCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 290
    new-instance v2, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v3, "Unable to provision device"

    invoke-direct {v2, v3, v0}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v2

    .line 278
    :pswitch_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 280
    const-string v1, "provisionNewDevice() exceeded allowable number of retry attempts."

    .line 281
    .local v1, "message":Ljava/lang/String;
    const-string v2, "provisionNewDevice() exceeded allowable number of retry attempts."

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 282
    new-instance v2, Lcom/microsoft/onlineid/sts/exception/RequestThrottledException;

    const-string v3, "provisionNewDevice() exceeded allowable number of retry attempts."

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/sts/exception/RequestThrottledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    const-string v2, "Device provision request failed due to invalid credentials. Trying again."

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCredentialGenerator()Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_credentialGenerator:Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    return-object v0
.end method

.method private getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_requestFactory:Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    return-object v0
.end method

.method private provisionNewDevice()Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->deleteDeviceIdentity()V

    .line 221
    const/4 v2, 0x0

    .line 224
    .local v2, "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    const/4 v3, 0x0

    .line 225
    .local v3, "request":Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/4 v5, 0x3

    if-gt v0, v5, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getCredentialGenerator()Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generate()Lcom/microsoft/onlineid/sts/DeviceCredentials;

    move-result-object v1

    .line 228
    .local v1, "credentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    if-nez v3, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceProvisionRequest(Lcom/microsoft/onlineid/sts/DeviceCredentials;)Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;

    move-result-object v3

    .line 238
    :goto_1
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v4

    check-cast v4, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;

    .line 241
    .local v4, "response":Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    invoke-direct {p0, v0, v4}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->checkProvisionResponse(ILcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    new-instance v2, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    .end local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->getPuid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v1, v5, v6}, Lcom/microsoft/onlineid/sts/DeviceIdentity;-><init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 245
    .restart local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v5, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V

    .line 250
    .end local v1    # "credentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .end local v4    # "response":Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    :cond_0
    return-object v2

    .line 234
    .restart local v1    # "credentials":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    :cond_1
    invoke-virtual {v3, v1}, Lcom/microsoft/onlineid/sts/request/DeviceProvisionRequest;->setDeviceCredentials(Lcom/microsoft/onlineid/sts/DeviceCredentials;)V

    goto :goto_1

    .line 225
    .restart local v4    # "response":Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDeviceIdentity(Z)Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .locals 7
    .param p1, "forceReauthenticate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v1

    .line 122
    .local v1, "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    move-object v2, v1

    .line 176
    .end local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .local v2, "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :goto_0
    return-object v2

    .line 138
    .end local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .restart local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :cond_0
    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    .line 141
    .local v3, "response":Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->succeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 144
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v4, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V

    move-object v2, v1

    .line 145
    .end local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .restart local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    goto :goto_0

    .line 148
    .end local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .restart local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :cond_1
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    .line 149
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsError;
    sget-object v4, Lcom/microsoft/onlineid/sts/DeviceIdentityManager$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/StsErrorCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 156
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v5, "Failed to authenticate device"

    invoke-direct {v4, v5, v0}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v4

    .line 161
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsError;
    .end local v3    # "response":Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
    :cond_2
    :pswitch_0
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->provisionNewDevice()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v1

    .line 165
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->getRequestFactory()Lcom/microsoft/onlineid/sts/request/StsRequestFactory;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/microsoft/onlineid/sts/request/StsRequestFactory;->createDeviceAuthRequest(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/request/DeviceAuthRequest;->send()Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;

    move-result-object v3

    check-cast v3, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;

    .line 166
    .restart local v3    # "response":Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->succeeded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/microsoft/onlineid/sts/DeviceIdentity;->setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 169
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/DeviceIdentityManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v4, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V

    move-object v2, v1

    .line 176
    .end local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .restart local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    goto :goto_0

    .line 173
    .end local v2    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .restart local v1    # "identity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :cond_3
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsException;

    const-string v5, "Failed to authenticate device"

    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsException;-><init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V

    throw v4

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
