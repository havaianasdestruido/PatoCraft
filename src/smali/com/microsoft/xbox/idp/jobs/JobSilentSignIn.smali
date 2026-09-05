.class public Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
.super Lcom/microsoft/xbox/idp/jobs/MSAJob;
.source "JobSilentSignIn.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

.field private final activityTitle:Ljava/lang/CharSequence;

.field private final cid:Ljava/lang/String;

.field private final policy:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityTitle"    # Ljava/lang/CharSequence;
    .param p3, "callbacks"    # Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;
    .param p4, "scope"    # Ljava/lang/String;
    .param p5, "policy"    # Ljava/lang/String;
    .param p6, "cid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/microsoft/xbox/idp/jobs/MSAJob;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V

    .line 55
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$1;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    .line 108
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn$2;-><init>(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    .line 32
    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    .line 33
    iput-object p4, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->scope:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->policy:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountCallback:Lcom/microsoft/onlineid/IAccountCallback;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/AccountManager;->setAccountCallback(Lcom/microsoft/onlineid/IAccountCallback;)Lcom/microsoft/onlineid/AccountManager;

    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->ticketCallback:Lcom/microsoft/onlineid/ITicketCallback;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/AccountManager;->setTicketCallback(Lcom/microsoft/onlineid/ITicketCallback;)Lcom/microsoft/onlineid/AccountManager;

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->scope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->policy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SILENT_SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method

.method public start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/AccountManager;->getAccountById(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackSignin(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCSignin;->trackMSASigninStart(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 52
    return-object p0
.end method

.method public bridge synthetic start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;->start()Lcom/microsoft/xbox/idp/jobs/JobSilentSignIn;

    move-result-object v0

    return-object v0
.end method
