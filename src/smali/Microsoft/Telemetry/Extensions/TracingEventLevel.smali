.class public final enum LMicrosoft/Telemetry/Extensions/TracingEventLevel;
.super Ljava/lang/Enum;
.source "TracingEventLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMicrosoft/Telemetry/Extensions/TracingEventLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

.field public static final enum __INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;


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

    .line 21
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "None"

    invoke-direct {v0, v1, v4, v4}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 22
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "Critical"

    invoke-direct {v0, v1, v5, v5}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 23
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "Error"

    invoke-direct {v0, v1, v6, v6}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 24
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "Informational"

    invoke-direct {v0, v1, v7, v7}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 25
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "LogAlways"

    invoke-direct {v0, v1, v8, v8}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 26
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "Verbose"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 27
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "Warning"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 28
    new-instance v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    const-string v1, "__INVALID_ENUM_VALUE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, LMicrosoft/Telemetry/Extensions/TracingEventLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->__INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    sget-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v1, v0, v4

    sget-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v1, v0, v5

    sget-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v1, v0, v6

    sget-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v1, v0, v7

    sget-object v1, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->__INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    aput-object v2, v0, v1

    sput-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->$VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->value:I

    .line 34
    return-void
.end method

.method public static fromValue(I)LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 57
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->__INVALID_ENUM_VALUE:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->None:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Critical:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Error:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 49
    :pswitch_3
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Informational:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->LogAlways:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 53
    :pswitch_5
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Verbose:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 55
    :pswitch_6
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->Warning:LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object v0
.end method

.method public static values()[LMicrosoft/Telemetry/Extensions/TracingEventLevel;
    .locals 1

    .prologue
    .line 20
    sget-object v0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->$VALUES:[LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    invoke-virtual {v0}, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMicrosoft/Telemetry/Extensions/TracingEventLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, LMicrosoft/Telemetry/Extensions/TracingEventLevel;->value:I

    return v0
.end method
