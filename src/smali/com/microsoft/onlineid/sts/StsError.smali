.class public Lcom/microsoft/onlineid/sts/StsError;
.super Ljava/lang/Object;
.source "StsError.java"


# instance fields
.field private final _code:Lcom/microsoft/onlineid/sts/StsErrorCode;

.field private final _logMessage:Ljava/lang/String;

.field private final _originalErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V
    .locals 5
    .param p1, "error"    # Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertServerError(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s error caused by server error:\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 40
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/sts/StringCodeServerError;)V
    .locals 5
    .param p1, "error"    # Lcom/microsoft/onlineid/sts/StringCodeServerError;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->convertServerError(Lcom/microsoft/onlineid/sts/StringCodeServerError;)Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 54
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/StringCodeServerError;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s error caused by server error:\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 56
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/sts/StsErrorCode;)V
    .locals 5
    .param p1, "code"    # Lcom/microsoft/onlineid/sts/StsErrorCode;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 70
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s error."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-ne p0, p1, :cond_0

    .line 178
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    .line 180
    :cond_0
    instance-of v1, p1, Lcom/microsoft/onlineid/sts/StsError;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/microsoft/onlineid/sts/StsError;

    .line 183
    .local v0, "other":Lcom/microsoft/onlineid/sts/StsError;
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    iget-object v2, v0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 185
    .end local v0    # "other":Lcom/microsoft/onlineid/sts/StsError;
    :cond_1
    instance-of v1, p1, Lcom/microsoft/onlineid/sts/StsErrorCode;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/microsoft/onlineid/sts/StsErrorCode;

    .line 188
    .local v0, "other":Lcom/microsoft/onlineid/sts/StsErrorCode;
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 191
    .end local v0    # "other":Lcom/microsoft/onlineid/sts/StsErrorCode;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_logMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_originalErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInvalidSessionError()Z
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNgcKeyNotFoundError()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    sget-object v1, Lcom/microsoft/onlineid/sts/StsErrorCode;->PP_E_NGC_LOGIN_KEY_NOT_FOUND:Lcom/microsoft/onlineid/sts/StsErrorCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryableDeviceDAErrorForDeviceAuth()Z
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isRetryableDeviceDAErrorForUserAuth()Z
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/microsoft/onlineid/sts/StsError$1;->$SwitchMap$com$microsoft$onlineid$sts$StsErrorCode:[I

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/StsError;->_code:Lcom/microsoft/onlineid/sts/StsErrorCode;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/StsErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 111
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
