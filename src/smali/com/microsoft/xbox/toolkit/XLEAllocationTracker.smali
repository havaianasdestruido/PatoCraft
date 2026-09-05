.class public Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;
.super Ljava/lang/Object;
.source "XLEAllocationTracker.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;


# instance fields
.field private adapterCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    return-object v0
.end method

.method private getTagHash(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public debugDecrement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public debugGetOverallocatedCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public debugGetTotalCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public debugIncrement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public debugPrintOverallocated(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 40
    return-void
.end method
