.class final Lnet/hockeyapp/android/NativeCrashManager$1;
.super Ljava/lang/Thread;
.source "NativeCrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/NativeCrashManager;->uploadDumpAndLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$dumpFilename:Ljava/lang/String;

.field final synthetic val$logFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    iput-object p3, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 72
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 73
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://rink.hockeyapp.net/api/2/apps/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/crashes/upload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 78
    .local v2, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v0, Ljava/io/File;

    sget-object v6, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "dumpFile":Ljava/io/File;
    const-string v6, "attachment0"

    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v7, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 81
    new-instance v5, Ljava/io/File;

    sget-object v6, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v5, "logFile":Ljava/io/File;
    const-string v6, "log"

    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v7, v5}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 84
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 87
    const-string v6, "HockeyApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Succesfully Uploaded dump file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v6, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 93
    iget-object v6, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 95
    .end local v0    # "dumpFile":Ljava/io/File;
    .end local v2    # "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "logFile":Ljava/io/File;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "HockeyApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error uploading dump file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    iget-object v6, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 93
    iget-object v6, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$logFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 93
    iget-object v7, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$activity:Landroid/app/Activity;

    iget-object v8, p0, Lnet/hockeyapp/android/NativeCrashManager$1;->val$dumpFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    throw v6
.end method
