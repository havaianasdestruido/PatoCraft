.class final enum Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
.super Ljava/lang/Enum;
.source "UTCCommonDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field public static final enum CELLULAR:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field public static final enum WIFI:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

.field public static final enum WIRED:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIFI:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 29
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    const-string v1, "CELLULAR"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->CELLULAR:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 30
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    const-string v1, "WIRED"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIRED:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIFI:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->CELLULAR:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->WIRED:Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->$VALUES:[Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->value:I

    .line 42
    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->setValue(I)V

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->$VALUES:[Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel$NetworkType;->value:I

    .line 39
    return-void
.end method
