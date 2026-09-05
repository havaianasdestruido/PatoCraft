.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
.super Ljava/lang/Object;
.source "TextureManagerScaledNetworkBitmapRequest.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;


# instance fields
.field public final bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhsuntyped"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    instance-of v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    if-nez v3, :cond_2

    move v1, v2

    .line 26
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    .line 30
    .local v0, "rhs":Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getKeyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
