.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;
.super Ljava/lang/Object;
.source "XLEAnimationPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

.field final synthetic val$this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->val$this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;->this$1:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->access$000(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V

    .line 25
    return-void
.end method
