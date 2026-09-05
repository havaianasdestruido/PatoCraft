.class public Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "MasterRedirectException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _redirectRequestTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "redirectRequestTo"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "redirectRequestTo"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->_redirectRequestTo:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getRedirectRequestTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/MasterRedirectException;->_redirectRequestTo:Ljava/lang/String;

    return-object v0
.end method
