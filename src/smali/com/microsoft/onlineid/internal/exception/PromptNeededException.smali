.class public Lcom/microsoft/onlineid/internal/exception/PromptNeededException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "PromptNeededException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _request:Lcom/microsoft/onlineid/internal/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/internal/ApiRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/microsoft/onlineid/internal/ApiRequest;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->_request:Lcom/microsoft/onlineid/internal/ApiRequest;

    .line 32
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/PromptNeededException;->_request:Lcom/microsoft/onlineid/internal/ApiRequest;

    return-object v0
.end method
