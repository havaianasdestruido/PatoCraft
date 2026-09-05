.class public final Lcom/microsoft/bond/internal/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# static fields
.field public static final UTF16:Ljava/nio/charset/Charset;

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    .line 8
    const-string v0, "utf-16le"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static decodeFromUtf16([BII)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 23
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decodeFromUtf8([BII)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 15
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static encodeToUtf16(Ljava/lang/String;)[B
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF16:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeToUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/bond/internal/StringHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
