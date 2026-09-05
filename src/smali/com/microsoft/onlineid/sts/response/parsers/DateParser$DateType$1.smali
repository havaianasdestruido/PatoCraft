.class final enum Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;
.super Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.source "DateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;-><init>(Ljava/lang/String;ILcom/microsoft/onlineid/sts/response/parsers/DateParser$1;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p1, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 70
    .local v2, "secondsSinceEpoch":J
    new-instance v1, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 72
    .end local v2    # "secondsSinceEpoch":J
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v4, "Cannot parse date node: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {v1, v4, v0, v5}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method
