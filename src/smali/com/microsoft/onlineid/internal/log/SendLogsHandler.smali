.class public Lcom/microsoft/onlineid/internal/log/SendLogsHandler;
.super Ljava/lang/Object;
.source "SendLogsHandler.java"


# static fields
.field protected static final SendKeyEventIntervalMillis:J = 0x1388L

.field protected static final ToastMsg:Ljava/lang/String; = "Press the \'volume down\' button %d more time(s) to send logs."


# instance fields
.field private _activityContext:Landroid/content/Context;

.field private _applicationContext:Landroid/content/Context;

.field private _errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

.field private _sendLogsKeyCounter:B

.field private _startTime:J

.field private _toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activityContext"    # Landroid/app/Activity;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;-><init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 6
    .param p1, "activityContext"    # Landroid/app/Activity;
    .param p2, "errorReporter"    # Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    .line 20
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    .line 21
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    .line 56
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    .line 57
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 61
    if-nez p2, :cond_0

    new-instance p2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .end local p2    # "errorReporter":Lcom/microsoft/onlineid/internal/log/ErrorReportManager;
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;-><init>(Landroid/content/Context;)V

    :cond_0
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .line 62
    return-void

    .restart local p2    # "errorReporter":Lcom/microsoft/onlineid/internal/log/ErrorReportManager;
    :cond_1
    move v0, v2

    .line 57
    goto :goto_0

    :cond_2
    move v1, v2

    .line 59
    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorReporter"    # Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    .line 21
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    .line 44
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .line 46
    return-void
.end method


# virtual methods
.method protected getTimeMillis()J
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendLogs()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public sendLogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "userFeedback"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setSendLogs(Z)V
    .locals 1
    .param p1, "sendLogsNewValue"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendLogs(Z)V

    .line 83
    return-void
.end method

.method public setSendScreenshot(Z)V
    .locals 1
    .param p1, "sendScreenshotNewValue"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_errorReport:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->setSendScreenshot(Z)V

    .line 73
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public trySendLogsOnKeyEvent(I)V
    .locals 11
    .param p1, "keyCode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 93
    const/4 v2, 0x2

    .line 100
    .local v2, "startKeyCounter":B
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v3, 0x2

    iput-byte v3, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    .line 104
    const-string v3, "Press the \'volume down\' button %d more time(s) to send logs."

    new-array v4, v10, [Ljava/lang/Object;

    iget-byte v5, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->showToast(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->getTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->getTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_startTime:J

    sub-long v0, v4, v6

    .line 110
    .local v0, "elapsed":J
    iget-byte v3, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    if-ltz v3, :cond_1

    const-wide/16 v4, 0x1388

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 112
    iget-byte v3, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    .line 113
    iget-byte v3, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    if-lez v3, :cond_0

    .line 115
    const-string v3, "Press the \'volume down\' button %d more time(s) to send logs."

    new-array v4, v10, [Ljava/lang/Object;

    iget-byte v5, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->sendLogs()V

    .line 122
    iput-byte v8, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    goto :goto_0

    .line 127
    :cond_1
    iput-byte v8, p0, Lcom/microsoft/onlineid/internal/log/SendLogsHandler;->_sendLogsKeyCounter:B

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
