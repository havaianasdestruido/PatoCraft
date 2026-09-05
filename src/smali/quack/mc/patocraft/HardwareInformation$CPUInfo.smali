.class public Lquack/mc/patocraft/HardwareInformation$CPUInfo;
.super Ljava/lang/Object;
.source "HardwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lquack/mc/patocraft/HardwareInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPUInfo"
.end annotation


# instance fields
.field private final cpuLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final numberCPUCores:I


# direct methods
.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0
    .param p2, "numberCPUCores"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "cpuLines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    .line 24
    iput p2, p0, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->numberCPUCores:I

    .line 25
    return-void
.end method


# virtual methods
.method getCPULine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getNumberCPUCores()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->numberCPUCores:I

    return v0
.end method
