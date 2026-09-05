.class public Lcom/microsoft/cll/android/EventCompressor;
.super Ljava/lang/Object;
.source "EventCompressor.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logger:Lcom/microsoft/cll/android/ILogger;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lcom/microsoft/cll/android/ILogger;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "AndroidCll-EventCompressor"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventCompressor;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 22
    return-void
.end method


# virtual methods
.method public compress(Ljava/lang/String;)[B
    .locals 9
    .param p1, "events"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 32
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 33
    .local v3, "input":[B
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    new-array v4, v6, [B

    .line 35
    .local v4, "output":[B
    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 36
    .local v1, "compressor":Ljava/util/zip/Deflater;
    invoke-virtual {v1, v3}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 37
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 39
    .local v0, "compressedDataLength":I
    sget-object v6, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v6}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 40
    iget-object v6, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventCompressor"

    const-string v8, "Compression resulted in a string of at least the max event buffer size of Vortex. Most likely this means we lost part of the string."

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "compressedDataLength":I
    .end local v1    # "compressor":Ljava/util/zip/Deflater;
    .end local v3    # "input":[B
    .end local v4    # "output":[B
    :goto_0
    return-object v5

    .line 44
    .restart local v0    # "compressedDataLength":I
    .restart local v1    # "compressor":Ljava/util/zip/Deflater;
    .restart local v3    # "input":[B
    .restart local v4    # "output":[B
    :cond_0
    const/4 v6, 0x0

    invoke-static {v4, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 45
    .end local v0    # "compressedDataLength":I
    .end local v1    # "compressor":Ljava/util/zip/Deflater;
    .end local v3    # "input":[B
    .end local v4    # "output":[B
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/microsoft/cll/android/EventCompressor;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventCompressor"

    const-string v8, "Could not compress events"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
