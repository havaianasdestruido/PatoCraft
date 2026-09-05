.class public Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private final _builder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    .line 35
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Landroid/os/Bundle;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "options"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    .end local p0    # "this":Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v1, "str"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    return-object p0
.end method

.method public add(Ljava/util/List;)Lcom/microsoft/onlineid/internal/Intents$DataBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/internal/Intents$DataBuilder;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "component":Ljava/lang/String;
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 70
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    :cond_1
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/Intents$DataBuilder;->_builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
