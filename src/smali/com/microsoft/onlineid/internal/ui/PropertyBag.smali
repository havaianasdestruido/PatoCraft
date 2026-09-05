.class public Lcom/microsoft/onlineid/internal/ui/PropertyBag;
.super Ljava/lang/Object;
.source "PropertyBag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    }
.end annotation


# instance fields
.field private final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    .line 149
    return-void
.end method


# virtual methods
.method public get(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public remove(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public set(Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/PropertyBag;->_values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method
