.class Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;
.super Ljava/lang/Object;
.source "XLECheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->access$000(Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 105
    return-void
.end method
