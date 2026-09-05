.class public Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;
.super Landroid/os/AsyncTask;
.source "DownloadProfileImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final UserTileExtension:Ljava/lang/String; = ".png"

.field protected static final UserTileUrlFormat:Ljava/lang/String; = "https://storage.%2$s/users/0x%1$s/myprofile/expressionprofile/profilephoto:UserTileStatic"


# instance fields
.field private final _account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

.field private final _applicationContext:Landroid/content/Context;

.field private final _imageView:Landroid/widget/ImageView;

.field private _newImageDownloaded:Z

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _transport:Lcom/microsoft/onlineid/internal/transport/Transport;

.field private final _userTileFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 59
    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    .line 60
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 61
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/internal/transport/Transport;Lcom/microsoft/onlineid/sts/ServerConfig;)V
    .locals 1
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "transport"    # Lcom/microsoft/onlineid/internal/transport/Transport;
    .param p3, "serverConfig"    # Lcom/microsoft/onlineid/sts/ServerConfig;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 77
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    .line 78
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 79
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    .line 80
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    .line 82
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 110
    .local v2, "responseStream":Ljava/io/InputStream;
    :try_start_0
    const-string v5, "https://storage.%2$s/users/0x%1$s/myprofile/expressionprofile/profilephoto:UserTileStatic"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_account:Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 112
    invoke-virtual {v7}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getCid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 113
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v4

    sget-object v8, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "live.com"

    :goto_0
    aput-object v4, v6, v7

    .line 110
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    .line 119
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->setUseCaches(Z)V

    .line 121
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v2

    .line 123
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    .local v1, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->saveUserTileImage(Landroid/graphics/Bitmap;)V

    .line 127
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 142
    if-eqz v2, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .end local v1    # "image":Landroid/graphics/Bitmap;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 113
    :cond_1
    :try_start_2
    const-string v4, "live-int.com"
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/microsoft/onlineid/exception/NetworkException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    .restart local v1    # "image":Landroid/graphics/Bitmap;
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Error closing response stream."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "image":Landroid/graphics/Bitmap;
    .end local v3    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_3
    const-string v4, "Error downloading image from url."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 142
    if-eqz v2, :cond_2

    .line 146
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 148
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Error closing response stream."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 137
    .local v0, "e":Lcom/microsoft/onlineid/exception/NetworkException;
    :try_start_5
    const-string v4, "Error downloading image from url."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 142
    if-eqz v2, :cond_2

    .line 146
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 148
    :catch_4
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Error closing response stream."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_transport:Lcom/microsoft/onlineid/internal/transport/Transport;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 142
    if-eqz v2, :cond_3

    .line 146
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 151
    :cond_3
    :goto_3
    throw v4

    .line 148
    :catch_5
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "Error closing response stream."

    invoke-static {v5, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getSavedUserTileImage()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "savedUserTileImage":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 209
    .local v2, "userTileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 210
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 218
    if-eqz v2, :cond_0

    .line 222
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Error closing file input stream."

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 218
    if-eqz v2, :cond_0

    .line 222
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Error closing file input stream."

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 222
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 227
    :cond_1
    :goto_1
    throw v3

    .line 224
    :catch_3
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Error closing file input stream."

    invoke-static {v4, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    if-eqz p1, :cond_3

    .line 167
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v1

    .line 168
    .local v1, "httpResponseCache":Landroid/net/http/HttpResponseCache;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/net/http/HttpResponseCache;->getHitCount()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "from network"

    .line 171
    .local v2, "label":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "Performance"

    const-string v5, "Load profile image"

    .line 172
    invoke-interface {v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 174
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    .end local v1    # "httpResponseCache":Landroid/net/http/HttpResponseCache;
    :cond_1
    :goto_1
    return-void

    .line 170
    .restart local v1    # "httpResponseCache":Landroid/net/http/HttpResponseCache;
    :cond_2
    const-string v2, "from cache"

    goto :goto_0

    .line 180
    .end local v1    # "httpResponseCache":Landroid/net/http/HttpResponseCache;
    :cond_3
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_newImageDownloaded:Z

    if-eqz v3, :cond_1

    .line 183
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "Performance"

    const-string v5, "Load profile image"

    const-string v6, "deleted"

    invoke-interface {v3, v4, v5, v6}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "msa_default_user_tile"

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 190
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->getSavedUserTileImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "lastSavedUserTile":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_0
    return-void
.end method

.method saveUserTileImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 246
    .local v1, "userTileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/DownloadProfileImageTask;->_userTileFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 247
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .end local v1    # "userTileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local v1    # "userTileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Error closing file output stream."

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v2, "Error saving user tile image."

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    if-eqz v1, :cond_0

    .line 259
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 261
    :catch_2
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Error closing file output stream."

    invoke-static {v2, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 259
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 264
    :cond_1
    :goto_1
    throw v2

    .line 261
    :catch_3
    move-exception v0

    .line 263
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Error closing file output stream."

    invoke-static {v3, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
