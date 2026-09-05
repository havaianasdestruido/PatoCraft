.class public Lcom/microsoft/bond/ProtocolReader$FieldTag;
.super Ljava/lang/Object;
.source "ProtocolReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/ProtocolReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldTag"
.end annotation


# instance fields
.field public final id:I

.field public final type:Lcom/microsoft/bond/BondDataType;


# direct methods
.method constructor <init>(Lcom/microsoft/bond/BondDataType;I)V
    .locals 0
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->type:Lcom/microsoft/bond/BondDataType;

    .line 159
    iput p2, p0, Lcom/microsoft/bond/ProtocolReader$FieldTag;->id:I

    .line 160
    return-void
.end method
