.class Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;
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
    .line 102
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->toggle()V

    .line 106
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackMute(Z)V

    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->muteUser()V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {v1}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackMute(Z)V

    .line 112
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->unmuteUser()V

    goto :goto_0
.end method
