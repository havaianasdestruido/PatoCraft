.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimationPackageDirection.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field public inAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public outAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
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
.method public compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 2
    .param p1, "type"    # Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 21
    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->inAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;

    .line 23
    .local v0, "anim":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
    :goto_0
    if-nez v0, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 27
    :goto_1
    return-object v1

    .line 21
    .end local v0    # "anim":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->outAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;

    goto :goto_0

    .line 27
    .restart local v0    # "anim":Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v1

    goto :goto_1
.end method
