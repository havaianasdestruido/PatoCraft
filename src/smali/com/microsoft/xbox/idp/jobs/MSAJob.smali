.class public abstract Lcom/microsoft/xbox/idp/jobs/MSAJob;
.super Ljava/lang/Object;
.source "MSAJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;,
        Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    }
.end annotation


# instance fields
.field protected final accountManager:Lcom/microsoft/onlineid/AccountManager;

.field protected final callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->callbacks:Lcom/microsoft/xbox/idp/jobs/MSAJob$Callbacks;

    .line 20
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration;

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V

    .line 21
    .local v0, "onlineIdConfiguration":Lcom/microsoft/onlineid/OnlineIdConfiguration;
    const-string v1, "90023"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 22
    new-instance v1, Lcom/microsoft/onlineid/AccountManager;

    invoke-direct {v1, p1, v0}, Lcom/microsoft/onlineid/AccountManager;-><init>(Landroid/content/Context;Lcom/microsoft/onlineid/OnlineIdConfiguration;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getType()Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/idp/jobs/MSAJob;->accountManager:Lcom/microsoft/onlineid/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/onlineid/AccountManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public abstract start()Lcom/microsoft/xbox/idp/jobs/MSAJob;
.end method
