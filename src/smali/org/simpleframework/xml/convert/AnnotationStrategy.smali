.class public Lorg/simpleframework/xml/convert/AnnotationStrategy;
.super Ljava/lang/Object;
.source "AnnotationStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;-><init>(Lorg/simpleframework/xml/strategy/Strategy;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterScanner;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 84
    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .locals 1
    .param p1, "value"    # Lorg/simpleframework/xml/strategy/Value;

    .prologue
    .line 196
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
    .line 122
    .local p2, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    iget-object v4, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v4, p1, p3}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    .line 123
    .local v1, "converter":Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/stream/InputNode;

    .line 125
    .local v3, "parent":Lorg/simpleframework/xml/stream/InputNode;
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1, v3}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "data":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "actual":Ljava/lang/Class;
    if-eqz p3, :cond_0

    .line 130
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 132
    :cond_0
    new-instance v4, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v4, p3, v2, v0}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object p3, v4

    .line 134
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
    .line 176
    .local p3, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    iget-object v2, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->scanner:Lorg/simpleframework/xml/convert/ConverterScanner;

    invoke-virtual {v2, p1, p2}, Lorg/simpleframework/xml/convert/ConverterScanner;->getConverter(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 177
    .local v0, "converter":Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    .line 179
    .local v1, "parent":Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, v1, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 181
    const/4 v2, 0x1

    .line 183
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
    .line 100
    .local p2, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 102
    .local v0, "value":Lorg/simpleframework/xml/strategy/Value;
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    .end local v0    # "value":Lorg/simpleframework/xml/strategy/Value;
    :goto_0
    return-object v0

    .restart local v0    # "value":Lorg/simpleframework/xml/strategy/Value;
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

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
    .line 153
    .local p3, "node":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/AnnotationStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    .line 155
    .local v0, "reference":Z
    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/AnnotationStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    .line 158
    .end local v0    # "reference":Z
    :cond_0
    return v0
.end method
