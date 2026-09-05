.class public Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
.super Ljava/lang/Object;
.source "AbstractSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/configuration/AbstractSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field protected final _editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method protected constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    .line 91
    return-void
.end method


# virtual methods
.method protected clear()Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 113
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method protected setBoolean(Lcom/microsoft/onlineid/internal/configuration/ISetting;Z)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 2
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    return-object p0
.end method

.method protected setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 2
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<+",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    return-object p0
.end method

.method protected setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 2
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
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    return-object p0
.end method

.method protected setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;
    .locals 2
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
            "Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<+Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/AbstractSettings$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 165
    return-object p0
.end method
