.class public final enum Lcom/microsoft/onlineid/internal/ApiResult$Extras;
.super Ljava/lang/Enum;
.source "ApiResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ApiResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ApiResult$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

.field public static final enum WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v1, "Exception"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    .line 42
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v1, "UINeededIntent"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    .line 48
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v1, "WebFlowTelemetryEvents"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    const-string v1, "WebFlowTelemetryAllEventsCaptured"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->Exception:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->UINeededIntent:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryEvents:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->WebFlowTelemetryAllEventsCaptured:Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ApiResult$Extras;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ApiResult$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.microsoft.msa.authenticator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiResult$Extras;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
