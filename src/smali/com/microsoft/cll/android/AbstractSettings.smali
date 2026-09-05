.class public abstract Lcom/microsoft/cll/android/AbstractSettings;
.super Ljava/lang/Object;
.source "AbstractSettings.java"


# instance fields
.field protected ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field protected TAG:Ljava/lang/String;

.field protected final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field protected disableUploadOn404:Z

.field protected endpoint:Ljava/lang/String;

.field protected final logger:Lcom/microsoft/cll/android/ILogger;

.field private final partA:Lcom/microsoft/cll/android/PartA;

.field protected queryParam:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;Lcom/microsoft/cll/android/PartA;)V
    .locals 1
    .param p1, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p2, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p3, "partA"    # Lcom/microsoft/cll/android/PartA;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "AndroidCll-AbstractSettings"

    iput-object v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    .line 35
    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 36
    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 37
    iput-object p3, p0, Lcom/microsoft/cll/android/AbstractSettings;->partA:Lcom/microsoft/cll/android/PartA;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract ParseSettings(Lorg/json/JSONObject;)V
.end method

.method public getSettings()Lorg/json/JSONObject;
    .locals 22

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Get Settings"

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance v15, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->endpoint:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->queryParam:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v15, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 62
    .local v4, "connection":Ljava/net/URLConnection;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 63
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpAttempts()V

    .line 66
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    .line 68
    .local v10, "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v3

    .line 69
    .local v3, "conTimeout":I
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v13

    .line 72
    .local v13, "reqTimeout":I
    sget-object v18, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static/range {v18 .. v18}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 73
    sget-object v18, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static/range {v18 .. v18}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 74
    const-string v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 75
    const-string v18, "Accept"

    const-string v19, "application/json"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v18, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsString(Lcom/microsoft/cll/android/SettingsStore$Settings;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 79
    .local v16, "start":J
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 80
    const-string v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 81
    .local v8, "finish":J
    sub-long v6, v8, v16

    .line 82
    .local v6, "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    long-to-int v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->SetAvgSettingsLatencyMs(I)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    long-to-int v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->SetMaxSettingsLatencyMs(I)V

    .line 85
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0x194

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Your iKey is invalid. Your events will not be sent!"

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v18, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0x130

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 103
    :cond_1
    const-string v18, "ETAG"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "ETag":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->ETagSettingName:Lcom/microsoft/cll/android/SettingsStore$Settings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V

    .line 115
    .end local v2    # "ETag":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 117
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v10, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/16 v18, 0x0

    .line 154
    if-eqz v4, :cond_3

    .line 158
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 168
    .end local v3    # "conTimeout":I
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v6    # "diff":J
    .end local v8    # "finish":J
    .end local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v13    # "reqTimeout":I
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "start":J
    :cond_3
    :goto_2
    return-object v18

    .line 52
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/net/MalformedURLException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Settings URL is invalid"

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/16 v18, 0x0

    goto :goto_2

    .line 91
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "conTimeout":I
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "diff":J
    .restart local v8    # "finish":J
    .restart local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "reqTimeout":I
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "start":J
    :cond_4
    :try_start_3
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0x194

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->disableUploadOn404:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Your iKey is valid."

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v18, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v19, "true"

    invoke-static/range {v18 .. v19}, Lcom/microsoft/cll/android/SettingsStore;->updateCllSetting(Lcom/microsoft/cll/android/SettingsStore$Settings;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 142
    .end local v3    # "conTimeout":I
    .end local v6    # "diff":J
    .end local v8    # "finish":J
    .end local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v13    # "reqTimeout":I
    .end local v16    # "start":J
    :catch_1
    move-exception v5

    .line 144
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpFailures(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    if-eqz v4, :cond_5

    .line 158
    :try_start_5
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    const/16 v18, 0x0

    goto :goto_2

    .line 111
    .restart local v3    # "conTimeout":I
    .restart local v6    # "diff":J
    .restart local v8    # "finish":J
    .restart local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "reqTimeout":I
    .restart local v16    # "start":J
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementSettingsHttpFailures(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 147
    .end local v3    # "conTimeout":I
    .end local v6    # "diff":J
    .end local v8    # "finish":J
    .end local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v13    # "reqTimeout":I
    .end local v16    # "start":J
    :catch_2
    move-exception v5

    .line 149
    .local v5, "e":Lorg/json/JSONException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    if-eqz v4, :cond_5

    .line 158
    :try_start_8
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 160
    :catch_3
    move-exception v5

    .line 163
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 160
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "conTimeout":I
    .restart local v6    # "diff":J
    .restart local v8    # "finish":J
    .restart local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "reqTimeout":I
    .restart local v16    # "start":J
    :catch_4
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_9
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v11, "input":Ljava/io/BufferedReader;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v14, "result":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 130
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 154
    .end local v3    # "conTimeout":I
    .end local v6    # "diff":J
    .end local v8    # "finish":J
    .end local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "reqTimeout":I
    .end local v14    # "result":Ljava/lang/StringBuilder;
    .end local v16    # "start":J
    :catchall_0
    move-exception v18

    if-eqz v4, :cond_8

    .line 158
    :try_start_a
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 164
    :cond_8
    :goto_5
    throw v18

    .line 133
    .restart local v3    # "conTimeout":I
    .restart local v6    # "diff":J
    .restart local v8    # "finish":J
    .restart local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v11    # "input":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "reqTimeout":I
    .restart local v14    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "start":J
    :cond_9
    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 134
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    const/4 v10, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 154
    if-eqz v4, :cond_3

    .line 158
    :try_start_c
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    .line 160
    :catch_5
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    .end local v3    # "conTimeout":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "diff":J
    .end local v8    # "finish":J
    .end local v10    # "httpConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "input":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "reqTimeout":I
    .end local v14    # "result":Ljava/lang/StringBuilder;
    .end local v16    # "start":J
    :cond_a
    if-eqz v4, :cond_5

    .line 158
    :try_start_d
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 160
    :catch_6
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    .local v5, "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 163
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->logger:Lcom/microsoft/cll/android/ILogger;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/cll/android/AbstractSettings;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
