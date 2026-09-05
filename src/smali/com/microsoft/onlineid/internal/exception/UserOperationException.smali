.class public Lcom/microsoft/onlineid/internal/exception/UserOperationException;
.super Lcom/microsoft/onlineid/exception/AuthenticationException;
.source "UserOperationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _bodyString:Ljava/lang/String;

.field private final _headerString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyMessage"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "bodyMessage"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "headerString"    # Ljava/lang/String;
    .param p2, "bodyMessage"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v0, "bodyMessage"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "headerString"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "headerString"    # Ljava/lang/String;
    .param p2, "bodyMessage"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const-string v0, "bodyMessage"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "headerString"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "bodyMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const-string v0, "bodyMessage"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getBodyMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_bodyString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/exception/UserOperationException;->_headerString:Ljava/lang/String;

    return-object v0
.end method
