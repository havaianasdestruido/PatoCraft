.class public interface abstract Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cache"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public abstract put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method
