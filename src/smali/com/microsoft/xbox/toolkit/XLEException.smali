.class public Lcom/microsoft/xbox/toolkit/XLEException;
.super Ljava/lang/Exception;
.source "XLEException.java"


# instance fields
.field private errorCode:J

.field private isHandled:Z

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 7
    .param p1, "errorCode"    # J

    .prologue
    const/4 v4, 0x0

    .line 16
    move-object v1, p0

    move-wide v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # J
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 28
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "errorCode"    # J
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "innerException"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 54
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # J
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "innerException"    # Ljava/lang/Throwable;
    .param p5, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    .line 60
    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/XLEException;->userObject:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    .line 62
    return-void
.end method

.method public constructor <init>(JLjava/lang/Throwable;)V
    .locals 7
    .param p1, "errorCode"    # J
    .param p3, "innerException"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 40
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorCode()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    return-wide v0
.end method

.method public getIsHandled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setIsHandled(Z)V
    .locals 0
    .param p1, "isHandled"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "XLEException ErrorCode: %d; ErrorMessage: %s \n\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "\t Cause ErrorMessage: %s, StackTrace: "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 91
    .local v1, "elem":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\n \t "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "elem":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
