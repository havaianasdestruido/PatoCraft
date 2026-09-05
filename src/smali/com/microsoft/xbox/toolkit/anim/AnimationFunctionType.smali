.class public final enum Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
.super Ljava/lang/Enum;
.source "AnimationFunctionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Linear:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum None:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "Sine"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Linear:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "BackEase"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "Exponential"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Linear:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    return-object v0
.end method
