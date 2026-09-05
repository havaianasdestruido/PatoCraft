.class public final enum Lcom/microsoft/cll/android/SettingsStore$Settings;
.super Ljava/lang/Enum;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/SettingsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/cll/android/SettingsStore$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum LATENCY:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXREALTIMETHREADS:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum PERSISTENCE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SAMPLERATE:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

.field public static final enum VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "SYNCREFRESHINTERVAL"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 23
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "QUEUEDRAININTERVAL"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 24
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "SNAPSHOTSCHEDULEINTERVAL"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 25
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXEVENTSIZEINBYTES"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 26
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXEVENTSPERPOST"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 27
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "SAMPLERATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->SAMPLERATE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 28
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXFILESSPACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 29
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "UPLOADENABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 30
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "PERSISTENCE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->PERSISTENCE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 31
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "LATENCY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->LATENCY:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 32
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "HTTPTIMEOUTINTERVAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 33
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "THREADSTOUSEWITHEXECUTOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 34
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXCORRELATIONVECTORLENGTH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 35
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXCRITICALCANADDATTEMPTS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 36
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXRETRYPERIOD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 37
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "BASERETRYPERIOD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 38
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "CONSTANTFORRETRYPERIOD"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 39
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "NORMALEVENTMEMORYQUEUESIZE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 40
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "CLLSETTINGSURL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 41
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "HOSTSETTINGSETAG"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 42
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "CLLSETTINGSETAG"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 43
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "VORTEXPRODURL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 44
    new-instance v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    const-string v1, "MAXREALTIMETHREADS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/SettingsStore$Settings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXREALTIMETHREADS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 20
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/microsoft/cll/android/SettingsStore$Settings;

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SYNCREFRESHINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->QUEUEDRAININTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->SNAPSHOTSCHEDULEINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->SAMPLERATE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXFILESSPACE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->UPLOADENABLED:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->PERSISTENCE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->LATENCY:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->HTTPTIMEOUTINTERVAL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->THREADSTOUSEWITHEXECUTOR:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCRITICALCANADDATTEMPTS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->NORMALEVENTMEMORYQUEUESIZE:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->HOSTSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->CLLSETTINGSETAG:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->VORTEXPRODURL:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXREALTIMETHREADS:Lcom/microsoft/cll/android/SettingsStore$Settings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->$VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/SettingsStore$Settings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/SettingsStore$Settings;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/cll/android/SettingsStore$Settings;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->$VALUES:[Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/SettingsStore$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/SettingsStore$Settings;

    return-object v0
.end method
