.class public abstract Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
.super Ljava/lang/Object;
.source "AbstractStsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getError()Lcom/microsoft/onlineid/sts/StsError;
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 42
    .local v4, "underlyingParser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v5}, Lcom/microsoft/onlineid/internal/Strings;->fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "responseXml":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "trace":Ljava/lang/String;
    new-instance v5, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    invoke-direct {v5, v3}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    .line 48
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 53
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    .line 56
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsError;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    const-string v6, "Server errors"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/onlineid/sts/StsErrorCode;->name()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getOriginalErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-interface {v5, v6, v7, v8}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StsError;
    :cond_0
    return-void

    .line 60
    .end local v2    # "responseXml":Ljava/lang/String;
    .end local v3    # "trace":Ljava/lang/String;
    .end local v4    # "underlyingParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v6, "XML response could not be properly parsed."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {v5, v6, v1, v7}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v5
.end method

.method protected abstract parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation
.end method

.method public succeeded()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
