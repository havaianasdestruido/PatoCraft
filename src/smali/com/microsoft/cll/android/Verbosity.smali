.class public final enum Lcom/microsoft/cll/android/Verbosity;
.super Ljava/lang/Enum;
.source "Verbosity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/cll/android/Verbosity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/Verbosity;

.field public static final enum ERROR:Lcom/microsoft/cll/android/Verbosity;

.field public static final enum INFO:Lcom/microsoft/cll/android/Verbosity;

.field public static final enum NONE:Lcom/microsoft/cll/android/Verbosity;

.field public static final enum WARN:Lcom/microsoft/cll/android/Verbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/microsoft/cll/android/Verbosity;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/cll/android/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    .line 9
    new-instance v0, Lcom/microsoft/cll/android/Verbosity;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/cll/android/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    .line 10
    new-instance v0, Lcom/microsoft/cll/android/Verbosity;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/cll/android/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/Verbosity;->ERROR:Lcom/microsoft/cll/android/Verbosity;

    .line 11
    new-instance v0, Lcom/microsoft/cll/android/Verbosity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/cll/android/Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/cll/android/Verbosity;

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->WARN:Lcom/microsoft/cll/android/Verbosity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->ERROR:Lcom/microsoft/cll/android/Verbosity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/cll/android/Verbosity;->NONE:Lcom/microsoft/cll/android/Verbosity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/cll/android/Verbosity;->$VALUES:[Lcom/microsoft/cll/android/Verbosity;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/Verbosity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/microsoft/cll/android/Verbosity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/Verbosity;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/cll/android/Verbosity;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/microsoft/cll/android/Verbosity;->$VALUES:[Lcom/microsoft/cll/android/Verbosity;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/Verbosity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/Verbosity;

    return-object v0
.end method
