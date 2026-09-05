.class Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SignatureValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
    .param p2, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "expectedNamespace"    # Ljava/lang/String;
    .param p4, "expectedTag"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {p0, p2, p3, p4}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onParse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 149
    :goto_0
    const-string v3, "Reference"

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    const-string v5, "URI"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v2

    .line 153
    .local v2, "referenceScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v3, "DigestValue"

    invoke-virtual {v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing DigestValue for URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 157
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "digest":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    :cond_1
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid digest URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 165
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid digest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 170
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v3}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$300(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 175
    .end local v0    # "digest":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "referenceScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_4
    return-void
.end method
