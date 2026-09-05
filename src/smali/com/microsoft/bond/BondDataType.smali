.class public final enum Lcom/microsoft/bond/BondDataType;
.super Ljava/lang/Enum;
.source "BondDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/bond/BondDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_BOOL:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_FLOAT:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT16:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT32:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT64:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_INT8:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_LIST:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_MAP:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_SET:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STOP:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STRING:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_STRUCT:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT16:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT32:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT64:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UINT8:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

.field public static final enum BT_WSTRING:Lcom/microsoft/bond/BondDataType;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;


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

    .line 24
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_STOP"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    .line 25
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_STOP_BASE"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    .line 26
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_BOOL"

    invoke-direct {v0, v1, v6, v6}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    .line 27
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_UINT8"

    invoke-direct {v0, v1, v7, v7}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    .line 28
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_UINT16"

    invoke-direct {v0, v1, v8, v8}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    .line 29
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_UINT32"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    .line 30
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_UINT64"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    .line 31
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_FLOAT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    .line 32
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_DOUBLE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    .line 33
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_STRING"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    .line 34
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_STRUCT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    .line 35
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_LIST"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    .line 36
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_SET"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_SET:Lcom/microsoft/bond/BondDataType;

    .line 37
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_MAP"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    .line 38
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_INT8"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    .line 39
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_INT16"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    .line 40
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_INT32"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    .line 41
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_INT64"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    .line 42
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_WSTRING"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    .line 43
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "BT_UNAVAILABLE"

    const/16 v2, 0x13

    const/16 v3, 0x7f

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    .line 44
    new-instance v0, Lcom/microsoft/bond/BondDataType;

    const-string v1, "__INVALID_ENUM_VALUE"

    const/16 v2, 0x14

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/BondDataType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;

    .line 23
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/microsoft/bond/BondDataType;

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_SET:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/microsoft/bond/BondDataType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/bond/BondDataType;->$VALUES:[Lcom/microsoft/bond/BondDataType;

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
    iput p3, p0, Lcom/microsoft/bond/BondDataType;->value:I

    .line 50
    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/BondDataType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 99
    sget-object v0, Lcom/microsoft/bond/BondDataType;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/BondDataType;

    :goto_0
    return-object v0

    .line 59
    :sswitch_0
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 61
    :sswitch_1
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STOP_BASE:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 63
    :sswitch_2
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_BOOL:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 65
    :sswitch_3
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT8:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 67
    :sswitch_4
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT16:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 69
    :sswitch_5
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT32:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 71
    :sswitch_6
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UINT64:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 73
    :sswitch_7
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_FLOAT:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 75
    :sswitch_8
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_DOUBLE:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 77
    :sswitch_9
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 79
    :sswitch_a
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 81
    :sswitch_b
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_LIST:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 83
    :sswitch_c
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_SET:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 85
    :sswitch_d
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_MAP:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 87
    :sswitch_e
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT8:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 89
    :sswitch_f
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT16:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 91
    :sswitch_10
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT32:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 93
    :sswitch_11
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_INT64:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 95
    :sswitch_12
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_WSTRING:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 97
    :sswitch_13
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x7f -> :sswitch_13
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/BondDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/bond/BondDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/BondDataType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/bond/BondDataType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/bond/BondDataType;->$VALUES:[Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v0}, [Lcom/microsoft/bond/BondDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/BondDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/microsoft/bond/BondDataType;->value:I

    return v0
.end method
