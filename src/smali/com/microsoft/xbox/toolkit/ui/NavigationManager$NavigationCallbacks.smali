.class public interface abstract Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigationCallbacks"
.end annotation


# virtual methods
.method public abstract addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
.end method

.method public abstract onBeforeNavigatingIn()V
.end method

.method public abstract removeContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
.end method

.method public abstract setAnimationBlocking(Z)V
.end method
