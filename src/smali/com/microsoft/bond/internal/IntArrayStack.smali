.class public Lcom/microsoft/bond/internal/IntArrayStack;
.super Ljava/lang/Object;
.source "IntArrayStack.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20


# instance fields
.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/microsoft/bond/internal/IntArrayStack;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    .line 19
    return-void
.end method

.method private ensureExtraCapacity(I)V
    .locals 5
    .param p1, "extraByteSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 41
    iget v2, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    add-int v1, v2, p1

    .line 42
    .local v1, "requiredSize":I
    iget-object v2, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 43
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [I

    .line 44
    .local v0, "newValues":[I
    iget-object v2, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    iget-object v3, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    .line 47
    .end local v0    # "newValues":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    .line 55
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    .line 23
    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    iget v1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public push(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/internal/IntArrayStack;->ensureExtraCapacity(I)V

    .line 28
    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    iget v1, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    aput p1, v0, v1

    .line 29
    iget v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->size:I

    .line 30
    return-void
.end method

.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/microsoft/bond/internal/IntArrayStack;->values:[I

    aput p2, v0, p1

    .line 38
    return-void
.end method
