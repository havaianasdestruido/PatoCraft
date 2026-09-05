.class public Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;
.super Lorg/apache/http/client/methods/HttpPost;
.source "HttpDeleteWithRequestBody.java"


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URI;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "DELETE"

    return-object v0
.end method
