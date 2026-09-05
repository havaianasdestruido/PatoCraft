.class Lcom/microsoft/xbox/idp/services/EndpointsProd;
.super Ljava/lang/Object;
.source "EndpointsProd.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/services/Endpoints;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accounts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "https://accounts.xboxlive.com"

    return-object v0
.end method

.method public privacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "https://privacy.xboxlive.com"

    return-object v0
.end method

.method public profile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "https://profile.xboxlive.com"

    return-object v0
.end method

.method public userAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "https://accountstroubleshooter.xboxlive.com"

    return-object v0
.end method

.method public userManagement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "https://user.mgt.xboxlive.com"

    return-object v0
.end method
