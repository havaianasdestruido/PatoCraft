.class public Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;
.super Ljava/lang/Object;
.source "UpdateThirdPartyTokenRequest.java"


# instance fields
.field public accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;->accessToken:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static getUpdateThirdPartyTokenRequestBody(Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "updateThirdPartyTokenRequest"    # Lcom/microsoft/xbox/service/model/friendfinder/UpdateThirdPartyTokenRequest;

    .prologue
    .line 14
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 17
    const/4 v0, 0x0

    goto :goto_0
.end method
