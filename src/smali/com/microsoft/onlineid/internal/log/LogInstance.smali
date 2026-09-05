.class public Lcom/microsoft/onlineid/internal/log/LogInstance;
.super Ljava/lang/Object;
.source "LogInstance.java"


# static fields
.field public static final LogTag:Ljava/lang/String; = "MSA"

.field public static final MaxLogLength:I = 0xfa0


# instance fields
.field private _isLoggingEnabled:Z

.field private _isRedactionEnabled:Z

.field private _isStackTraceLoggingEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    .line 20
    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    .line 39
    return-void
.end method

.method protected constructor <init>(ZZZ)V
    .locals 2
    .param p1, "isRedactionEnabled"    # Z
    .param p2, "isLoggingEnabled"    # Z
    .param p3, "isStackTraceLoggingEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    .line 20
    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    .line 31
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    .line 32
    iput-boolean p2, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    .line 33
    iput-boolean p3, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    .line 35
    return-void
.end method

.method private logMessageLevel(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loggingLevel"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 245
    packed-switch p2, :pswitch_data_0

    .line 269
    if-nez p3, :cond_2

    .line 271
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logInfo(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 248
    :pswitch_0
    if-nez p3, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    :pswitch_1
    if-nez p3, :cond_1

    .line 260
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getStackTraceInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTraceDepth"    # I

    .prologue
    .line 153
    iget-boolean v5, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    if-nez v5, :cond_0

    .line 189
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 158
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v2, "returnValue":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 164
    .local v4, "stackTraceInfo":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 165
    .local v1, "index":I
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v4, v5

    .line 167
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    .line 169
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getStackTrace"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 172
    add-int/2addr v1, p2

    .line 173
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v5, "()@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "index":I
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v4    # "stackTraceInfo":[Ljava/lang/StackTraceElement;
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 165
    .restart local v1    # "index":I
    .restart local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .restart local v4    # "stackTraceInfo":[Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 184
    .end local v1    # "index":I
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v4    # "stackTraceInfo":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error in getStackTraceInfo"

    invoke-virtual {p0, v5, v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 131
    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-void
.end method

.method protected logInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return-void
.end method

.method protected logMessage(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loggingLevel"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 202
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    .line 203
    return-void
.end method

.method protected logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loggingLevel"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "stackTraceDepth"    # I

    .prologue
    .line 219
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "MSA"

    invoke-static {v4, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 222
    .local v1, "len":I
    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v0, 0x0

    .local v0, "end":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 224
    add-int/lit16 v4, v3, 0xfa0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 226
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p0, v4, p4}, Lcom/microsoft/onlineid/internal/log/LogInstance;->getStackTraceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "messageWithStackTraceInfo":Ljava/lang/String;
    invoke-direct {p0, v2, p2, p3}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessageLevel(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 222
    move v3, v0

    goto :goto_0

    .line 231
    .end local v0    # "end":I
    .end local v1    # "len":I
    .end local v2    # "messageWithStackTraceInfo":Ljava/lang/String;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method protected logRedactedMessage(Lcom/microsoft/onlineid/internal/log/IRedactable;I)V
    .locals 4
    .param p1, "redactableMessage"    # Lcom/microsoft/onlineid/internal/log/IRedactable;
    .param p2, "loggingLevel"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 291
    if-eqz p1, :cond_0

    .line 293
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 295
    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/log/IRedactable;->getRedactedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/log/IRedactable;->getUnredactedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/microsoft/onlineid/internal/log/LogInstance;->logMessage(Ljava/lang/String;ILjava/lang/Throwable;I)V

    goto :goto_0
.end method

.method protected logWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "MSA"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method protected logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const-string v0, "MSA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method

.method protected setIsLoggingEnabled(Z)V
    .locals 0
    .param p1, "isLoggingEnabled"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    .line 59
    return-void
.end method

.method protected setIsRedactionEnable(Z)V
    .locals 0
    .param p1, "isRedactionEnabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    .line 49
    return-void
.end method

.method protected setIsStackTraceLoggingEnabled(Z)V
    .locals 0
    .param p1, "isStackTraceLoggingEnabled"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isStackTraceLoggingEnabled:Z

    .line 69
    return-void
.end method

.method protected shouldRedact()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isRedactionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/LogInstance;->_isLoggingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
