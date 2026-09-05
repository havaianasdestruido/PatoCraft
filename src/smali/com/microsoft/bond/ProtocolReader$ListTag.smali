.class public Lcom/microsoft/bond/ProtocolReader$ListTag;
.super Ljava/lang/Object;
.source "ProtocolReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/ProtocolReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTag"
.end annotation


# instance fields
.field public final size:I

.field public final type:Lcom/microsoft/bond/BondDataType;


# direct methods
.method public constructor <init>(ILcom/microsoft/bond/BondDataType;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "type"    # Lcom/microsoft/bond/BondDataType;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    .line 169
    iput-object p2, p0, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    .line 170
    return-void
.end method
