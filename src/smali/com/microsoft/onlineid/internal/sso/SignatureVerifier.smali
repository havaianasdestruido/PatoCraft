.class public Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _config:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    .line 42
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "localApplicationContext"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 55
    return-void
.end method


# virtual methods
.method public isPackageInUid(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTrusted(Ljava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 68
    const/4 v7, 0x1

    .line 119
    :cond_0
    :goto_0
    return v7

    .line 73
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_applicationContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v9

    .line 74
    .local v9, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "shouldCheckSsoCertificatesInDebug"

    invoke-virtual {v9, v12}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isSettingEnabled(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 76
    const/4 v7, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v6, 0x0

    .line 82
    .local v6, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_packageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/microsoft/onlineid/internal/sso/SignatureVerifier;->_config:Lcom/microsoft/onlineid/sts/ServerConfig;

    sget-object v13, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {v12, v13}, Lcom/microsoft/onlineid/sts/ServerConfig;->getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;

    move-result-object v5

    .line 93
    .local v5, "hashAllowedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v11, "untrustedHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/onlineid/sts/Cryptography;->getSha256Digester()Ljava/security/MessageDigest;

    move-result-object v2

    .line 97
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v7, 0x1

    .line 98
    .local v7, "isTrusted":Z
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_4

    aget-object v10, v13, v12

    .line 100
    .local v10, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v15

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "hash":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v5    # "hashAllowedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "isTrusted":Z
    .end local v10    # "signature":Landroid/content/pm/Signature;
    .end local v11    # "untrustedHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 86
    .local v3, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot check trust state of missing package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "message":Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v12, 0x0

    invoke-static {v12, v8}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 89
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 112
    .end local v3    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "message":Ljava/lang/String;
    .restart local v1    # "appHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "hashAllowedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "isTrusted":Z
    .restart local v11    # "untrustedHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-nez v7, :cond_0

    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not trusting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " because some hashes are not in the allowed list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 115
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Hashes for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " are: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    .line 116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Allowed list is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
