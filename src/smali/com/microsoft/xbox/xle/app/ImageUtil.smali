.class public Lcom/microsoft/xbox/xle/app/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    }
.end annotation


# static fields
.field public static final LARGE_PHONE:I = 0x280

.field public static final LARGE_TABLET:I = 0x320

.field public static final MEDIUM_PHONE:I = 0x12c

.field public static final MEDIUM_TABLET:I = 0x1a8

.field public static final SMALL:I = 0xc8

.field public static final TINY:I = 0x64

.field public static final resizeFormatter:Ljava/lang/String; = "&w=%d&h=%d&format=png"

.field public static final resizeFormatterSizeOnly:Ljava/lang/String; = "&w=%d&h=%d"

.field public static final resizeFormatterWithPadding:Ljava/lang/String; = "&mode=padding&w=%d&h=%d&format=png"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "result":Ljava/net/URI;
    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static formatString(Ljava/lang/String;II)Ljava/net/URI;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    if-nez p0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 204
    :cond_1
    const-string v3, "images-eds"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    const-string v2, "&w="

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 206
    .local v1, "hasWidth":Z
    const-string v2, "&h="

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 208
    .local v0, "hasHeight":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 209
    const-string v2, "w=[0-9]+"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h=[0-9]+"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto :goto_0

    .line 212
    :cond_2
    if-eqz v1, :cond_3

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w=[0-9]+"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0

    .line 216
    :cond_3
    if-eqz v0, :cond_4

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h=[0-9]+"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0

    .line 220
    :cond_4
    const-string v2, "format="

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&w=%d&h=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0

    .line 223
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&w=%d&h=%d&format=png"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static formatURI(Ljava/net/URI;II)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 186
    if-nez p0, :cond_1

    .line 187
    const/4 p0, 0x0

    .line 194
    .end local p0    # "url":Ljava/net/URI;
    :cond_0
    :goto_0
    return-object p0

    .line 190
    .restart local p0    # "url":Ljava/net/URI;
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 191
    .local v0, "newURI":Ljava/net/URI;
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 194
    goto :goto_0
.end method

.method public static getLarge(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x280

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "uri":Ljava/net/URI;
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {p0, v3, v3}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 170
    :goto_0
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 171
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0

    .line 167
    :cond_1
    invoke-static {p0, v2, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLarge(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    const/16 v2, 0x320

    const/16 v1, 0x280

    .line 154
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0, v2, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v1, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLarge3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    const/16 v0, 0x2d0

    const/16 v1, 0x438

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getLarge3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 178
    const/16 v0, 0x2d0

    const/16 v1, 0x438

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x1a8

    const/16 v2, 0x12c

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "uri":Ljava/net/URI;
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-static {p0, v3, v3}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 123
    :goto_0
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 126
    :cond_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {p0, v2, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMedium(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    const/16 v2, 0x1a8

    const/16 v1, 0x12c

    .line 109
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getIsTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, v2, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v1, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMedium2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    const/16 v0, 0x1e0

    const/16 v1, 0x10e

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 146
    const/16 v0, 0x1e0

    const/16 v1, 0x10e

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 134
    const/16 v0, 0x1aa

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 130
    const/16 v0, 0x1aa

    const/16 v1, 0x280

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    const/16 v0, 0x232

    const/16 v1, 0x13c

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getMedium4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 138
    const/16 v0, 0x232

    const/16 v1, 0x13c

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    .line 77
    invoke-static {p0, v1, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 78
    .local v0, "uri":Ljava/net/URI;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static getSmall(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    const/16 v0, 0xc8

    .line 73
    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v0, 0xf3

    const/16 v1, 0x89

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 101
    const/16 v0, 0xf3

    const/16 v1, 0x89

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    const/16 v0, 0xd7

    const/16 v1, 0x126

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 85
    const/16 v0, 0xd7

    const/16 v1, 0x126

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    const/16 v0, 0x113

    const/16 v1, 0xd8

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getSmall4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 93
    const/16 v0, 0x113

    const/16 v1, 0xd8

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x64

    .line 39
    invoke-static {p0, v1, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 40
    .local v0, "uri":Ljava/net/URI;
    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method

.method public static getTiny(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    const/16 v0, 0x64

    .line 35
    invoke-static {p0, v0, v0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny2X1(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    const/16 v0, 0x96

    const/16 v1, 0x54

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny2X1(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 65
    const/16 v0, 0x96

    const/16 v1, 0x54

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny3X4(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    const/16 v0, 0x55

    const/16 v1, 0x78

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny3X4(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 49
    const/16 v0, 0x55

    const/16 v1, 0x78

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny4X3(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    const/16 v0, 0x78

    const/16 v1, 0x5a

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getTiny4X3(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;

    .prologue
    .line 57
    const/16 v0, 0x78

    const/16 v1, 0x5a

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getURI(Ljava/lang/String;II)Ljava/net/URI;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "heigth"    # I

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatString(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 27
    .local v0, "uri":Ljava/net/URI;
    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->createUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 31
    :cond_0
    return-object v0
.end method

.method public static getURI(Ljava/net/URI;II)Ljava/net/URI;
    .locals 1
    .param p0, "url"    # Ljava/net/URI;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->formatURI(Ljava/net/URI;II)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imgType"    # Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$1;->$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_4
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_5
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_6
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_7
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_8
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium4X3(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_a
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge3X4(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getUri(Ljava/net/URI;Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URI;
    .param p1, "imgType"    # Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$1;->$SwitchMap$com$microsoft$xbox$xle$app$ImageUtil$ImageType:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 280
    :pswitch_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_1
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getTiny4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_3
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_4
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_5
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_6
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_7
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_8
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium4X3(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_9
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_a
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getLarge3X4(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getSmall(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
