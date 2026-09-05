.class public final enum Lcom/microsoft/bond/ProtocolCapability;
.super Ljava/lang/Enum;
.source "ProtocolCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/bond/ProtocolCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/ProtocolCapability;

.field public static final enum CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

.field public static final enum CAN_SEEK:Lcom/microsoft/bond/ProtocolCapability;

.field public static final enum CLONEABLE:Lcom/microsoft/bond/ProtocolCapability;

.field public static final enum PASS_THROUGH:Lcom/microsoft/bond/ProtocolCapability;

.field public static final enum TAGGED:Lcom/microsoft/bond/ProtocolCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/bond/ProtocolCapability;

    const-string v1, "TAGGED"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/bond/ProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    .line 5
    new-instance v0, Lcom/microsoft/bond/ProtocolCapability;

    const-string v1, "CLONEABLE"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/bond/ProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->CLONEABLE:Lcom/microsoft/bond/ProtocolCapability;

    .line 6
    new-instance v0, Lcom/microsoft/bond/ProtocolCapability;

    const-string v1, "CAN_SEEK"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/bond/ProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_SEEK:Lcom/microsoft/bond/ProtocolCapability;

    .line 7
    new-instance v0, Lcom/microsoft/bond/ProtocolCapability;

    const-string v1, "CAN_OMIT_FIELDS"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/bond/ProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    .line 8
    new-instance v0, Lcom/microsoft/bond/ProtocolCapability;

    const-string v1, "PASS_THROUGH"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/bond/ProtocolCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->PASS_THROUGH:Lcom/microsoft/bond/ProtocolCapability;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/bond/ProtocolCapability;

    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->TAGGED:Lcom/microsoft/bond/ProtocolCapability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CLONEABLE:Lcom/microsoft/bond/ProtocolCapability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_SEEK:Lcom/microsoft/bond/ProtocolCapability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/bond/ProtocolCapability;->PASS_THROUGH:Lcom/microsoft/bond/ProtocolCapability;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/bond/ProtocolCapability;->$VALUES:[Lcom/microsoft/bond/ProtocolCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/ProtocolCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/bond/ProtocolCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/ProtocolCapability;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/bond/ProtocolCapability;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->$VALUES:[Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {v0}, [Lcom/microsoft/bond/ProtocolCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/ProtocolCapability;

    return-object v0
.end method
