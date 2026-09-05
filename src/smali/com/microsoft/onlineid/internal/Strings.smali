.class public Lcom/microsoft/onlineid/internal/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final Utf8Charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "string1"    # Ljava/lang/String;
    .param p1, "string2"    # Ljava/lang/String;

    .prologue
    .line 44
    if-ne p0, p1, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 69
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v2, "output":Ljava/lang/StringBuilder;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 75
    .local v0, "buffer":[C
    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, "length":I
    if-ltz v1, :cond_0

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v1    # "length":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    throw v4

    .restart local v1    # "length":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static pluralize(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # J
    .param p2, "singular"    # Ljava/lang/String;
    .param p3, "plural"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    .end local p2    # "singular":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p2    # "singular":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    goto :goto_0
.end method

.method public static verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "argumentName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method
