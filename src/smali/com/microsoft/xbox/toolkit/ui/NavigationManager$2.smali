.class Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V

    .line 581
    return-void
.end method
