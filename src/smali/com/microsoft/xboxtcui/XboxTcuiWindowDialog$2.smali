.class Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;
.super Ljava/lang/Object;
.source "XboxTcuiWindowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->addCloseButton()V
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
    .line 80
    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$2;->this$0:Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
