.class Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;
.super Ljava/lang/Object;
.source "DialogManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$cancelHandler:Ljava/lang/Runnable;

.field final synthetic val$dialog:Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->val$dialog:Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->val$cancelHandler:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->val$dialog:Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    .line 348
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->val$cancelHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;->val$cancelHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 351
    :cond_0
    return-void
.end method
