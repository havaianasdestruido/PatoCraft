.class public Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .param p3, "resultKey"    # Ljava/lang/Object;
    .param p5, "gson"    # Lcom/google/gson/Gson;
    .param p6, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .param p4, "httpCall"    # Lcom/microsoft/xbox/idp/util/HttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    .local p1, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Z

    move-result v0

    return v0
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    .local p1, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<TT;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->release()V

    .line 33
    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader<TT;>;"
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method
