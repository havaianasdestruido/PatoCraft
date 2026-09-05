.class public Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;
.super Ljava/lang/Object;
.source "XLEURIArg.java"


# instance fields
.field private final errorResourceId:I

.field private final loadingResourceId:I

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;II)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "loadingResourceId"    # I
    .param p3, "errorResourceId"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    .line 12
    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    .line 13
    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    instance-of v3, p1, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    .line 48
    .local v0, "other":Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;
    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    if-ne v3, v4, :cond_0

    .line 51
    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    if-ne v3, v4, :cond_0

    .line 54
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getErrorResourceId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    return v0
.end method

.method public getLoadingResourceId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    return v0
.end method

.method public getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 33
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    iget v4, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    .line 60
    .local v0, "hash":I
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->loadingResourceId:I

    add-int/lit8 v0, v1, 0xd

    .line 61
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->errorResourceId:I

    add-int v0, v1, v2

    .line 62
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    if-eqz v1, :cond_0

    .line 63
    mul-int/lit8 v1, v0, 0x17

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 65
    :cond_0
    return v0
.end method
