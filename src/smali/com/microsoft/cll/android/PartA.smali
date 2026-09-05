.class public abstract Lcom/microsoft/cll/android/PartA;
.super Ljava/lang/Object;
.source "PartA.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected final appExt:Lcom/microsoft/telemetry/extensions/app;

.field protected appId:Ljava/lang/String;

.field protected appVer:Ljava/lang/String;

.field private correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

.field private final csVer:Ljava/lang/String;

.field protected final deviceExt:Lcom/microsoft/telemetry/extensions/device;

.field private epoch:J

.field private flags:J

.field private final hexArray:[C

.field protected final iKey:Ljava/lang/String;

.field protected final logger:Lcom/microsoft/cll/android/ILogger;

.field protected final osExt:Lcom/microsoft/telemetry/extensions/os;

.field protected osName:Ljava/lang/String;

.field protected osVer:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private final salt:Ljava/lang/String;

.field protected final seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private serializer:Lcom/microsoft/cll/android/EventSerializer;

.field protected uniqueId:Ljava/lang/String;

.field private useLegacyCS:Z

.field protected final userExt:Lcom/microsoft/telemetry/extensions/user;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;Ljava/lang/String;Lcom/microsoft/cll/android/CorrelationVector;)V
    .locals 4
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p2, "iKey"    # Ljava/lang/String;
    .param p3, "correlationVector"    # Lcom/microsoft/cll/android/CorrelationVector;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->csVer:Ljava/lang/String;

    .line 47
    const-string v0, "AndroidCll-PartA"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n"

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->salt:Ljava/lang/String;

    .line 49
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->hexArray:[C

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    .line 68
    iput-object p1, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 69
    iput-object p2, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    new-instance v0, Lcom/microsoft/cll/android/EventSerializer;

    invoke-direct {v0, p1}, Lcom/microsoft/cll/android/EventSerializer;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    .line 74
    new-instance v0, Lcom/microsoft/telemetry/extensions/user;

    invoke-direct {v0}, Lcom/microsoft/telemetry/extensions/user;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    .line 75
    new-instance v0, Lcom/microsoft/telemetry/extensions/device;

    invoke-direct {v0}, Lcom/microsoft/telemetry/extensions/device;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    .line 76
    new-instance v0, Lcom/microsoft/telemetry/extensions/os;

    invoke-direct {v0}, Lcom/microsoft/telemetry/extensions/os;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    .line 77
    new-instance v0, Lcom/microsoft/telemetry/extensions/app;

    invoke-direct {v0}, Lcom/microsoft/telemetry/extensions/app;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    .line 79
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/PartA;->random:Ljava/util/Random;

    .line 80
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    .line 81
    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 255
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 256
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 257
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 258
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/microsoft/cll/android/PartA;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 259
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/microsoft/cll/android/PartA;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private createExtensions(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/telemetry/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 267
    .local v1, "extensions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/microsoft/telemetry/Extension;>;"
    const-string v2, "user"

    iget-object v3, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "os"

    iget-object v3, p0, Lcom/microsoft/cll/android/PartA;->osExt:Lcom/microsoft/telemetry/extensions/os;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v2, "device"

    iget-object v3, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Lcom/microsoft/telemetry/extensions/android;

    invoke-direct {v0}, Lcom/microsoft/telemetry/extensions/android;-><init>()V

    .line 272
    .local v0, "androidExt":Lcom/microsoft/telemetry/extensions/android;
    const-string v2, "3.160623.0"

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/extensions/android;->setLibVer(Ljava/lang/String;)V

    .line 273
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/extensions/android;->setTickets(Ljava/util/List;)V

    .line 278
    :cond_0
    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v2}, Lcom/microsoft/telemetry/extensions/app;->getExpId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v2}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 282
    :cond_1
    const-string v2, "app"

    iget-object v3, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2
    return-object v1
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 396
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 398
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J
    .locals 6
    .param p1, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p2, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    const-wide/16 v2, 0x0

    .line 430
    .local v2, "flags":J
    if-eqz p3, :cond_1

    .line 432
    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 436
    .local v0, "curSensitivity":Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    sget-object v4, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-eq v0, v4, :cond_0

    .line 438
    iget v4, v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->id:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    goto :goto_0

    .line 443
    .end local v0    # "curSensitivity":Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    :cond_1
    iget v1, p1, Lcom/microsoft/cll/android/EventEnums$Latency;->id:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 446
    iget v1, p2, Lcom/microsoft/cll/android/EventEnums$Persistence;->id:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 448
    return-wide v2
.end method

.method private getHighestSensitivityLevel(Ljava/util/EnumSet;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 376
    .local v0, "level":Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    goto :goto_0
.end method

.method private getSeqNum(Ljava/util/EnumSet;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-wide/16 v0, 0x0

    .line 465
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->seqCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    goto :goto_0
.end method

.method private populateSerializedEvent(Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;DLjava/lang/String;)Lcom/microsoft/cll/android/SerializedEvent;
    .locals 2
    .param p1, "eventData"    # Ljava/lang/String;
    .param p2, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p3, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p4, "sampleRate"    # D
    .param p6, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 470
    new-instance v0, Lcom/microsoft/cll/android/SerializedEvent;

    invoke-direct {v0}, Lcom/microsoft/cll/android/SerializedEvent;-><init>()V

    .line 471
    .local v0, "event":Lcom/microsoft/cll/android/SerializedEvent;
    invoke-virtual {v0, p1}, Lcom/microsoft/cll/android/SerializedEvent;->setSerializedData(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p4, p5}, Lcom/microsoft/cll/android/SerializedEvent;->setSampleRate(D)V

    .line 473
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/SerializedEvent;->setDeviceId(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p3}, Lcom/microsoft/cll/android/SerializedEvent;->setPersistence(Lcom/microsoft/cll/android/EventEnums$Persistence;)V

    .line 475
    invoke-virtual {v0, p2}, Lcom/microsoft/cll/android/SerializedEvent;->setLatency(Lcom/microsoft/cll/android/EventEnums$Latency;)V

    .line 476
    return-object v0
.end method

.method private scrubPII(Lcom/microsoft/telemetry/Envelope;Ljava/util/EnumSet;)V
    .locals 13
    .param p1, "envelope"    # Lcom/microsoft/telemetry/Envelope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Envelope;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    const/4 v12, 0x0

    .line 290
    if-nez p2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/cll/android/PartA;->getHighestSensitivityLevel(Ljava/util/EnumSet;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    move-result-object v2

    .line 297
    .local v2, "level":Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    sget-object v7, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-eq v2, v7, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "user"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/telemetry/extensions/user;

    .line 304
    .local v6, "userExtensionFromEnvelope":Lcom/microsoft/telemetry/extensions/user;
    new-instance v5, Lcom/microsoft/telemetry/extensions/user;

    invoke-direct {v5}, Lcom/microsoft/telemetry/extensions/user;-><init>()V

    .line 305
    .local v5, "newUserExtension":Lcom/microsoft/telemetry/extensions/user;
    invoke-virtual {v6}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v6}, Lcom/microsoft/telemetry/extensions/user;->getAuthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/microsoft/telemetry/extensions/user;->setAuthId(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v6}, Lcom/microsoft/telemetry/extensions/user;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/microsoft/telemetry/extensions/user;->setId(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v6}, Lcom/microsoft/telemetry/extensions/user;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/microsoft/telemetry/extensions/user;->setVer(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "user"

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "device"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/telemetry/extensions/device;

    .line 312
    .local v1, "deviceExtensionFromEnvelope":Lcom/microsoft/telemetry/extensions/device;
    new-instance v4, Lcom/microsoft/telemetry/extensions/device;

    invoke-direct {v4}, Lcom/microsoft/telemetry/extensions/device;-><init>()V

    .line 313
    .local v4, "newDeviceExtension":Lcom/microsoft/telemetry/extensions/device;
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setVer(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setId(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getAuthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setAuthId(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getAuthSecId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setAuthSecId(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Lcom/microsoft/telemetry/extensions/device;->getDeviceClass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/microsoft/telemetry/extensions/device;->setDeviceClass(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "device"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 324
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/telemetry/extensions/app;

    .line 325
    .local v0, "appExtensionFromEnvelope":Lcom/microsoft/telemetry/extensions/app;
    new-instance v3, Lcom/microsoft/telemetry/extensions/app;

    invoke-direct {v3}, Lcom/microsoft/telemetry/extensions/app;-><init>()V

    .line 326
    .local v3, "newAppExtension":Lcom/microsoft/telemetry/extensions/app;
    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getExpId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/microsoft/telemetry/extensions/app;->setExpId(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v0    # "appExtensionFromEnvelope":Lcom/microsoft/telemetry/extensions/app;
    .end local v3    # "newAppExtension":Lcom/microsoft/telemetry/extensions/app;
    :cond_2
    sget-object v7, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-ne v2, v7, :cond_5

    .line 334
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "user"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {v7, v12}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "device"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/device;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "r:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/microsoft/cll/android/PartA;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v7, v12}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    .line 344
    :cond_3
    iget-object v7, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean v7, v7, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz v7, :cond_4

    .line 346
    invoke-virtual {p1, v12}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    .line 349
    :cond_4
    invoke-virtual {p1, v12}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    .line 350
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/microsoft/telemetry/Envelope;->setSeqNum(J)V

    goto/16 :goto_0

    .line 352
    :cond_5
    sget-object v7, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    if-ne v2, v7, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "user"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/user;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "d:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v8

    const-string v10, "user"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {v8}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/telemetry/extensions/user;->setLocalId(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "device"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/device;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "d:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v8

    const-string v10, "device"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v8}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/telemetry/extensions/device;->setLocalId(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 359
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v7

    const-string v8, "app"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/telemetry/extensions/app;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "d:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getExt()Ljava/util/Map;

    move-result-object v8

    const-string v10, "app"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v8}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    .line 363
    :cond_6
    iget-object v7, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean v7, v7, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz v7, :cond_7

    .line 364
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getCV()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    .line 367
    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/telemetry/Envelope;->getEpoch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/microsoft/cll/android/PartA;->HashStringSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setBaseType(Lcom/microsoft/telemetry/Base;)V
    .locals 6
    .param p1, "base"    # Lcom/microsoft/telemetry/Base;

    .prologue
    .line 410
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/microsoft/telemetry/Data;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/telemetry/Data;->getBaseData()Lcom/microsoft/telemetry/Domain;

    move-result-object v3

    iget-object v1, v3, Lcom/microsoft/telemetry/Domain;->QualifiedName:Ljava/lang/String;

    .line 411
    .local v1, "baseType":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/microsoft/telemetry/Base;->setBaseType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "baseType":Ljava/lang/String;
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/ClassCastException;
    iget-object v3, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v4, "AndroidCll-PartA"

    const-string v5, "This event doesn\'t extend data"

    invoke-interface {v3, v4, v5}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected HashStringSha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 215
    const-string v3, ""

    .line 234
    :goto_0
    return-object v3

    .line 221
    :cond_0
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 222
    .local v1, "hash":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 224
    const-string v3, "oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 225
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 226
    .local v2, "hashed":[B
    invoke-direct {p0, v2}, Lcom/microsoft/cll/android/PartA;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 228
    .end local v1    # "hash":Ljava/security/MessageDigest;
    .end local v2    # "hashed":[B
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 234
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected abstract PopulateConstantValues()V
.end method

.method getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v0}, Lcom/microsoft/telemetry/extensions/app;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populate(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/cll/android/SerializedEvent;
    .locals 21
    .param p1, "base"    # Lcom/microsoft/telemetry/Base;
    .param p2, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p3, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p5, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/cll/android/SerializedEvent;"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p2}, Lcom/microsoft/cll/android/SettingsStore;->getLatencyForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Latency;)Lcom/microsoft/cll/android/EventEnums$Latency;

    move-result-object v7

    .line 91
    .local v7, "eventLatency":Lcom/microsoft/cll/android/EventEnums$Latency;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/microsoft/cll/android/SettingsStore;->getPersistenceForEvent(Lcom/microsoft/telemetry/Base;Lcom/microsoft/cll/android/EventEnums$Persistence;)Lcom/microsoft/cll/android/EventEnums$Persistence;

    move-result-object v8

    .line 92
    .local v8, "eventPersistence":Lcom/microsoft/cll/android/EventEnums$Persistence;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/microsoft/cll/android/SettingsStore;->getSensitivityForEvent(Lcom/microsoft/telemetry/Base;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v9

    .line 93
    .local v9, "eventSensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore;->getSampleRateForEvent(Lcom/microsoft/telemetry/Base;D)D

    move-result-wide v10

    .line 95
    .local v10, "eventSampleRate":D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    if-eqz v4, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Lcom/microsoft/cll/android/PartA;->populateLegacyEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/cs2/Envelope;

    move-result-object v19

    .line 98
    .local v19, "envelope":Lcom/microsoft/telemetry/cs2/Envelope;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v19 .. v19}, Lcom/microsoft/telemetry/cs2/Envelope;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, p0

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v18}, Lcom/microsoft/cll/android/PartA;->populateSerializedEvent(Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;DLjava/lang/String;)Lcom/microsoft/cll/android/SerializedEvent;

    move-result-object v4

    .line 103
    .end local v19    # "envelope":Lcom/microsoft/telemetry/cs2/Envelope;
    :goto_0
    return-object v4

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    invoke-virtual {v4}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Lcom/microsoft/cll/android/PartA;->populateEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/Envelope;

    move-result-object v19

    .line 103
    .local v19, "envelope":Lcom/microsoft/telemetry/Envelope;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/cll/android/PartA;->serializer:Lcom/microsoft/cll/android/EventSerializer;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/microsoft/cll/android/EventSerializer;->serialize(Lcom/microsoft/telemetry/IJsonSerializable;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v4}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, p0

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v18}, Lcom/microsoft/cll/android/PartA;->populateSerializedEvent(Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;DLjava/lang/String;)Lcom/microsoft/cll/android/SerializedEvent;

    move-result-object v4

    goto :goto_0
.end method

.method public populateEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/Envelope;
    .locals 4
    .param p1, "base"    # Lcom/microsoft/telemetry/Base;
    .param p2, "cV"    # Ljava/lang/String;
    .param p3, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p4, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p6, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/telemetry/Envelope;"
        }
    .end annotation

    .prologue
    .line 109
    .local p5, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/microsoft/telemetry/Envelope;

    invoke-direct {v0}, Lcom/microsoft/telemetry/Envelope;-><init>()V

    .line 110
    .local v0, "envelope":Lcom/microsoft/telemetry/Envelope;
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/PartA;->setBaseType(Lcom/microsoft/telemetry/Base;)V

    .line 111
    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setVer(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/microsoft/cll/android/PartA;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setTime(Ljava/lang/String;)V

    .line 113
    iget-object v1, p1, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p6, p7}, Lcom/microsoft/telemetry/Envelope;->setPopSample(D)V

    .line 115
    iget-wide v2, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setEpoch(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p5}, Lcom/microsoft/cll/android/PartA;->getSeqNum(Ljava/util/EnumSet;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/telemetry/Envelope;->setSeqNum(J)V

    .line 117
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setOs(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setOsVer(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/Envelope;->setData(Lcom/microsoft/telemetry/Base;)V

    .line 120
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setAppId(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->appVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setAppVer(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean v1, v1, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0, p2}, Lcom/microsoft/telemetry/Envelope;->setCV(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-direct {p0, p3, p4, p5}, Lcom/microsoft/cll/android/PartA;->getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/telemetry/Envelope;->setFlags(J)V

    .line 129
    iget-object v1, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setIKey(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p8}, Lcom/microsoft/cll/android/PartA;->createExtensions(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/Envelope;->setExt(Ljava/util/Map;)V

    .line 132
    invoke-direct {p0, v0, p5}, Lcom/microsoft/cll/android/PartA;->scrubPII(Lcom/microsoft/telemetry/Envelope;Ljava/util/EnumSet;)V

    .line 133
    return-object v0
.end method

.method public populateLegacyEnvelope(Lcom/microsoft/telemetry/Base;Ljava/lang/String;Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;DLjava/util/List;)Lcom/microsoft/telemetry/cs2/Envelope;
    .locals 6
    .param p1, "base"    # Lcom/microsoft/telemetry/Base;
    .param p2, "cV"    # Ljava/lang/String;
    .param p3, "latency"    # Lcom/microsoft/cll/android/EventEnums$Latency;
    .param p4, "persistence"    # Lcom/microsoft/cll/android/EventEnums$Persistence;
    .param p6, "sampleRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/telemetry/Base;",
            "Ljava/lang/String;",
            "Lcom/microsoft/cll/android/EventEnums$Latency;",
            "Lcom/microsoft/cll/android/EventEnums$Persistence;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/telemetry/cs2/Envelope;"
        }
    .end annotation

    .prologue
    .line 138
    .local p5, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    .local p8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->correlationVector:Lcom/microsoft/cll/android/CorrelationVector;

    iget-boolean v2, v2, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "cV"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    new-instance v0, Lcom/microsoft/telemetry/cs2/Envelope;

    invoke-direct {v0}, Lcom/microsoft/telemetry/cs2/Envelope;-><init>()V

    .line 146
    .local v0, "envelope":Lcom/microsoft/telemetry/cs2/Envelope;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setVer(I)V

    .line 147
    invoke-direct {p0}, Lcom/microsoft/cll/android/PartA;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setTime(Ljava/lang/String;)V

    .line 148
    iget-object v2, p1, Lcom/microsoft/telemetry/Base;->QualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p6, p7}, Lcom/microsoft/telemetry/cs2/Envelope;->setSampleRate(D)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/microsoft/cll/android/PartA;->epoch:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p5}, Lcom/microsoft/cll/android/PartA;->getSeqNum(Ljava/util/EnumSet;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setSeq(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->osName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setOs(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setOsVer(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/cs2/Envelope;->setData(Lcom/microsoft/telemetry/Base;)V

    .line 154
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setAppId(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setAppVer(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/microsoft/telemetry/cs2/Envelope;->setTags(Ljava/util/Map;)V

    .line 157
    invoke-direct {p0, p3, p4, p5}, Lcom/microsoft/cll/android/PartA;->getFlags(Lcom/microsoft/cll/android/EventEnums$Latency;Lcom/microsoft/cll/android/EventEnums$Persistence;Ljava/util/EnumSet;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/telemetry/cs2/Envelope;->setFlags(J)V

    .line 158
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->iKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setIKey(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->userExt:Lcom/microsoft/telemetry/extensions/user;

    invoke-virtual {v2}, Lcom/microsoft/telemetry/extensions/user;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setUserId(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->deviceExt:Lcom/microsoft/telemetry/extensions/device;

    invoke-virtual {v2}, Lcom/microsoft/telemetry/extensions/device;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/telemetry/cs2/Envelope;->setDeviceId(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method protected abstract setAppInfo()V
.end method

.method setAppUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 169
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v2, v3}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v2, "^((c:)|(i:)|(w:)).*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 175
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v2, v3}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v3, "AndroidCll-PartA"

    const-string v4, "The userId supplied does not match the required format which requires the appId to start with \'c:\', \'i:\', or \'w:\'."

    invoke-interface {v2, v3, v4}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v2, p1}, Lcom/microsoft/telemetry/extensions/app;->setUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract setDeviceInfo()V
.end method

.method protected setExpId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/microsoft/cll/android/PartA;->appExt:Lcom/microsoft/telemetry/extensions/app;

    invoke-virtual {v0, p1}, Lcom/microsoft/telemetry/extensions/app;->setExpId(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected abstract setOs()V
.end method

.method protected abstract setUserId()V
.end method

.method useLegacyCS(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/microsoft/cll/android/PartA;->useLegacyCS:Z

    .line 199
    return-void
.end method
