.class Lcom/appsflyer/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "AF_INSTALLATION"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 103
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 106
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method public static declared-synchronized id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const-class v4, Lcom/appsflyer/Installation;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 30
    sget-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v4

    return-object v3

    .line 32
    :cond_0
    :try_start_1
    sget-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 33
    invoke-static {p0}, Lcom/appsflyer/Installation;->readInstallationSP(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "tmpSId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 35
    sput-object v2, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    .line 50
    :goto_1
    sget-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 51
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v5, "uid"

    sget-object v6, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v2    # "tmpSId":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    .restart local v2    # "tmpSId":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "AF_INSTALLATION"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v1, "installation":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 40
    invoke-static {p0}, Lcom/appsflyer/Installation;->generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    .line 45
    :goto_2
    sget-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/appsflyer/Installation;->writeInstallationSP(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 46
    .end local v1    # "installation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Error getting AF unique ID"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "tmpSId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 42
    .restart local v1    # "installation":Ljava/io/File;
    .restart local v2    # "tmpSId":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-static {v1}, Lcom/appsflyer/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsflyer/Installation;->sID:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "installation"    # Ljava/io/File;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "f":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 61
    .local v0, "bytes":[B
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 63
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 64
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-eqz v3, :cond_0

    .line 70
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 76
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/String;

    if-eqz v0, :cond_3

    .end local v0    # "bytes":[B
    :goto_1
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 72
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v0    # "bytes":[B
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Exception while trying to close the InstallationFile"

    invoke-static {v4, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 75
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "Exception while reading InstallationFile: "

    invoke-static {v4, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-eqz v2, :cond_1

    .line 70
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 72
    :catch_2
    move-exception v1

    .line 73
    const-string v4, "Exception while trying to close the InstallationFile"

    invoke-static {v4, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 69
    :goto_3
    if-eqz v2, :cond_2

    .line 70
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 74
    :cond_2
    :goto_4
    throw v4

    .line 72
    :catch_3
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "Exception while trying to close the InstallationFile"

    invoke-static {v5, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    new-array v0, v5, [B

    goto :goto_1

    .line 68
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 65
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private static readInstallationSP(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 116
    :goto_0
    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "AF_INSTALLATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static writeInstallationFile(Ljava/io/File;Ljava/lang/ref/WeakReference;)V
    .locals 6
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 82
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Lcom/appsflyer/Installation;->generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-eqz v3, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 97
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 93
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Exception while trying to close InstallationFile"

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 96
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "id":Ljava/lang/String;
    :catch_1
    move-exception v4

    :goto_1
    move-object v0, v4

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "Exception while writing InstallationFile"

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    if-eqz v2, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Exception while trying to close InstallationFile"

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 90
    :goto_3
    if-eqz v2, :cond_2

    .line 91
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    :cond_2
    :goto_4
    throw v4

    .line 93
    :catch_3
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "Exception while trying to close InstallationFile"

    invoke-static {v5, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    :goto_5
    move-object v0, v4

    goto :goto_2

    .line 89
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 86
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method private static writeInstallationSP(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p0}, Lcom/appsflyer/Installation;->generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appsflyer/Installation;->writeInstallationSP(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private static writeInstallationSP(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 5
    .param p1, "sId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 126
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AF_INSTALLATION"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
