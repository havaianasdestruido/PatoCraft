.class public final enum Lcom/microsoft/bond/ProtocolVersion;
.super Ljava/lang/Enum;
.source "ProtocolVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/bond/ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/ProtocolVersion;

.field public static final enum ONE:Lcom/microsoft/bond/ProtocolVersion;

.field public static final enum TWO:Lcom/microsoft/bond/ProtocolVersion;


# instance fields
.field private value:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4
    new-instance v0, Lcom/microsoft/bond/ProtocolVersion;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/bond/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    .line 5
    new-instance v0, Lcom/microsoft/bond/ProtocolVersion;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v2, v4}, Lcom/microsoft/bond/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    .line 3
    new-array v0, v4, [Lcom/microsoft/bond/ProtocolVersion;

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/bond/ProtocolVersion;->$VALUES:[Lcom/microsoft/bond/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    int-to-short v0, p3

    iput-short v0, p0, Lcom/microsoft/bond/ProtocolVersion;->value:S

    .line 11
    return-void
.end method

.method public static fromValue(S)Lcom/microsoft/bond/ProtocolVersion;
    .locals 1
    .param p0, "value"    # S

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->ONE:Lcom/microsoft/bond/ProtocolVersion;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/ProtocolVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/bond/ProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/ProtocolVersion;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/bond/ProtocolVersion;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->$VALUES:[Lcom/microsoft/bond/ProtocolVersion;

    invoke-virtual {v0}, [Lcom/microsoft/bond/ProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/ProtocolVersion;

    return-object v0
.end method


# virtual methods
.method public getValue()S
    .locals 1

    .prologue
    .line 14
    iget-short v0, p0, Lcom/microsoft/bond/ProtocolVersion;->value:S

    return v0
.end method
