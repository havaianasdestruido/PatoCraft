.class public Lcom/microsoft/onlineid/internal/configuration/Setting;
.super Ljava/lang/Object;
.source "Setting.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/configuration/ISetting;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/onlineid/internal/configuration/ISetting",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final _settingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/microsoft/onlineid/internal/configuration/Setting;, "Lcom/microsoft/onlineid/internal/configuration/Setting<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_settingName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_defaultValue:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/microsoft/onlineid/internal/configuration/Setting;, "Lcom/microsoft/onlineid/internal/configuration/Setting<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getSettingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/onlineid/internal/configuration/Setting;, "Lcom/microsoft/onlineid/internal/configuration/Setting<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Setting;->_settingName:Ljava/lang/String;

    return-object v0
.end method
