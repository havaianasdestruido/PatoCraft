.class public Lcom/microsoft/bond/Void$Schema;
.super Ljava/lang/Object;
.source "Void.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Schema"
.end annotation


# static fields
.field public static final metadata:Lcom/microsoft/bond/Metadata;

.field public static final schemaDef:Lcom/microsoft/bond/SchemaDef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/microsoft/bond/Metadata;

    invoke-direct {v0}, Lcom/microsoft/bond/Metadata;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Void$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    .line 37
    sget-object v0, Lcom/microsoft/bond/Void$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "Void"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/microsoft/bond/Void$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    const-string v1, "com.microsoft.bond.Void"

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/microsoft/bond/SchemaDef;

    invoke-direct {v0}, Lcom/microsoft/bond/SchemaDef;-><init>()V

    sput-object v0, Lcom/microsoft/bond/Void$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    .line 42
    sget-object v0, Lcom/microsoft/bond/Void$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    sget-object v1, Lcom/microsoft/bond/Void$Schema;->schemaDef:Lcom/microsoft/bond/SchemaDef;

    invoke-static {v1}, Lcom/microsoft/bond/Void$Schema;->getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/SchemaDef;->setRoot(Lcom/microsoft/bond/TypeDef;)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStructDef(Lcom/microsoft/bond/SchemaDef;)S
    .locals 4
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "pos":S
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/bond/StructDef;

    invoke-virtual {v2}, Lcom/microsoft/bond/StructDef;->getMetadata()Lcom/microsoft/bond/Metadata;

    move-result-object v2

    sget-object v3, Lcom/microsoft/bond/Void$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    if-ne v2, v3, :cond_0

    .line 70
    :goto_1
    return v0

    .line 57
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Lcom/microsoft/bond/StructDef;

    invoke-direct {v1}, Lcom/microsoft/bond/StructDef;-><init>()V

    .line 66
    .local v1, "structDef":Lcom/microsoft/bond/StructDef;
    invoke-virtual {p0}, Lcom/microsoft/bond/SchemaDef;->getStructs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v2, Lcom/microsoft/bond/Void$Schema;->metadata:Lcom/microsoft/bond/Metadata;

    invoke-virtual {v1, v2}, Lcom/microsoft/bond/StructDef;->setMetadata(Lcom/microsoft/bond/Metadata;)V

    goto :goto_1
.end method

.method public static getTypeDef(Lcom/microsoft/bond/SchemaDef;)Lcom/microsoft/bond/TypeDef;
    .locals 2
    .param p0, "schema"    # Lcom/microsoft/bond/SchemaDef;

    .prologue
    .line 47
    new-instance v0, Lcom/microsoft/bond/TypeDef;

    invoke-direct {v0}, Lcom/microsoft/bond/TypeDef;-><init>()V

    .line 48
    .local v0, "type":Lcom/microsoft/bond/TypeDef;
    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setId(Lcom/microsoft/bond/BondDataType;)V

    .line 49
    invoke-static {p0}, Lcom/microsoft/bond/Void$Schema;->getStructDef(Lcom/microsoft/bond/SchemaDef;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/TypeDef;->setStruct_def(S)V

    .line 50
    return-object v0
.end method
