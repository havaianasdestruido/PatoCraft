.class public Lcom/microsoft/onlineid/internal/Applications;
.super Ljava/lang/Object;
.source "Applications.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClientAppUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/microsoft/onlineid/internal/Applications;->getFirstCertHash(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/microsoft/onlineid/sts/Cryptography;->encodeBase32([B)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "certHashBase32":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-app://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getFirstCertHash(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 12
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 46
    invoke-static {}, Lcom/microsoft/onlineid/sts/Cryptography;->getShaDigester()Ljava/security/MessageDigest;

    move-result-object v1

    .line 47
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-static {p0, p1}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->getAppSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 49
    .local v7, "signatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 50
    aget-object v8, v7, v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 52
    .local v2, "firstCertHash":[B
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v5

    .line 53
    .local v5, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    const-string v8, "isCertificateTelemetryNeeded"

    invoke-virtual {v5, v8}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v0, "appSignatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    array-length v10, v7

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v6, v7, v8

    .line 58
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 59
    .local v3, "hash":[B
    const/4 v11, 0x2

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "hashBase64":Ljava/lang/String;
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v0    # "appSignatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v2    # "firstCertHash":[B
    .end local v3    # "hash":[B
    .end local v4    # "hashBase64":Ljava/lang/String;
    .end local v5    # "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    .end local v6    # "signature":Landroid/content/pm/Signature;
    :cond_0
    move v8, v9

    .line 49
    goto :goto_0

    .line 62
    .restart local v0    # "appSignatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v2    # "firstCertHash":[B
    .restart local v5    # "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    :cond_1
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 63
    const-string v8, "isCertificateTelemetryNeeded"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/microsoft/onlineid/internal/configuration/Settings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "appSignatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_2
    return-object v2
.end method
