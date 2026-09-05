.class Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$2;
.super Ljava/lang/Object;
.source "ReportUserScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->onBackButtonPressed()Z

    .line 79
    return-void
.end method
