.class public Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;
.super Ljava/lang/Object;
.source "TelephonyManagerReader.java"

# interfaces
.implements Lcom/microsoft/onlineid/userdata/IPhoneNumberReader;


# instance fields
.field private final _telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/telephony/TelephonyManager;)V

    .line 28
    return-void
.end method

.method constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 40
    return-void
.end method


# virtual methods
.method public getIsoCountryCode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 82
    .local v0, "countryCode":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "User data"

    const-string v5, "Country code"

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Does not exist in Telephony Manager"

    .line 90
    :goto_1
    invoke-interface {v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 97
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain country code via getSimCountryIso(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "Exists in Telephony Manager"

    goto :goto_1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 55
    .local v1, "phoneNumber":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->_telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "User data"

    const-string v5, "Mobile phone number"

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Does not exist in Telephony Manager"

    .line 63
    :goto_1
    invoke-interface {v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 70
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not obtain phone number via getLine1Number(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v2, "Exists in Telephony Manager"

    goto :goto_1
.end method
