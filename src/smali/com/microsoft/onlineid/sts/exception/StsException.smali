.class public Lcom/microsoft/onlineid/sts/exception/StsException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "StsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _stsError:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/onlineid/sts/StsError;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/microsoft/onlineid/sts/StsError;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/StsError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v0, "error"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    .line 39
    return-void
.end method


# virtual methods
.method public getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/StsError;->getCode()Lcom/microsoft/onlineid/sts/StsErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/exception/StsException;->_stsError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method
