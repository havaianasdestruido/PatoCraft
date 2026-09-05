.class Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
.super Ljava/lang/Object;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedFileInputStreamItem"
.end annotation


# instance fields
.field private computedMd5:[B

.field private contentInputStream:Ljava/io/InputStream;

.field private mDigest:Ljava/security/MessageDigest;

.field private savedMd5:[B

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V
    .locals 11
    .param p2, "key"    # Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 158
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v7, "wrappedFileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 161
    .local v4, "keyLength":I
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    iput-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 162
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    .line 163
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 164
    .local v5, "length":I
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 165
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 166
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Ddigest lengh check failed!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v5    # "length":I
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 178
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File digest failed! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 169
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "length":I
    :cond_0
    :try_start_1
    invoke-static {v7}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->access$000(Ljava/io/InputStream;)I

    move-result v4

    .line 170
    new-array v1, v4, [B

    .line 171
    .local v1, "cacheItemKey":[B
    invoke-virtual {v7, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 172
    .local v6, "readKeyLength":I
    if-ne v4, v6, :cond_1

    invoke-interface {p2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 173
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 174
    new-instance v8, Ljava/io/IOException;

    const-string v9, "File key check failed because keyLength != readKeyLength or !key.getKeyString().equals(new String(urlOrSomething))"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .end local v1    # "cacheItemKey":[B
    .end local v5    # "length":I
    .end local v6    # "readKeyLength":I
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 181
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File digest failed! Out of memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "cacheItemKey":[B
    .restart local v5    # "length":I
    .restart local v6    # "readKeyLength":I
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v7}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 186
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 188
    .local v2, "content":[B
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 189
    iget-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    iput-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    .line 190
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->isMd5Error()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 192
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "the saved md5 is not equal computed md5.ComputedMd5:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "     SavedMd5:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 195
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->contentInputStream:Ljava/io/InputStream;

    .line 196
    return-void
.end method

.method private isMd5Error()Z
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 208
    :goto_1
    return v1

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->contentInputStream:Ljava/io/InputStream;

    return-object v0
.end method
