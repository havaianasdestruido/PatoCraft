.class Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;
.super Ljava/io/FileOutputStream;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedFileOutputStreamItem"
.end annotation


# instance fields
.field private destFile:Ljava/io/File;

.field private mDigest:Ljava/security/MessageDigest;

.field private startDigest:Z

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private writeMd5Finished:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V
    .locals 5
    .param p2, "key"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 221
    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 217
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    .line 218
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    .line 222
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->destFile:Ljava/io/File;

    .line 224
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 225
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-interface {p2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 230
    .local v1, "urlOrSomething":[B
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeInt(I)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write([B)V

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    .line 234
    return-void

    .line 226
    .end local v1    # "urlOrSomething":[B
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File digest failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    .line 259
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    .line 260
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    .line 261
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    .line 262
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    if-nez v2, :cond_0

    .line 240
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    .line 241
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->destFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v1, "raf":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 243
    .local v0, "md5Hash":[B
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 244
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 245
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 247
    .end local v0    # "md5Hash":[B
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 252
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 255
    :cond_0
    return-void
.end method
