.class public Lcom/microsoft/onlineid/internal/sso/SsoService;
.super Ljava/lang/Object;
.source "SsoService.java"


# static fields
.field public static final SsoServiceIntent:Ljava/lang/String; = "com.microsoft.msa.action.SSO_SERVICE"


# instance fields
.field private final _firstInstallTime:J

.field private final _packageName:Ljava/lang/String;

.field private final _sdkVersion:Ljava/lang/String;

.field private final _ssoVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ssoVersion"    # I
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    .line 29
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ssoVersion"    # I
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "firstInstallTime"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    .line 46
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    .line 47
    iput-wide p4, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    .line 48
    return-void
.end method


# virtual methods
.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_firstInstallTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoVersion()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": sso "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_ssoVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SsoService;->_sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
