.class public Lcom/microsoft/xbox/toolkit/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UrisEqualCaseInsensitive(Ljava/net/URI;Ljava/net/URI;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/net/URI;
    .param p1, "rhs"    # Ljava/net/URI;

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "oldUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 73
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEncodedUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p0, "oldUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUriNonNull(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEncodedUriNonNull(Ljava/lang/String;)Ljava/net/URI;
    .locals 11
    .param p0, "oldUrl"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 45
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v9, "url":Ljava/net/URL;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .end local v9    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/net/URISyntaxException;
    move-object v0, v10

    .line 49
    goto :goto_0

    .line 50
    .end local v8    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/net/MalformedURLException;
    move-object v0, v10

    .line 51
    goto :goto_0
.end method

.method public static getUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "encodedUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "uri":Ljava/net/URI;
    goto :goto_0

    .line 63
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 65
    goto :goto_0
.end method
