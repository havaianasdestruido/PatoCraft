.class public interface abstract Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/util/ErrorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderInfo"
.end annotation


# virtual methods
.method public abstract clearCache(Ljava/lang/Object;)V
.end method

.method public abstract getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract hasCachedData(Ljava/lang/Object;)Z
.end method
