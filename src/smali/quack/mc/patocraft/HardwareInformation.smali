.class public Lquack/mc/patocraft/HardwareInformation;
.super Ljava/lang/Object;
.source "HardwareInformation.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lquack/mc/patocraft/HardwareInformation$CPUInfo;
    }
.end annotation


# static fields
.field private static final cpuInfo:Lquack/mc/patocraft/HardwareInformation$CPUInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lquack/mc/patocraft/HardwareInformation;->getCPUInfo()Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    move-result-object v0

    sput-object v0, Lquack/mc/patocraft/HardwareInformation;->cpuInfo:Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUFeatures()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lquack/mc/patocraft/HardwareInformation;->cpuInfo:Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    const-string v1, "Features"

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUInfo()Lquack/mc/patocraft/HardwareInformation$CPUInfo;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 81
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v8, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 84
    .local v6, "processorCount":I
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/cpuinfo"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 86
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    new-instance v10, Ljava/io/File;

    const-string v11, "/proc/cpuinfo"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, "(\\w*)\\s*:\\s([^\\n]*)"

    .line 89
    .local v7, "regexp":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 90
    .local v5, "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 92
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 94
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    if-ne v9, v12, :cond_0

    .line 95
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 96
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "regexp":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v9, Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    invoke-direct {v9, v3, v6}, Lquack/mc/patocraft/HardwareInformation$CPUInfo;-><init>(Ljava/util/Map;I)V

    return-object v9

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCPUName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lquack/mc/patocraft/HardwareInformation;->cpuInfo:Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    const-string v1, "Hardware"

    invoke-virtual {v0, v1}, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const/4 v1, 0x0

    invoke-static {v1}, Lquack/mc/patocraft/platforms/Platform;->createPlatform(Z)Lquack/mc/patocraft/platforms/Platform;

    move-result-object v0

    .line 65
    .local v0, "pf":Lquack/mc/patocraft/platforms/Platform;
    invoke-virtual {v0}, Lquack/mc/patocraft/platforms/Platform;->getABIS()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    const-string v2, ""

    .line 46
    .local v2, "returnString":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 47
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 48
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumCores()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lquack/mc/patocraft/HardwareInformation;->cpuInfo:Lquack/mc/patocraft/HardwareInformation$CPUInfo;

    invoke-virtual {v0}, Lquack/mc/patocraft/HardwareInformation$CPUInfo;->getNumberCPUCores()I

    move-result v0

    return v0
.end method
