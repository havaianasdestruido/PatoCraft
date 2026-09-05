.class public final enum Lcom/microsoft/onlineid/internal/ui/Mimetype;
.super Ljava/lang/Enum;
.source "Mimetype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ui/Mimetype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum CSS:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum JAVASCRIPT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum PNG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field public static final enum SVG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

.field private static final _map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/ui/Mimetype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _mimetype:Ljava/lang/String;

.field private final _suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 6
    new-instance v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "JAVASCRIPT"

    const-string v4, ".js"

    const-string v5, "application/javascript"

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->JAVASCRIPT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 7
    new-instance v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "PNG"

    const-string v4, ".png"

    const-string v5, "image/png"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->PNG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 8
    new-instance v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "SVG"

    const-string v4, ".svg"

    const-string v5, "image/svg+xml"

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->SVG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 9
    new-instance v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "CSS"

    const-string v4, ".css"

    const-string v5, "text/css"

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->CSS:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 10
    new-instance v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    const-string v3, "FONT"

    const-string v4, ".woff"

    const-string v5, "application/x-font-woff"

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/microsoft/onlineid/internal/ui/Mimetype;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 5
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/microsoft/onlineid/internal/ui/Mimetype;

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->JAVASCRIPT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v3, v2, v1

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->PNG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v3, v2, v6

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->SVG:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v3, v2, v7

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->CSS:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v3, v2, v8

    sget-object v3, Lcom/microsoft/onlineid/internal/ui/Mimetype;->FONT:Lcom/microsoft/onlineid/internal/ui/Mimetype;

    aput-object v3, v2, v9

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    .line 18
    invoke-static {}, Lcom/microsoft/onlineid/internal/ui/Mimetype;->values()[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    move-result-object v2

    array-length v3, v2

    .local v0, "mimetype":Lcom/microsoft/onlineid/internal/ui/Mimetype;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 20
    sget-object v4, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_suffix:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_suffix:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_mimetype:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static findFromFilename(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 40
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 41
    .local v0, "suffixPosition":I
    sget-object v1, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    .line 44
    .end local v0    # "suffixPosition":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/Mimetype;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Mimetype;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/Mimetype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/Mimetype;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/Mimetype;->_mimetype:Ljava/lang/String;

    return-object v0
.end method
