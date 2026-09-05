.class Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;
.super Ljava/lang/Object;
.source "TextParsers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseBase64(Ljava/lang/String;)[B
    .locals 2
    .param p0, "blob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 36
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method static parseIntHex(Ljava/lang/String;)I
    .locals 2
    .param p0, "hexInt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/Integers;->parseIntHex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static parseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, p1, v0, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method
