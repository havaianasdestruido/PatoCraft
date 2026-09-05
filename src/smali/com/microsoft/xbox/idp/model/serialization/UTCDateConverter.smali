.class public Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;
.super Ljava/lang/Object;
.source "UTCDateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCRoundtripDateConverterJSONDeserializer;,
        Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterShortDateAlternateFormatJSONDeserializer;,
        Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterShortDateFormatJSONDeserializer;,
        Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;
    }
.end annotation


# static fields
.field private static final NO_MS_STRING_LENGTH:I = 0x13

.field private static final TAG:Ljava/lang/String;

.field private static defaultFormatMs:Ljava/text/SimpleDateFormat;

.field private static defaultFormatNoMs:Ljava/text/SimpleDateFormat;

.field private static shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

.field private static shortDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->shortDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static declared-synchronized convert(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v5, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    :goto_0
    monitor-exit v5

    return-object v1

    .line 41
    :cond_0
    :try_start_1
    const-string v4, "Z"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    const-string v4, "Z"

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 47
    .local v3, "timeZone":Ljava/util/TimeZone;
    const-string v4, "+00:00"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 48
    const-string v4, "+00:00"

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x13

    if-ne v4, v6, :cond_6

    const/4 v2, 0x1

    .line 59
    .local v2, "noMsDate":Z
    :goto_2
    if-nez v3, :cond_3

    .line 60
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 65
    :cond_3
    if-eqz v2, :cond_7

    .line 66
    :try_start_2
    sget-object v4, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    sget-object v4, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 68
    .local v1, "localTime":Ljava/util/Date;
    goto :goto_0

    .line 49
    .end local v1    # "localTime":Ljava/util/Date;
    .end local v2    # "noMsDate":Z
    :cond_4
    :try_start_3
    const-string v4, "+01:00"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    const-string v4, "+01:00"

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v4, "GMT+01:00"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    goto :goto_1

    .line 52
    :cond_5
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const-string v4, "([.][0-9]{3})[0-9]*$"

    const-string v6, "$1"

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    goto :goto_1

    .line 56
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 70
    .restart local v2    # "noMsDate":Z
    :cond_7
    :try_start_4
    sget-object v4, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    sget-object v4, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 72
    .restart local v1    # "localTime":Ljava/util/Date;
    goto :goto_0

    .line 74
    .end local v1    # "localTime":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/text/ParseException;
    :try_start_5
    sget-object v4, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 36
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v2    # "noMsDate":Z
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
