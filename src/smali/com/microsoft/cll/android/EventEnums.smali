.class public final Lcom/microsoft/cll/android/EventEnums;
.super Ljava/lang/Object;
.source "EventEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/EventEnums$Sensitivity;,
        Lcom/microsoft/cll/android/EventEnums$Persistence;,
        Lcom/microsoft/cll/android/EventEnums$Latency;
    }
.end annotation


# static fields
.field public static final SampleRate_0_percent:D = 0.0

.field public static final SampleRate_10_percent:D = 10.0

.field public static final SampleRate_Epsilon:D = 1.0E-5

.field public static final SampleRate_NoSampling:D = 100.0

.field public static final SampleRate_Unspecified:D = -1.0


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static SampleRateFromString(Ljava/lang/String;)D
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 142
    .local v0, "d":D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 148
    :goto_0
    return-wide v0

    .line 144
    :catch_0
    move-exception v2

    goto :goto_0
.end method
