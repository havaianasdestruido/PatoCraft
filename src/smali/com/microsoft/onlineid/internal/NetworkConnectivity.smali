.class public Lcom/microsoft/onlineid/internal/NetworkConnectivity;
.super Ljava/lang/Object;
.source "NetworkConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 193
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private static getMobileNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 100
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :pswitch_0
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile4G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    :goto_0
    return-object v1

    .line 108
    :pswitch_1
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile2G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 117
    :pswitch_2
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile3G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 66
    .local v0, "network":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->None:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 87
    :goto_0
    return-object v1

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    :pswitch_0
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Unknown:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Bluetooth:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Ethernet:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getMobileNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object v1

    goto :goto_0

    .line 84
    :pswitch_4
    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->WiFi:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeForAnalytics(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 136
    sget-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$1;->$SwitchMap$com$microsoft$onlineid$internal$NetworkConnectivity$NetworkType:[I

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "Not connected"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "WiFi"

    goto :goto_0

    .line 145
    :pswitch_2
    const-string v0, "Mobile"

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v0, "Ethernet"

    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "Bluetooth"

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getNetworkTypeForServerTelemetry(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 165
    sget-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$1;->$SwitchMap$com$microsoft$onlineid$internal$NetworkConnectivity$NetworkType:[I

    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkType(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 172
    :pswitch_2
    const-string v0, "2G"

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, "3G"

    goto :goto_0

    .line 176
    :pswitch_4
    const-string v0, "4G"

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 199
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static hasInternetConnectivity(Landroid/content/Context;)Z
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
