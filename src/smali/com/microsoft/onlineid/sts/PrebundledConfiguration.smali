.class public Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
.super Ljava/lang/Object;
.source "PrebundledConfiguration.java"


# static fields
.field private static final ConfigExtension:Ljava/lang/String; = ".xml"

.field private static final DateFormat:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final MaxConfigAge:I = 0x1e

.field private static final TimestampExtension:Ljava/lang/String; = ".timestamp"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _cachedDate:Ljava/util/Date;

.field private _dateRead:Z

.field private final _localFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_dateRead:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_cachedDate:Ljava/util/Date;

    .line 44
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_localFilePath:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_applicationContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private isDateValid()Z
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v0

    .line 55
    .local v0, "configDate":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 59
    .local v1, "oldestAllowedDate":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/16 v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 61
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v2, 0x1

    .line 67
    .end local v1    # "oldestAllowedDate":Ljava/util/Calendar;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 100
    iget-boolean v3, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_dateRead:Z

    if-nez v3, :cond_0

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_dateRead:Z

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_localFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Assets;->readAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "contents":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_cachedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_cachedDate:Ljava/util/Date;

    return-object v3

    .line 117
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading timestamp of bundled configuration at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_localFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getConfigFileStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_localFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->_localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->isDateValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
