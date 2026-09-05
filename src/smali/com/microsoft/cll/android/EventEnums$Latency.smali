.class public final enum Lcom/microsoft/cll/android/EventEnums$Latency;
.super Ljava/lang/Enum;
.source "EventEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Latency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/cll/android/EventEnums$Latency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

.field public static final enum LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v1, "LatencyUnspecified"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    .line 29
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v1, "LatencyNormal"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    .line 30
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    const-string v1, "LatencyRealtime"

    const/16 v2, 0x200

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/cll/android/EventEnums$Latency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/cll/android/EventEnums$Latency;

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyUnspecified:Lcom/microsoft/cll/android/EventEnums$Latency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Latency;->id:I

    .line 37
    return-void
.end method

.method static FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "REALTIME"

    if-ne p0, v0, :cond_0

    .line 43
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyRealtime:Lcom/microsoft/cll/android/EventEnums$Latency;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->LatencyNormal:Lcom/microsoft/cll/android/EventEnums$Latency;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Latency;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Latency;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Latency;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Latency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Latency;

    return-object v0
.end method
