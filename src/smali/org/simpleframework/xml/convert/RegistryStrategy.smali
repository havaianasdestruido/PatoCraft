.class public Lorg/simpleframework/xml/convert/RegistryStrategy;
.super Ljava/lang/Object;
.source "RegistryStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final registry:Lorg/simpleframework/xml/convert/Registry;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;)V
    .locals 1
    .param p1, "registry"    # Lorg/simpleframework/xml/convert/Registry;

    .prologue
    .line 72
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 0
    .param p1, "registry"    # Lorg/simpleframework/xml/convert/Registry;
    .param p2, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    .line 86
    iput-object p2, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 87
    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .locals 1
    .param p1, "value"    # Lorg/simpleframework/xml/strategy/Value;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "real":Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 202
    .local v0, "real":Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 203
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method

.method private read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;
    .locals 5
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Lorg/simpleframework/xml/strategy/Value;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    .line 126
    .local v1, "converter":Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/stream/InputNode;

    .line 128
    .local v3, "source":Lorg/simpleframework/xml/stream/InputNode;
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1, v3}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "data":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "actual":Ljava/lang/Class;
    if-eqz p3, :cond_0

    .line 133
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 135
    :cond_0
    new-instance v4, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v4, p3, v2, v0}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object p3, v4

    .line 137
    .end local v0    # "actual":Ljava/lang/Class;
    .end local v2    # "data":Ljava/lang/Object;
    .end local p3    # "value":Lorg/simpleframework/xml/strategy/Value;
    :cond_1
    return-object p3
.end method

.method private write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 3
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    .local p3, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 180
    .local v0, "converter":Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    .line 182
    .local v1, "source":Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, v1, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 184
    const/4 v2, 0x1

    .line 186
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 105
    .local v0, "value":Lorg/simpleframework/xml/strategy/Value;
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    .end local v0    # "value":Lorg/simpleframework/xml/strategy/Value;
    :goto_0
    return-object v0

    .restart local v0    # "value":Lorg/simpleframework/xml/strategy/Value;
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 2
    .param p1, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p2, "value"    # Ljava/lang/Object;
    .param p4, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    .line 158
    .local v0, "reference":Z
    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    .line 161
    .end local v0    # "reference":Z
    :cond_0
    return v0
.end method
