.class public Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
.super Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SharedPreferences$Editor;Lcom/microsoft/onlineid/sts/ServerConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "x1"    # Lcom/microsoft/onlineid/sts/ServerConfig$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    .line 461
    return-object p0
.end method

.method public bridge synthetic setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 0
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    .line 489
    return-object p0
.end method

.method public bridge synthetic setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 0
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    .line 468
    return-object p0
.end method

.method public bridge synthetic setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 0
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    .line 475
    return-object p0
.end method

.method public bridge synthetic setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Editor;"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;

    .line 482
    return-object p0
.end method

.method public setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;
    .locals 3
    .param p1, "setting"    # Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    .param p2, "value"    # Ljava/net/URL;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    return-object p0
.end method
