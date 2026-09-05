.class public Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.super Lcom/microsoft/xbox/idp/ui/AuthActivity;
.source "AuthFlowActivity.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/SignUpFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;,
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;,
        Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    }
.end annotation


# static fields
.field public static final ARG_ALT_BUTTON_TEXT:Ljava/lang/String; = "ARG_ALT_BUTTON_TEXT"

.field public static final ARG_LOG_IN_BUTTON_TEXT:Ljava/lang/String; = "ARG_LOG_IN_BUTTON_TEXT"

.field public static final ARG_SECURITY_POLICY:Ljava/lang/String; = "ARG_SECURITY_POLICY"

.field public static final ARG_SECURITY_SCOPE:Ljava/lang/String; = "ARG_SECURITY_SCOPE"

.field public static final ARG_USER_PTR:Ljava/lang/String; = "ARG_USER_PTR"

.field public static final EXTRA_CID:Ljava/lang/String; = "EXTRA_CID"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field public static final RESULT_PROVIDER_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

.field private stateSaved:Z

.field private status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;-><init>()V

    .line 52
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
    .param p1, "x1"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .param p2, "x2"    # Landroid/app/Fragment;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    return-object v0
.end method

.method private finishWithResult()V
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v1, v2, :cond_1

    .line 474
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_CID"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->toActivityResult(Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 477
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishCompat()V

    .line 494
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 481
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$9;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setStaticCallbacks(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;)V
    .locals 0
    .param p0, "staticCallbacks"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    .prologue
    .line 469
    sput-object p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    .line 470
    return-void
.end method

.method private showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "task"    # Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .param p2, "bodyFragment"    # Landroid/app/Fragment;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "showHeader"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p1, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    .line 498
    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 499
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 127
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 128
    return-void
.end method

.method public onClickCloseHeader()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AuthFlowActivity$Task:[I

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 150
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 151
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 153
    :goto_0
    :pswitch_0
    return-void

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCUser;->trackCancel(Ljava/lang/CharSequence;)V

    .line 139
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 140
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;
    .param p2, "result"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    .prologue
    .line 245
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: AccountProvisioningFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$AccountProvisioningFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$3;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 264
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 265
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 268
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 269
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;

    .prologue
    .line 387
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: IntroducingFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$IntroducingFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 390
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 391
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 394
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 395
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 398
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 399
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;

    .prologue
    .line 332
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: SignUpFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$SignUpFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$5;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 362
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 363
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 366
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 367
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$6;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .prologue
    .line 406
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWithStatus: WelcomeFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$WelcomeFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 409
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->NO_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 410
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 413
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 414
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 417
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 418
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 421
    :pswitch_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$7;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;

    .prologue
    .line 276
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$EventInitializationFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 278
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 279
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$4;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 320
    .end local v0    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 321
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 324
    :pswitch_2
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 325
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/FinishSignInFragment$Status;

    .prologue
    .line 438
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: FinishSignInFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 440
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 441
    return-void
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .locals 4
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 186
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete: MSAFragment.Status."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$MSAFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object p2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "ARG_RPS_TICKET"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "ARG_USER_PTR"

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackXBLSigninStart(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v2, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 198
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 199
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 202
    :pswitch_2
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 203
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;

    .prologue
    .line 157
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

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

    .line 158
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$StartSignInFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$1;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 175
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 178
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 179
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .param p2, "authFlowResult"    # Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .param p3, "createAccount"    # Z

    .prologue
    .line 210
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: XBLoginFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLoginFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean p3, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    .line 214
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$2;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 233
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 236
    :pswitch_2
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 237
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onComplete(Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;

    .prologue
    .line 445
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete: XBLogoutFragment.Status."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$10;->$SwitchMap$com$microsoft$xbox$idp$ui$XBLogoutFragment$Status:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/ui/XBLogoutFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$8;-><init>(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 461
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v1, "Should not be here! Cancelling auth flow."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 463
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v2, Lcom/microsoft/xbox/idp/R$layout;->xbid_activity_auth_flow:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setContentView(I)V

    .line 60
    if-nez p1, :cond_2

    .line 61
    new-instance v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    .line 62
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 64
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "Intent has no extras"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v2, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 66
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->finishWithResult()V

    .line 86
    .end local v1    # "extras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 70
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ARG_USER_PTR"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "No user pointer, non-native activity mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-boolean v6, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    .line 75
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    .line 76
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/StartSignInFragment;-><init>()V

    invoke-direct {p0, v2, v3, v0, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->TAG:Ljava/lang/String;

    const-string v3, "User pointer present, native activity mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    .line 80
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    new-instance v3, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    const-string v4, "ARG_USER_PTR"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;-><init>(J)V

    iput-object v3, v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    .line 81
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment;-><init>()V

    invoke-direct {p0, v2, v3, v0, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->showBodyFragment(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 84
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v2, "KEY_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 92
    invoke-super {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onDestroy()V

    .line 93
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-boolean v0, v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->staticCallbacks:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->getUserImplPtr()J

    move-result-wide v2

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->status:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;->onAuthFlowFinished(JLcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onResume()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/ui/AuthActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->state:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->stateSaved:Z

    .line 111
    return-void
.end method
