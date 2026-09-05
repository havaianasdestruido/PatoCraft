.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;
.super Ljava/lang/Object;
.source "TextureManagerScaledResourceBitmapRequest.java"


# instance fields
.field public final bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 8
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 10
    return-void
.end method

.method public constructor <init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 0
    .param p1, "resourceId"    # I
    .param p2, "option"    # Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    .line 14
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhsuntyped"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    instance-of v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    if-nez v3, :cond_2

    move v1, v2

    .line 24
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    .line 28
    .local v0, "rhs":Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;
    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    return v0
.end method
