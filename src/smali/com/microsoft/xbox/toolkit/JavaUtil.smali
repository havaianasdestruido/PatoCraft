.class public Lcom/microsoft/xbox/toolkit/JavaUtil;
.super Ljava/lang/Object;
.source "JavaUtil.java"


# static fields
.field private static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field private static final INTEGER_FORMATTER:Ljava/text/NumberFormat;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final PERCENT_FORMATTER:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Date;-><init>(III)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/JavaUtil;->MIN_DATE:Ljava/util/Date;

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/JavaUtil;->INTEGER_FORMATTER:Ljava/text/NumberFormat;

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/JavaUtil;->PERCENT_FORMATTER:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeepCompareArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "one":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "two":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-ne p0, p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 459
    :cond_1
    if-nez p0, :cond_2

    .line 460
    if-eqz p1, :cond_0

    move v1, v2

    .line 463
    goto :goto_0

    .line 466
    :cond_2
    if-nez p1, :cond_3

    move v1, v2

    .line 467
    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 471
    goto :goto_0

    .line 474
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 475
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 476
    goto :goto_0

    .line 474
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static EnsureEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 490
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    .line 501
    :goto_0
    return-object v1

    .line 494
    :cond_1
    move-object v1, p0

    .line 496
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "decoded":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 498
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static JSONDateToJavaDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 318
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const/4 v3, 0x0

    .line 337
    :goto_0
    return-object v3

    .line 322
    :cond_0
    const/4 v3, 0x6

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/Date("

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 323
    const/4 v2, 0x6

    .line 324
    .local v2, "startidx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    .local v0, "endidx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+0000)/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x7

    .line 335
    :goto_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "millistr":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 328
    .end local v1    # "millistr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    goto :goto_1

    .line 332
    :cond_2
    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    goto :goto_1
.end method

.method public static JavaDateToJSONDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 8
    .param p0, "javadate"    # Ljava/util/Date;

    .prologue
    .line 341
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 342
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 343
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 344
    .local v2, "ms":J
    const-string v4, "/Date(%d)/"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "rv":Ljava/lang/String;
    return-object v1
.end method

.method public static varargs concatIntArrays([[I)[I
    .locals 8
    .param p0, "arrays"    # [[I

    .prologue
    const/4 v5, 0x0

    .line 434
    if-nez p0, :cond_1

    .line 435
    const/4 v1, 0x0

    .line 450
    :cond_0
    return-object v1

    .line 438
    :cond_1
    const/4 v3, 0x0

    .line 439
    .local v3, "finalSize":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, p0, v4

    .line 440
    .local v0, "a":[I
    array-length v7, v0

    add-int/2addr v3, v7

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "a":[I
    :cond_2
    new-array v1, v3, [I

    .line 444
    .local v1, "destArray":[I
    const/4 v2, 0x0

    .line 445
    .local v2, "destPos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 446
    .restart local v0    # "a":[I
    array-length v7, v0

    invoke-static {v0, v5, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    array-length v7, v0

    add-int/2addr v2, v7

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static concatenateStringsWithDelimiter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "str3"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->concatenateStringsWithDelimiter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenateStringsWithDelimiter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "str3"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "addSpaceBeforeDelimiter"    # Z

    .prologue
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_5

    const-string v1, " "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 267
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_2
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 274
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method public static varargs concatenateStringsWithDelimiter(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "addSpaceBeforeDelimiter"    # Z
    .param p2, "strs"    # [Ljava/lang/String;

    .prologue
    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, " "

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p2

    if-nez v2, :cond_1

    .line 286
    const-string v2, ""

    .line 297
    :goto_1
    return-object v2

    .line 283
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 288
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 289
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 291
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_2
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 297
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static concatenateUrlWithLinkAndParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "link"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 308
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static containsFlag(II)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "flagToCheck"    # I

    .prologue
    .line 251
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertToUTC(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p0, "local"    # Ljava/util/Date;

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "utc":Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 559
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 560
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 561
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 562
    const/16 v3, 0xe

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 563
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 565
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_0
    return-object v2
.end method

.method public static formatInteger(I)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 415
    sget-object v0, Lcom/microsoft/xbox/toolkit/JavaUtil;->INTEGER_FORMATTER:Ljava/text/NumberFormat;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercent(F)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # F

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not between 0 and 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 427
    sget-object v0, Lcom/microsoft/xbox/toolkit/JavaUtil;->PERCENT_FORMATTER:Ljava/text/NumberFormat;

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentStackTraceAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 542
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    .line 543
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 544
    .local v1, "elem":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\n \t "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "elem":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getLocalizedDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const v4, 0x20010

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "name":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getTimeStringMMSS(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeInSeconds"    # J

    .prologue
    .line 148
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPositionInRange(Ljava/util/ArrayList;I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTouchPointInsideView(FFLandroid/view/View;)Z
    .locals 7
    .param p0, "touchRawX"    # F
    .param p1, "touchRawY"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 214
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 215
    .local v0, "coordinates":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 217
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 218
    .local v1, "rect":Landroid/graphics/Rect;
    float-to-int v2, p0

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method public static listIteratorToList(Ljava/util/ListIterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "rv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    return-object v0
.end method

.method public static move(Ljava/util/ArrayList;II)Z
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;II)Z"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .line 517
    .local v2, "ret":Z
    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isPositionInRange(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isPositionInRange(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 519
    .local v0, "dataFrom":Ljava/lang/Object;, "TT;"
    if-ge p1, p2, :cond_0

    .line 520
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 521
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_0
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    if-le v1, p2, :cond_1

    .line 525
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 524
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 529
    const/4 v2, 0x1

    .line 531
    .end local v0    # "dataFrom":Ljava/lang/Object;, "TT;"
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "boolString"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "value":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "hexLong"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const-wide/16 v0, 0x0

    .line 189
    :goto_0
    return-wide v0

    .line 178
    :cond_0
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->parseHexLongExpectHex(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 182
    :cond_1
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "value":J
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static parseHexLongExpectHex(Ljava/lang/String;)J
    .locals 3
    .param p0, "hexLong"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 195
    const-string v2, "0x"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 197
    const-wide/16 v0, 0x0

    .line 199
    .local v0, "value":J
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 204
    :goto_0
    return-wide v0

    .line 200
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static parseInteger(Ljava/lang/String;)I
    .locals 2
    .param p0, "intString"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "value":I
    const/16 v1, 0xa

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static pluralize(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I
    .param p1, "zeroString"    # Ljava/lang/String;
    .param p2, "oneString"    # Ljava/lang/String;
    .param p3, "nString"    # Ljava/lang/String;

    .prologue
    .line 356
    packed-switch p0, :pswitch_data_0

    .line 362
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "zeroString":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p1

    .restart local p1    # "zeroString":Ljava/lang/String;
    :pswitch_1
    move-object p1, p2

    .line 360
    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static randInRange(Ljava/util/Random;II)I
    .locals 1
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 369
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 370
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "to"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 570
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 571
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 572
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 574
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchFieldException;
    move v2, v3

    .line 575
    goto :goto_0

    .line 576
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move v2, v3

    .line 577
    goto :goto_0
.end method

.method public static sleepDebug(J)V
    .locals 0
    .param p0, "ms"    # J

    .prologue
    .line 431
    return-void
.end method

.method public static stringToLower(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringToUpper(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 53
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-eq p0, p1, :cond_0

    .line 61
    invoke-static {p0, p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualNonNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p0, p1, :cond_0

    .line 83
    :goto_0
    return v0

    .line 78
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_1
.end method

.method public static stringsEqualNonNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static stringsEqualNonNullCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 96
    :cond_1
    :goto_0
    return v0

    .line 91
    :cond_2
    if-eq p0, p1, :cond_1

    .line 95
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 95
    goto :goto_1
.end method

.method public static sublistShuffle(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "dstsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;I)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "srcarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 379
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 380
    .local v2, "r":Ljava/util/Random;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v3, "rv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v3

    .line 384
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, p1, :cond_2

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 387
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v2, v0, v6}, Lcom/microsoft/xbox/toolkit/JavaUtil;->randInRange(Ljava/util/Random;II)I

    move-result v4

    .line 388
    .local v4, "swapi":I
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 389
    .local v5, "tmp":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    .end local v0    # "i":I
    .end local v4    # "swapi":I
    .end local v5    # "tmp":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_3

    move v6, v7

    :goto_2
    invoke-static {v6}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 397
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 398
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 399
    .local v1, "index":I
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_3
    move v6, v8

    .line 396
    goto :goto_2

    .line 403
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, p1, :cond_5

    :goto_4
    invoke-static {v7}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    goto :goto_0

    :cond_5
    move v7, v8

    goto :goto_4
.end method

.method public static surroundInQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "booleanString"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 103
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .line 102
    .restart local p1    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static tryParseDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "doubleString"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 127
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 126
    .restart local p1    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static tryParseInteger(Ljava/lang/String;I)I
    .locals 1
    .param p0, "integerString"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 111
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 110
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static tryParseLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "longString"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 117
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 119
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 118
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 223
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method
