.class Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;
.super Ljava/lang/Object;
.source "XLEManagedDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;->this$0:Lcom/microsoft/xbox/toolkit/XLEManagedDialog;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->OnAnimationOutEnd()V

    .line 46
    return-void
.end method
