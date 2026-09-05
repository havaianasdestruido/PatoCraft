.class public Lcom/microsoft/onlineid/sts/response/parsers/DateParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "DateParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    }
.end annotation


# instance fields
.field private _date:Ljava/util/Date;

.field private final _type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "type"    # Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    .line 40
    return-void
.end method


# virtual methods
.method getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->verifyParseCalled()V

    .line 112
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_date:Ljava/util/Date;

    return-object v0
.end method

.method protected onParse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_type:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser;->_date:Ljava/util/Date;

    .line 52
    return-void
.end method
