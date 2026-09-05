.class public final enum Lcom/microsoft/xbox/toolkit/anim/EasingMode;
.super Ljava/lang/Enum;
.source "EasingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/anim/EasingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/EasingMode;

.field public static final enum EaseIn:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

.field public static final enum EaseInOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

.field public static final enum EaseOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    const-string v1, "EaseIn"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/EasingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseIn:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    const-string v1, "EaseOut"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/anim/EasingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    const-string v1, "EaseInOut"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/anim/EasingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseInOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseIn:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseInOut:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/EasingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/EasingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/EasingMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/EasingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    return-object v0
.end method
