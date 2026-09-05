.class Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;
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
    .line 82
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCReportUser;->trackReportDialogOK(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReport(Ljava/lang/String;)V

    .line 87
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
