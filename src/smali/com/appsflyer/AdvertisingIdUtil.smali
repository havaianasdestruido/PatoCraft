.class Lcom/appsflyer/AdvertisingIdUtil;
.super Ljava/lang/Object;
.source "AdvertisingIdUtil.java"


# static fields
.field public static final AMAZON_MANUFACTURER:Ljava/lang/String; = "Amazon"

.field private static final AMAZON_SETTING_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field private static final AMAZON_SETTING_LIMIT_AD_TRACKING:Ljava/lang/String; = "limit_ad_tracking"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addGoogleAID(Landroid/content/Context;Ljava/util/Map;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 55
    const-string v12, "Trying to fetch GAID.."

    invoke-static {v12}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "advertisingId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 60
    .local v1, "advertisingIdEnabled":Ljava/lang/String;
    const/4 v2, 0x0

    .line 61
    .local v2, "advertisingIdWithGps":Z
    const/4 v3, 0x0

    .line 62
    .local v3, "gaidError":Ljava/lang/String;
    const/4 v6, -0x1

    .line 64
    .local v6, "statusCode":I
    :try_start_0
    const-string v12, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v4

    .line 67
    .local v4, "gpsAdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    if-eqz v4, :cond_6

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v12

    if-nez v12, :cond_5

    move v12, v10

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v2, 0x1

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 72
    :cond_0
    const-string v3, "emptyOrNull"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v4    # "gpsAdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.app.ReceiverRestrictedContext"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 114
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserId"

    invoke-virtual {v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserIdEnabled"

    invoke-virtual {v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v3, "context = android.app.ReceiverRestrictedContext"

    .line 119
    :cond_2
    if-eqz v3, :cond_3

    .line 120
    const-string v10, "gaidError"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 124
    const-string v10, "advertiserId"

    invoke-interface {p1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v10, "advertiserIdEnabled"

    invoke-interface {p1, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserId"

    invoke-virtual {v10, v11, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserIdEnabled"

    invoke-virtual {v10, v11, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v10, "isGaidWithGps"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_4
    return-void

    .restart local v4    # "gpsAdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_5
    move v12, v11

    .line 69
    goto :goto_0

    .line 75
    :cond_6
    :try_start_1
    const-string v3, "gpsAdInfo-null"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 77
    .end local v4    # "gpsAdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catch_0
    move-exception v8

    .line 78
    .local v8, "t1":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 84
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v12, "WARNING: Google Play Services is missing."

    invoke-static {v12}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v12

    const-string v13, "enableGpsFallback"

    invoke-virtual {v12, v13, v10}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 88
    :try_start_3
    invoke-static {p0}, Lcom/appsflyer/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/appsflyer/AdvertisingIdClient$AdInfo;

    move-result-object v5

    .line 89
    .local v5, "internalAdInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    if-eqz v5, :cond_9

    .line 90
    invoke-virtual {v5}, Lcom/appsflyer/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v5}, Lcom/appsflyer/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v12

    if-nez v12, :cond_8

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 93
    :cond_7
    const-string v3, "emptyOrNull (bypass)"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 81
    .end local v5    # "internalAdInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    :catch_1
    move-exception v7

    .line 82
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v5    # "internalAdInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    :cond_8
    move v10, v11

    .line 91
    goto :goto_3

    .line 96
    :cond_9
    :try_start_4
    const-string v3, "gpsAdInfo-null (bypass)"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 98
    .end local v5    # "internalAdInfo":Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    :catch_2
    move-exception v9

    .line 99
    .local v9, "t2":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserId"

    invoke-virtual {v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v10

    const-string v11, "advertiserIdEnabled"

    invoke-virtual {v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v9}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 105
    invoke-virtual {v9}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static getAmazonAID(Landroid/content/ContentResolver;)Lcom/appsflyer/AdvertisingIdObject;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x2

    .line 22
    if-nez p0, :cond_1

    .line 23
    const/4 v1, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 25
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "amazon_aid"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "advertisingIdObjectString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 27
    .local v1, "advertisingIdObject":Lcom/appsflyer/AdvertisingIdObject;
    if-nez v2, :cond_0

    .line 29
    const-string v5, "Amazon"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    const-string v5, "limit_ad_tracking"

    invoke-static {p0, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 32
    .local v3, "limitAdTrackingInt":I
    if-nez v3, :cond_2

    .line 34
    const-string v5, "advertising_id"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "advertisingID":Ljava/lang/String;
    new-instance v1, Lcom/appsflyer/AdvertisingIdObject;

    .end local v1    # "advertisingIdObject":Lcom/appsflyer/AdvertisingIdObject;
    sget-object v5, Lcom/appsflyer/AdvertisingIdObject$IdType;->AMAZON:Lcom/appsflyer/AdvertisingIdObject$IdType;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v0, v6}, Lcom/appsflyer/AdvertisingIdObject;-><init>(Lcom/appsflyer/AdvertisingIdObject$IdType;Ljava/lang/String;Z)V

    .line 36
    .restart local v1    # "advertisingIdObject":Lcom/appsflyer/AdvertisingIdObject;
    goto :goto_0

    .end local v0    # "advertisingID":Ljava/lang/String;
    :cond_2
    if-ne v3, v7, :cond_3

    .line 38
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :cond_3
    const-string v0, ""

    .line 42
    .restart local v0    # "advertisingID":Ljava/lang/String;
    :try_start_0
    const-string v5, "advertising_id"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_1
    new-instance v1, Lcom/appsflyer/AdvertisingIdObject;

    .end local v1    # "advertisingIdObject":Lcom/appsflyer/AdvertisingIdObject;
    sget-object v5, Lcom/appsflyer/AdvertisingIdObject$IdType;->AMAZON:Lcom/appsflyer/AdvertisingIdObject$IdType;

    const/4 v6, 0x1

    invoke-direct {v1, v5, v0, v6}, Lcom/appsflyer/AdvertisingIdObject;-><init>(Lcom/appsflyer/AdvertisingIdObject$IdType;Ljava/lang/String;Z)V

    .restart local v1    # "advertisingIdObject":Lcom/appsflyer/AdvertisingIdObject;
    goto :goto_0

    .line 43
    :catch_0
    move-exception v4

    .line 44
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "Couldn\'t fetch Amazon Advertising ID (Ad-Tracking is limited!)"

    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
