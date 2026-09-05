.class public Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
.super Ljava/lang/Object;
.source "AuthenticatorUserAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _cid:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _flights:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _gcmRegistrationID:Ljava/lang/String;

.field private _isSessionApprover:Z

.field private _isSessionApproverRegistrationNeeded:Z

.field private final _puid:Ljava/lang/String;

.field private _serverKeyIdentifier:Ljava/lang/String;

.field private _timeOfLastProfileUpdate:J

.field private _token:Lcom/microsoft/onlineid/sts/DAToken;

.field private _totpKey:[B

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 2
    .param p1, "puid"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "token"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "username"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_cid:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    .line 113
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 115
    iput-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    .line 116
    iput-object v1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    .line 118
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    if-ne p0, p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 355
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 357
    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 361
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    iget-boolean v4, v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    .line 363
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 364
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    .line 365
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_3
    move v1, v2

    .line 368
    goto :goto_0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlights()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getGcmRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_gcmRegistrationID:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerKeyIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOfLastProfileUpdate()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_timeOfLastProfileUpdate:J

    return-wide v0
.end method

.method public getTotpKey()[B
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hasNgcRegistrationSucceeded()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNewAndInOutOfBandInterrupt()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_puid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSessionApprover()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    return v0
.end method

.method public isSessionApproverRegistrationNeeded()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    return v0
.end method

.method public setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 1
    .param p1, "token"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 246
    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 248
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_displayName:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setFlights(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_flights:Ljava/util/Set;

    .line 229
    return-void
.end method

.method public setGcmRegistrationID(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationID"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_gcmRegistrationID:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setIsSessionApprover(Z)V
    .locals 0
    .param p1, "isSessionApprover"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApprover:Z

    .line 184
    return-void
.end method

.method public setIsSessionApproverRegistrationNeeded(Z)V
    .locals 0
    .param p1, "isSessionApproverRegistrationNeeded"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_isSessionApproverRegistrationNeeded:Z

    .line 203
    return-void
.end method

.method public setServerKeyIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_serverKeyIdentifier:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setTimeOfLastProfileUpdate(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_timeOfLastProfileUpdate:J

    .line 303
    return-void
.end method

.method public setTotpKey([B)V
    .locals 0
    .param p1, "totpKey"    # [B

    .prologue
    .line 264
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_totpKey:[B

    .line 265
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "username"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->_username:Ljava/lang/String;

    .line 158
    return-void
.end method
