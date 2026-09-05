.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimationPackageNavigationManager.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field public backward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public forward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 2
    .param p1, "type"    # Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    .param p2, "backward"    # Z
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 21
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->backward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;

    .line 23
    .local v0, "direction":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    :goto_0
    if-nez v0, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 27
    :goto_1
    return-object v1

    .line 21
    .end local v0    # "direction":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->forward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;

    goto :goto_0

    .line 27
    .restart local v0    # "direction":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v1

    goto :goto_1
.end method
