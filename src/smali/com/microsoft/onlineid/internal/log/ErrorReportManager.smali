.class public Lcom/microsoft/onlineid/internal/log/ErrorReportManager;
.super Ljava/lang/Object;
.source "ErrorReportManager.java"


# static fields
.field private static final ConfirmationTitle:Ljava/lang/String; = "Report a problem?"

.field private static final CrashReportEmailTitleFormat:Ljava/lang/String; = "MSA Android Application Crash Report - %s"

.field private static final CrashReportExtension:Ljava/lang/String; = ".stacktrace"

.field private static CurrentActivityContext:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static CurrentAppContext:Landroid/content/Context; = null

.field private static final DontAskAgainMessage:Ljava/lang/String; = "No, don\'t ask again"

.field private static final EmailTitleDateFormat:Ljava/text/DateFormat;

.field private static final IgnoreCrashReportingStorageKeyName:Ljava/lang/String; = "isIgnoreCrashReporting"

.field private static final LogCatNumberLines:I = 0x1388

.field private static final ScreenshotFileName:Ljava/lang/String; = "com.microsoft.msa.authenticator.screenshot.jpg"

.field private static final SendCrashReportConfirmation:Ljava/lang/String; = "A problem occurred last time you ran this application. Would you like to report it?"

.field private static final SendEmailTo:Ljava/lang/String; = "WS-MSACLIENT-AFB@microsoft.com"


# instance fields
.field private _contextFilePath:Ljava/io/File;

.field private _sendLogs:Z

.field private _sendScreenshot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    .line 72
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->init(Landroid/content/Context;)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 706
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 707
    return-void
.end method

.method private appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "indent"    # Z

    .prologue
    .line 688
    const-string v0, "%s : %s\n"

    .line 689
    .local v0, "format":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 694
    return-void
.end method

.method protected static collectLogCatLogs(Ljava/io/PrintWriter;Z)V
    .locals 10
    .param p0, "printWriter"    # Ljava/io/PrintWriter;
    .param p1, "shouldFilterByPID"    # Z

    .prologue
    .line 530
    const/4 v5, 0x0

    .line 532
    .local v5, "pidFilter":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 535
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 538
    .local v4, "pid":I
    if-lez v4, :cond_0

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 544
    .end local v4    # "pid":I
    :cond_0
    const/4 v7, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "logcat"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "-t"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const/16 v8, 0x1388

    .line 547
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "-v"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "time"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    invoke-static {}, Lcom/microsoft/onlineid/internal/log/Logger;->getLogTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "*:S"

    aput-object v8, v3, v7

    .line 555
    .local v3, "logCatCmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 557
    .local v6, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 562
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 594
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "logCatCmd":[Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    :goto_1
    return-void

    .line 568
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "logCatCmd":[Ljava/lang/String;
    .restart local v6    # "process":Ljava/lang/Process;
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 570
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 571
    const-string v7, "\n"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "logCatCmd":[Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Exception in collectLogCat"

    invoke-static {v7, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getOrientation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Portrait"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Landscape"

    goto :goto_0
.end method

.method private static getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 715
    .local v0, "screenLayout":I
    and-int/lit8 v0, v0, 0xf

    .line 717
    packed-switch v0, :pswitch_data_0

    .line 728
    const-string v1, "Undefined"

    :goto_0
    return-object v1

    .line 720
    :pswitch_0
    const-string v1, "Small"

    goto :goto_0

    .line 722
    :pswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 724
    :pswitch_2
    const-string v1, "Large"

    goto :goto_0

    .line 726
    :pswitch_3
    const-string v1, "Xlarge"

    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getStringResourceIdAtRuntime(Ljava/lang/String;)I
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 810
    sget-object v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected askUserPermissionToEmailCrashReport()V
    .locals 3

    .prologue
    .line 889
    new-instance v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;

    invoke-direct {v1, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    .line 910
    .local v1, "permissionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    .line 911
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 912
    .local v0, "permissionDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Report a problem?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 913
    const-string v2, "A problem occurred last time you ran this application. Would you like to report it?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 914
    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 915
    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    const-string v2, "No, don\'t ask again"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 918
    return-void
.end method

.method public checkAndSendCrashReportWithUserPermission(Landroid/content/Context;)V
    .locals 3
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->isIgnoreCrashReportingFlagSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    .line 264
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getCrashErrorFileList()[Ljava/io/File;

    move-result-object v1

    .line 266
    .local v1, "reportFilesList":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->askUserPermissionToEmailCrashReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1    # "reportFilesList":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "!Error checkAndSendCrashReportWithUserPermission:"

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "shouldFilterByPID"    # Z
    .param p3, "userFeedback"    # Ljava/lang/String;
    .param p4, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 304
    :try_start_0
    const-string v3, "-------------------- \n"

    .line 306
    .local v3, "delimiter":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 308
    invoke-virtual {p4, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 309
    const-string v7, "\n\n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 312
    :cond_0
    new-instance v1, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    sget-object v7, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "accountManager":Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasAccounts()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 316
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 318
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    const-string v8, "PUID"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p4, v8, v9, v10}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    const-string v8, "Username"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getUsername()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p4, v8, v9, v10}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    const-string v8, "GcmRegistrationID"

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getGcmRegistrationID()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p4, v8, v9, v10}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    const-string v8, "\n"

    invoke-virtual {p4, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v1    # "accountManager":Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .end local v3    # "delimiter":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 363
    .local v5, "ex":Ljava/lang/Exception;
    const-string v7, "Exception in constructReport:"

    invoke-static {v7, v5}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 325
    .restart local v1    # "accountManager":Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;
    .restart local v3    # "delimiter":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 326
    const-string v7, "\n\n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 328
    invoke-virtual {p0, p4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getDeviceInfo(Ljava/io/PrintWriter;)V

    .line 330
    if-eqz p1, :cond_3

    .line 332
    const-string v7, "Stack : \n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 333
    const-string v7, "-------------------- \n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 334
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 338
    const/4 v6, 0x5

    .line 339
    .local v6, "maxDepth":I
    const/4 v4, 0x0

    .line 340
    .local v4, "depthCounter":I
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 341
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_2
    if-eqz v2, :cond_3

    const/4 v7, 0x5

    if-ge v4, v7, :cond_3

    .line 343
    const-string v7, "Cause :"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 344
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 345
    const-string v7, "-------------------- \n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 346
    invoke-virtual {v2, p4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 347
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 352
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v4    # "depthCounter":I
    .end local v6    # "maxDepth":I
    :cond_3
    iget-boolean v7, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    if-eqz v7, :cond_1

    .line 354
    const-string v7, "-------------------- \n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 355
    const-string v7, "\nLogcat:\n\n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 356
    const/4 v7, 0x1

    invoke-static {p4, v7}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->collectLogCatLogs(Ljava/io/PrintWriter;Z)V

    .line 357
    const-string v7, "\n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 358
    const-string v7, "-------------------- \n"

    invoke-virtual {p4, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected deleteFileNoThrow(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    .line 1036
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "deleteFileNoThrow failed"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected deleteScreenshot()V
    .locals 3

    .prologue
    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenshotFile()Ljava/io/File;

    move-result-object v1

    .line 494
    .local v1, "reportFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1    # "reportFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception in deleteScreenshot"

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected emailLogs(Ljava/lang/String;)V
    .locals 17
    .param p1, "userFeedback"    # Ljava/lang/String;

    .prologue
    .line 825
    const/4 v6, 0x0

    .line 826
    .local v6, "result":Ljava/io/Writer;
    const/4 v3, 0x0

    .line 828
    .local v3, "printWriter":Ljava/io/PrintWriter;
    :try_start_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 831
    .local v5, "report":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/CharArrayWriter;

    invoke-direct {v7}, Ljava/io/CharArrayWriter;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    .end local v6    # "result":Ljava/io/Writer;
    .local v7, "result":Ljava/io/Writer;
    :try_start_2
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 833
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .local v4, "printWriter":Ljava/io/PrintWriter;
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v12, v1, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V

    .line 834
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 835
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 843
    :try_start_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 844
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "printWriter":Ljava/io/PrintWriter;
    move-object v6, v7

    .line 847
    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    :goto_0
    :try_start_5
    const-string v9, "[%s] %s"

    .line 848
    .local v9, "subjectFormat":Ljava/lang/String;
    sget-object v11, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "send_feedback_subject_tag"

    .line 849
    invoke-static {v12}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v12

    .line 848
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 851
    .local v10, "subjectTag":Ljava/lang/String;
    sget-object v11, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 852
    .local v8, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 854
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x32

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 857
    :cond_0
    sget-object v11, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    const-string v12, "WS-MSACLIENT-AFB@microsoft.com"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "[%s] %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v8, v15, v16

    .line 861
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v12, v13}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 881
    .end local v5    # "report":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "subjectFormat":Ljava/lang/String;
    .end local v10    # "subjectTag":Ljava/lang/String;
    :goto_1
    return-void

    .line 837
    .restart local v5    # "report":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v11, "Exception in emailLogs"

    invoke-static {v11, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 843
    :try_start_7
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 844
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 863
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "report":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 865
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v11, "Exception in emailLogs"

    invoke-static {v11, v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 843
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "report":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 844
    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 863
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v6    # "result":Ljava/io/Writer;
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "result":Ljava/io/Writer;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "printWriter":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    goto :goto_3

    .line 843
    .end local v6    # "result":Ljava/io/Writer;
    .restart local v7    # "result":Ljava/io/Writer;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    goto :goto_4

    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v6    # "result":Ljava/io/Writer;
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "result":Ljava/io/Writer;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "printWriter":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    goto :goto_4

    .line 837
    .end local v6    # "result":Ljava/io/Writer;
    .restart local v7    # "result":Ljava/io/Writer;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    goto :goto_2

    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v6    # "result":Ljava/io/Writer;
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v7    # "result":Ljava/io/Writer;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .restart local v3    # "printWriter":Ljava/io/PrintWriter;
    move-object v6, v7

    .end local v7    # "result":Ljava/io/Writer;
    .restart local v6    # "result":Ljava/io/Writer;
    goto :goto_2
.end method

.method public generateAndSaveCrashReport(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->isIgnoreCrashReportingFlagSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v4, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz v4, :cond_1

    .line 166
    sget-object v4, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->saveScreenshot(Ljava/lang/ref/WeakReference;)V

    .line 169
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stack-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stacktrace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "errFileName":Ljava/lang/String;
    sget-object v4, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 173
    .local v3, "traceOutStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 176
    .local v2, "printWriter":Ljava/io/PrintWriter;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->constructReport(Ljava/lang/Throwable;ZLjava/lang/String;Ljava/io/PrintWriter;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0    # "errFileName":Ljava/lang/String;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "traceOutStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Error in generateAndSaveCrashReport: "

    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public generateAndSendReportWithUserPermission(Landroid/content/Context;)V
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public generateAndSendReportWithUserPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "userFeedback"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    .line 221
    iget-boolean v1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz v1, :cond_0

    .line 223
    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->saveScreenshot(Ljava/lang/ref/WeakReference;)V

    .line 225
    :cond_0
    invoke-virtual {p0, p2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->emailLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "!Error generateAndSendReportWithUserPermission:"

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getCrashErrorFileList()[Ljava/io/File;
    .locals 4

    .prologue
    .line 749
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/io/File;

    .line 753
    .local v1, "fileList":[Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 756
    new-instance v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;

    invoke-direct {v2, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    .line 764
    .local v2, "filter":Ljava/io/FilenameFilter;
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 771
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    :cond_0
    :goto_0
    return-object v1

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in getCrashErrorFileList"

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getDeviceInfo(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 605
    :try_start_0
    const-string v2, "Package"

    sget-object v3, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    const-string v2, "FilePath"

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :try_start_1
    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 609
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 612
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const-string v2, "Version"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 620
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    const-string v2, "\nPackage Data\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 621
    const-string v2, "OS version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "SDK level"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v2, "Board"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v2, "Brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "Phone model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "Device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "Display"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "Fingerprint"

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "Host"

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v2, "ID"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v2, "Model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "Product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "Tags"

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "Type"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "User"

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "Screen density"

    sget-object v3, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "Screen size"

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "Screen orientation"

    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getOrientation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v2, "Internal Memory\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 644
    const-string v2, "Total"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v2, "Available"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "Native Memory\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 651
    const-string v2, "Allocated heap size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v2, "Free size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v2, "Heap size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->appendValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 674
    :goto_1
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 676
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error in getDeviceInfo: "

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method protected getScreenshotFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 449
    .local v1, "screenshotFile":Ljava/io/File;
    :try_start_0
    iget-boolean v3, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    if-eqz v3, :cond_1

    .line 451
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.microsoft.msa.authenticator.screenshot.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v1    # "screenshotFile":Ljava/io/File;
    .local v2, "screenshotFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 482
    .end local v2    # "screenshotFile":Ljava/io/File;
    .restart local v1    # "screenshotFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 459
    .end local v1    # "screenshotFile":Ljava/io/File;
    .restart local v2    # "screenshotFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    move-object v5, v2

    .end local v2    # "screenshotFile":Ljava/io/File;
    .local v5, "screenshotFile":Ljava/io/File;
    move-object v2, v1

    move-object v1, v5

    .end local v5    # "screenshotFile":Ljava/io/File;
    .restart local v1    # "screenshotFile":Ljava/io/File;
    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "Exception in getScreenshotFile:"

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v1

    .line 482
    goto :goto_0

    .line 463
    .end local v1    # "screenshotFile":Ljava/io/File;
    .restart local v2    # "screenshotFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "screenshotFile":Ljava/io/File;
    .restart local v1    # "screenshotFile":Ljava/io/File;
    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 92
    :try_start_0
    sput-object p1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;

    if-nez v1, :cond_0

    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_contextFilePath:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error in init: "

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected isIgnoreCrashReportingFlagSet()Z
    .locals 2

    .prologue
    .line 125
    sget-object v1, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v0

    .line 126
    .local v0, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    const-string v1, "isIgnoreCrashReporting"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected notifyUserOfNoMailApp()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;-><init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V

    .line 789
    .local v0, "closeDialogListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    .line 790
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v1, "noMailDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "send_feedback_no_email_app_header"

    .line 792
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    .line 791
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 793
    const-string v2, "send_feedback_no_email_app_body"

    .line 794
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    .line 793
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 795
    const-string v2, "popup_button_close"

    .line 796
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getStringResourceIdAtRuntime(Ljava/lang/String;)I

    move-result v2

    .line 795
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 799
    return-void
.end method

.method protected saveScreenshot(Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "activityContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteScreenshot()V

    .line 393
    const/4 v3, 0x0

    .line 396
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 397
    .local v5, "view":Landroid/view/View;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 398
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 399
    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.microsoft.msa.authenticator.screenshot.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0xa

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    if-eqz v4, :cond_2

    .line 414
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 437
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "view":Landroid/view/View;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "Exception in saveScreenshot:"

    invoke-static {v6, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    if-eqz v3, :cond_0

    .line 414
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 418
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 420
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "Exception in saveScreenshot:"

    invoke-static {v6, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 414
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 418
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "view":Landroid/view/View;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 412
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 406
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method protected sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "errorContent"    # Ljava/lang/String;
    .param p3, "mailTo"    # Ljava/lang/String;
    .param p4, "emailSubject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getScreenshotFile()Ljava/io/File;

    move-result-object v2

    .line 1071
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.EMAIL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v4, "android.intent.extra.TEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v4, "message/rfc822"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    if-eqz v2, :cond_0

    .line 1078
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1080
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1105
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1082
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->notifyUserOfNoMailApp()V

    .line 1085
    const-string v4, "ActivityNotFoundException in sendEmail."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1087
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 1089
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Exception in sendEmail."

    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected sendMailAndDeleteFiles(Z)V
    .locals 18
    .param p1, "sendMail"    # Z

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getCrashErrorFileList()[Ljava/io/File;

    move-result-object v8

    .line 930
    .local v8, "reportFilesList":[Ljava/io/File;
    const/4 v2, 0x0

    .line 934
    .local v2, "buffer":Ljava/nio/CharBuffer;
    :try_start_0
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 940
    const/4 v3, 0x0

    .line 943
    .local v3, "bufferCapacity":I
    array-length v10, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v5, v8, v9

    .line 945
    .local v5, "file":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 947
    int-to-long v12, v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v12, v14

    long-to-int v3, v12

    .line 943
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 951
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1005
    .end local v3    # "bufferCapacity":I
    .end local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1007
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "Error in sendMailAndDeleteFiles: "

    invoke-static {v9, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1023
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 956
    .restart local v3    # "bufferCapacity":I
    :cond_2
    if-lez v3, :cond_4

    .line 958
    :try_start_1
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 960
    array-length v10, v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v5, v8, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 962
    .restart local v5    # "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 965
    .local v6, "input":Ljava/io/FileReader;
    :try_start_2
    new-instance v7, Ljava/io/FileReader;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 966
    .end local v6    # "input":Ljava/io/FileReader;
    .local v7, "input":Ljava/io/FileReader;
    :cond_3
    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/FileReader;->read(Ljava/nio/CharBuffer;)I

    move-result v11

    if-gtz v11, :cond_3

    .line 970
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v7

    .line 979
    .end local v7    # "input":Ljava/io/FileReader;
    .restart local v6    # "input":Ljava/io/FileReader;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 987
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V

    .line 960
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 972
    :catch_1
    move-exception v4

    .line 974
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_6
    const-string v11, "Error reading the report file"

    invoke-static {v11, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 981
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 983
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "Error closing the report file"

    invoke-static {v11, v4}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 987
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V

    goto :goto_5

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->deleteFileNoThrow(Ljava/io/File;)V

    throw v9

    .line 993
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "input":Ljava/io/FileReader;
    :cond_4
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 995
    sget-object v9, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->CurrentActivityContext:Ljava/lang/ref/WeakReference;

    .line 997
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "WS-MSACLIENT-AFB@microsoft.com"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "MSA Android Application Crash Report - %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->EmailTitleDateFormat:Ljava/text/DateFormat;

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 1002
    invoke-virtual/range {v16 .. v17}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 999
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 995
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendEmail(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 972
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "input":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileReader;
    .restart local v6    # "input":Ljava/io/FileReader;
    goto :goto_6
.end method

.method public setSendLogs(Z)V
    .locals 0
    .param p1, "sendLogsNewValue"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendLogs:Z

    .line 148
    return-void
.end method

.method public setSendScreenshot(Z)V
    .locals 0
    .param p1, "sendScreenshotNewValue"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->_sendScreenshot:Z

    .line 138
    return-void
.end method
