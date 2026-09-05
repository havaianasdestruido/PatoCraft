.class public Lcom/microsoft/xbox/idp/ui/MSAFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "MSAFragment.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;,
        Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;,
        Lcom/microsoft/xbox/idp/ui/MSAFragment$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ARG_SECURITY_POLICY:Ljava/lang/String; = "ARG_SECURITY_POLICY"

.field public static final ARG_SECURITY_SCOPE:Ljava/lang/String; = "ARG_SECURITY_SCOPE"

.field private static final KEY_STATE:Ljava/lang/String; = "KEY_STATE"

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

.field private currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

.field private state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->$assertionsDisabled:Z

    .line 29
    const-class v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/MSAFragment$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 32
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    return-void
.end method


# virtual methods
.method public onAccountAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/UserAccount;)V
    .locals 2
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "userAccount"    # Lcom/microsoft/onlineid/UserAccount;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/UserAccount;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;->cid:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->onActivityResult(IILandroid/content/Intent;)Z

    .line 104
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    sget-boolean v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    check-cast p1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/MSAFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "extras":Landroid/os/Bundle;
    if-nez p1, :cond_3

    .line 58
    if-nez v0, :cond_0

    .line 59
    sget-object v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v4, "Intent has no extras"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v4, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v3, v4, v5, v5}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 84
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v3, "ARG_SECURITY_SCOPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "scope":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 66
    sget-object v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v4, "No security scope"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v4, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v3, v4, v5, v5}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string v3, "ARG_SECURITY_POLICY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "policy":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 73
    sget-object v3, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v4, "No security policy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v4, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v3, v4, v5, v5}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v3, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    invoke-direct {v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;-><init>()V

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    .line 78
    new-instance v3, Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/MSAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2, v1}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    goto :goto_0

    .line 80
    .end local v1    # "policy":Ljava/lang/String;
    .end local v2    # "scope":Ljava/lang/String;
    :cond_3
    const-string v3, "KEY_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    .line 81
    new-instance v3, Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/MSAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "ARG_SECURITY_SCOPE"

    .line 82
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ARG_SECURITY_POLICY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;-><init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->currentJob:Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    sget v0, Lcom/microsoft/xbox/idp/R$layout;->xbid_fragment_busy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 50
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    .line 51
    return-void
.end method

.method public onFailure(Lcom/microsoft/xbox/idp/jobs/MSAJob;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 114
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem acquiring an account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    instance-of v0, p2, Lcom/microsoft/onlineid/exception/NetworkException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    :goto_0
    invoke-interface {v1, v0, v3, v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 116
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "KEY_STATE"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public onSignedOut(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "Signed out during sing in - should not be here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 128
    return-void
.end method

.method public onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/MSAJob;Lcom/microsoft/onlineid/Ticket;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .param p2, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->state:Lcom/microsoft/xbox/idp/ui/MSAFragment$State;

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/MSAFragment$State;->cid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 138
    return-void
.end method

.method public onUiNeeded(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "Must show UI to acquire an account. Should not be here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 110
    return-void
.end method

.method public onUserCancel(Lcom/microsoft/xbox/idp/jobs/MSAJob;)V
    .locals 3
    .param p1, "job"    # Lcom/microsoft/xbox/idp/jobs/MSAJob;

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->TAG:Ljava/lang/String;

    const-string v1, "The user cancelled the UI to acquire a ticket."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/MSAFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-interface {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Callbacks;->onComplete(Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V

    .line 122
    return-void
.end method
