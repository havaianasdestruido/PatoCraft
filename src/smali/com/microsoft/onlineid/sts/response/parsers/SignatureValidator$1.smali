.class Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SignatureValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
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
    .line 96
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {p0, p2, p3, p4}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onParse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->nextStartTagNoThrow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "SignedInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v1, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$000(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    goto :goto_0

    .line 107
    :cond_0
    const-string v1, "SignatureValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$102(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->skipElement()V

    goto :goto_0

    .line 117
    .end local v0    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$100(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "<SignatureValue> node was missing."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->this$0:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-static {v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->access$200(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v2, "<SignedInfo> node was missing."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 125
    :cond_4
    return-void
.end method
