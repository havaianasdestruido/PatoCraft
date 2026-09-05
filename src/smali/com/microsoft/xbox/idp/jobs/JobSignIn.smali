.class public Lcom/microsoft/xbox/idp/jobs/JobSignIn;
.super Lcom/microsoft/xbox/idp/jobs/MSAJob;
.source "JobSignIn.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private final activity:Landroid/app/Activity;

.field private final policy:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/microsoft/xbox/idp/jobs/MSAJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V

    .line 56
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn$1;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    .line 107
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn$2;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    .line 31
    iput-object p1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->scope:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->policy:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/AccountManager;->setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/AccountManager;->setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->policy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/JobSignIn;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackSignin(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninStart(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, v1, v1}, Lcom/microsoft/onlineid/AccountManager;->getAccountPickerIntent(Ljava/lang/Iterable;Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackPageView(Ljava/lang/CharSequence;)V

    .line 53
    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/JobSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSignIn;

    move-result-object v0

    return-object v0
.end method
