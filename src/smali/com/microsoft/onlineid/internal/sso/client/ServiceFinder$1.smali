.class final Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;
.super Ljava/lang/Object;
.source "ServiceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/microsoft/onlineid/internal/sso/SsoService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/onlineid/internal/sso/SsoService;Lcom/microsoft/onlineid/internal/sso/SsoService;)I
    .locals 6
    .param p1, "service"    # Lcom/microsoft/onlineid/internal/sso/SsoService;
    .param p2, "otherService"    # Lcom/microsoft/onlineid/internal/sso/SsoService;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.msa.authenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const/4 v0, -0x1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.msa.authenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getSsoVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getSsoVersion()I

    move-result v2

    sub-int v0, v1, v2

    .line 54
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getFirstInstallTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/microsoft/onlineid/internal/sso/SsoService;->getFirstInstallTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/microsoft/onlineid/internal/sso/SsoService;

    check-cast p2, Lcom/microsoft/onlineid/internal/sso/SsoService;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/internal/sso/client/ServiceFinder$1;->compare(Lcom/microsoft/onlineid/internal/sso/SsoService;Lcom/microsoft/onlineid/internal/sso/SsoService;)I

    move-result v0

    return v0
.end method
