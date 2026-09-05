.class public Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
.super Ljava/lang/Object;
.source "TextureBindingOption.java"


# static fields
.field public static final DO_NOT_SCALE:I = -0x1

.field public static final DO_NOT_USE_PLACEHOLDER:I = -0x1

.field public static final DefaultBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public static final DefaultResourceIdForEmpty:I

.field public static final DefaultResourceIdForError:I

.field public static final DefaultResourceIdForLoading:I

.field public static final KeepAsIsBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;


# instance fields
.field public final height:I

.field public final resourceIdForError:I

.field public final resourceIdForLoading:I

.field public final useFileCache:Z

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 8
    const-string v0, "empty"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    .line 9
    const-string v0, "empty"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForEmpty:I

    .line 10
    const-string v0, "error"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->KeepAsIsBindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 22
    sget v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    sget v4, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "resourceForLoading"    # I
    .param p4, "resourceForError"    # I
    .param p5, "useFileCache"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    .line 35
    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    .line 36
    iput p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    .line 37
    iput p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    .line 38
    iput-boolean p5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    .line 39
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "useFileCache"    # Z

    .prologue
    .line 30
    sget v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForLoading:I

    sget v4, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->DefaultResourceIdForError:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    .line 31
    return-void
.end method

.method public static createDoNotScale(IIZ)Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    .locals 6
    .param p0, "resourceForLoading"    # I
    .param p1, "resourceForError"    # I
    .param p2, "useFileCache"    # Z

    .prologue
    const/4 v1, -0x1

    .line 42
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    move v2, v1

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rhsuntyped"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    instance-of v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    if-nez v3, :cond_2

    move v1, v2

    .line 52
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    .line 56
    .local v0, "rhs":Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;
    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    iget v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
