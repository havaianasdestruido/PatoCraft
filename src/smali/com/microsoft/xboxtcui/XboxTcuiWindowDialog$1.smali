.class Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;
.super Ljava/lang/Object;
.source "XboxTcuiWindowDialog.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageNavigated(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 1
    .param p1, "from"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .param p2, "to"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$1;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->dismiss()V

    .line 58
    :cond_0
    return-void
.end method

.method public onPageRestarted(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0
    .param p1, "screen"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 62
    return-void
.end method
