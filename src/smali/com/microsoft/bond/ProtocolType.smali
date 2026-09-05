.class public final enum Lcom/microsoft/bond/ProtocolType;
.super Ljava/lang/Enum;
.source "ProtocolType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/bond/ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/ProtocolType;

.field public static final enum COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "MARSHALED_PROTOCOL"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 27
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "MAFIA_PROTOCOL"

    const/16 v2, 0x464d

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 31
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "COMPACT_PROTOCOL"

    const/16 v2, 0x4243

    invoke-direct {v0, v1, v6, v2}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 35
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "JSON_PROTOCOL"

    const/16 v2, 0x534a

    invoke-direct {v0, v1, v7, v2}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 39
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "PRETTY_JSON_PROTOCOL"

    const/16 v2, 0x504a

    invoke-direct {v0, v1, v8, v2}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 43
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "SIMPLE_PROTOCOL"

    const/4 v2, 0x5

    const/16 v3, 0x5053

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    .line 44
    new-instance v0, Lcom/microsoft/bond/ProtocolType;

    const-string v1, "__INVALID_ENUM_VALUE"

    const/4 v2, 0x6

    const/16 v3, 0x534b

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/ProtocolType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/microsoft/bond/ProtocolType;

    sget-object v1, Lcom/microsoft/bond/ProtocolType;->MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/bond/ProtocolType;->MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/bond/ProtocolType;->JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/bond/ProtocolType;->PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/bond/ProtocolType;->SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/bond/ProtocolType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/bond/ProtocolType;->$VALUES:[Lcom/microsoft/bond/ProtocolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/microsoft/bond/ProtocolType;->value:I

    .line 50
    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/ProtocolType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 71
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/ProtocolType;

    :goto_0
    return-object v0

    .line 59
    :sswitch_0
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->MARSHALED_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 61
    :sswitch_1
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->MAFIA_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 63
    :sswitch_2
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->COMPACT_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 65
    :sswitch_3
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 67
    :sswitch_4
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->PRETTY_JSON_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 69
    :sswitch_5
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->SIMPLE_PROTOCOL:Lcom/microsoft/bond/ProtocolType;

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4243 -> :sswitch_2
        0x464d -> :sswitch_1
        0x504a -> :sswitch_4
        0x5053 -> :sswitch_5
        0x534a -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/ProtocolType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/microsoft/bond/ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/ProtocolType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/bond/ProtocolType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/bond/ProtocolType;->$VALUES:[Lcom/microsoft/bond/ProtocolType;

    invoke-virtual {v0}, [Lcom/microsoft/bond/ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/ProtocolType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/microsoft/bond/ProtocolType;->value:I

    return v0
.end method
