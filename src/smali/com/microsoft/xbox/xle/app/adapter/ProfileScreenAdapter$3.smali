.class Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;
.super Ljava/lang/Object;
.source "ProfileScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->toggle()V

    .line 123
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackBlock()V

    .line 126
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->blockUser()V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackUnblock()V

    .line 129
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->unblockUser()V

    goto :goto_0
.end method
