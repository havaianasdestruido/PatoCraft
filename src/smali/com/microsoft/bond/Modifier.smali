.class public final enum Lcom/microsoft/bond/Modifier;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/bond/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/bond/Modifier;

.field public static final enum Optional:Lcom/microsoft/bond/Modifier;

.field public static final enum Required:Lcom/microsoft/bond/Modifier;

.field public static final enum RequiredOptional:Lcom/microsoft/bond/Modifier;

.field public static final enum __INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/microsoft/bond/Modifier;

    const-string v1, "Optional"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    .line 21
    new-instance v0, Lcom/microsoft/bond/Modifier;

    const-string v1, "Required"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    .line 22
    new-instance v0, Lcom/microsoft/bond/Modifier;

    const-string v1, "RequiredOptional"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/Modifier;->RequiredOptional:Lcom/microsoft/bond/Modifier;

    .line 23
    new-instance v0, Lcom/microsoft/bond/Modifier;

    const-string v1, "__INVALID_ENUM_VALUE"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/bond/Modifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/bond/Modifier;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/bond/Modifier;

    sget-object v1, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/bond/Modifier;->RequiredOptional:Lcom/microsoft/bond/Modifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/bond/Modifier;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/bond/Modifier;->$VALUES:[Lcom/microsoft/bond/Modifier;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/microsoft/bond/Modifier;->value:I

    .line 29
    return-void
.end method

.method public static fromValue(I)Lcom/microsoft/bond/Modifier;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/microsoft/bond/Modifier;->__INVALID_ENUM_VALUE:Lcom/microsoft/bond/Modifier;

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    sget-object v0, Lcom/microsoft/bond/Modifier;->Optional:Lcom/microsoft/bond/Modifier;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/microsoft/bond/Modifier;->Required:Lcom/microsoft/bond/Modifier;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/microsoft/bond/Modifier;->RequiredOptional:Lcom/microsoft/bond/Modifier;

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/bond/Modifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/microsoft/bond/Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/bond/Modifier;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/bond/Modifier;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/bond/Modifier;->$VALUES:[Lcom/microsoft/bond/Modifier;

    invoke-virtual {v0}, [Lcom/microsoft/bond/Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/bond/Modifier;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/microsoft/bond/Modifier;->value:I

    return v0
.end method
