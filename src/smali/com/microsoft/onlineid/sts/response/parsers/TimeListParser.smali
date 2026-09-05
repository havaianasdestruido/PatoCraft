.class public Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "TimeListParser.java"


# instance fields
.field private _expires:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->verifyParseCalled()V

    .line 55
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method protected onParse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v1, "wsu:Expires"

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->nextStartTag(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;)V

    .line 44
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/DateParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->parse()V

    .line 46
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->_expires:Ljava/util/Date;

    .line 47
    return-void
.end method
