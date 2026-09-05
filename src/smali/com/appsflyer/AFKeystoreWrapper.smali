.class Lcom/appsflyer/AFKeystoreWrapper;
.super Ljava/lang/Object;
.source "AFKeystoreWrapper.java"


# static fields
.field private static final AF_KEYSTORE_EXTERNAL_DELIMITER:Ljava/lang/String; = ","

.field private static final AF_KEYSTORE_INTERNAL_DELIMITER:Ljava/lang/String; = "="

.field private static final AF_KEYSTORE_PREFIX:Ljava/lang/String; = "com.appsflyer"

.field static final AF_KEYSTORE_REINSTALL_COUNTER:Ljava/lang/String; = "KSAppsFlyerRICounter"

.field static final AF_KEYSTORE_UID:Ljava/lang/String; = "KSAppsFlyerId"

.field private static final CN_ANDROID_SDK_O_APPS_FLYER:Ljava/lang/String; = "CN=AndroidSDK, O=AppsFlyer"

.field private static final KEYSTORE_CERTIFICATE_VALIDITY_YEARS:I = 0x5

.field private static final PROVIDER_ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"


# instance fields
.field private context:Landroid/content/Context;

.field private keystore:Ljava/security/KeyStore;

.field private final lock:Ljava/lang/Object;

.field private reInstallCounter:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->context:Landroid/content/Context;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 50
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->initKeyStore()V

    .line 51
    return-void
.end method

.method private clearAllAFKeys()V
    .locals 6

    .prologue
    .line 196
    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 199
    :try_start_1
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->isAppsFlyerPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found AF key. Removing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v3, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 208
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    monitor-exit v4

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private createKey(Ljava/lang/String;)V
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating a new key with alias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 123
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 124
    .local v4, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 125
    .local v1, "end":Ljava/util/Calendar;
    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v6, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v5, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v5, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_1

    .line 130
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v7, 0x3

    invoke-direct {v5, p1, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v7, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 132
    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 133
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 134
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 145
    :cond_0
    :goto_0
    const-string v5, "RSA"

    const-string v7, "AndroidKeyStore"

    invoke-static {v5, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 146
    .local v2, "generator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 151
    .end local v2    # "generator":Ljava/security/KeyPairGenerator;
    :goto_1
    monitor-exit v6

    .line 155
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v3    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v4    # "start":Ljava/util/Calendar;
    :goto_2
    return-void

    .line 136
    .restart local v1    # "end":Ljava/util/Calendar;
    .restart local v3    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v4    # "start":Ljava/util/Calendar;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v5, v7, :cond_0

    .line 137
    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v7, p0, Lcom/appsflyer/AFKeystoreWrapper;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v5, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    new-instance v7, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v7, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 140
    invoke-virtual {v5, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    .line 141
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    .line 142
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alias already exists: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v3    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v4    # "start":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " occurred"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private deleteKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting key with alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 162
    monitor-exit v2

    .line 166
    :goto_0
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occurred"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateAliasString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "com.appsflyer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    const-string v1, "KSAppsFlyerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "KSAppsFlyerRICounter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initKeyStore()V
    .locals 3

    .prologue
    .line 54
    const-string v1, "Initialising KeyStore.."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 56
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    .line 57
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "Couldn\'t load keystore instance of type: AndroidKeyStore"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private isAppsFlyerPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "com.appsflyer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method createFirstInstallData(Ljava/lang/String;)V
    .locals 1
    .param p1, "appsFlyerUID"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->createKey(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method getReInstallCounter()I
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    monitor-exit v1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method incrementReInstallCounter()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "currentKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 80
    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->deleteKey(Ljava/lang/String;)V

    .line 81
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/appsflyer/AFKeystoreWrapper;->createKey(Ljava/lang/String;)V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method loadData()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "isDataExists":Z
    iget-object v8, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 92
    :try_start_0
    iget-object v7, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 94
    :try_start_1
    iget-object v7, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v7}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 95
    .local v2, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/appsflyer/AFKeystoreWrapper;->isAppsFlyerPrefix(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "afData":[Ljava/lang/String;
    array-length v7, v0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a matching AF key with alias:\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x1

    .line 102
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "ksId":[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "ksRICounter":[Ljava/lang/String;
    array-length v7, v5

    if-ne v7, v10, :cond_1

    array-length v7, v6

    if-ne v7, v10, :cond_1

    .line 105
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    .line 106
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v0    # "afData":[Ljava/lang/String;
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "ksId":[Ljava/lang/String;
    .end local v6    # "ksRICounter":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v8

    .line 117
    return v4

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t list KeyStore Aliases: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method
