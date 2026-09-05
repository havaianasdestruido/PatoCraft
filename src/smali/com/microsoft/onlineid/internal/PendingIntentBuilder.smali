.class public Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
.super Ljava/lang/Object;
.source "PendingIntentBuilder.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private final _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/microsoft/onlineid/internal/ApiRequest;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->asIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;-><init>(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;

    .line 39
    return-void
.end method


# virtual methods
.method public buildActivity()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 71
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->buildActivity(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public buildActivity(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/PendingIntentBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/PendingIntentBuilder;->_context:Landroid/content/Context;

    .line 50
    return-object p0
.end method
