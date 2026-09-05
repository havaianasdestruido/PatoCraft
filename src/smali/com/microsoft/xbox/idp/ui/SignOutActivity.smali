.class public Lcom/microsoft/xbox/idp/ui/SignOutActivity;
.super Lcom/microsoft/xbox/idp/ui/AuthActivity;
.source "SignOutActivity.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/SignOutFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;,
        Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    }
.end annotation


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

.field private status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;-><init>()V

    .line 27
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-void
.end method

.method private finishWithResult()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishCompat()V

    .line 92
    return-void
.end method

.method private showBodyFragment(Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "task"    # Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    .param p2, "bodyFragment"    # Landroid/app/Fragment;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "showHeader"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    iput-object p1, v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    .line 96
    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 97
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 59
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    .line 60
    return-void
.end method

.method public onClickCloseHeader()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 66
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    .line 67
    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;

    .prologue
    .line 71
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: StartSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$1;->$SwitchMap$com$microsoft$xbox$idp$ui$SignOutFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 74
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 75
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackSignout(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 80
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    goto :goto_0

    .line 83
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 84
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->finishWithResult()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_auth_flow:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->setContentView(I)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    .line 36
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/SignOutFragment;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/ui/SignOutFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "KEY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 46
    invoke-super {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onDestroy()V

    .line 47
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity;->state:Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    return-void
.end method
