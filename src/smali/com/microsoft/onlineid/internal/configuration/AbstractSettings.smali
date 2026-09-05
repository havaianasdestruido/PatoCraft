.class public abstract Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.super Ljava/lang/Object;
.source "AbstractSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    }
.end annotation


# instance fields
.field protected final _preferences:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract edit()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.end method

.method protected getBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getString(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;->_preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
