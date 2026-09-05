.class Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;
.super Ljava/lang/Object;
.source "DialogManagerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

.field final synthetic val$wrappedCancelHandler:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;->val$wrappedCancelHandler:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;->val$wrappedCancelHandler:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method
