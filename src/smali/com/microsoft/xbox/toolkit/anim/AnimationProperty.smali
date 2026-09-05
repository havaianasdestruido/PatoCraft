.class public final enum Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
.super Ljava/lang/Enum;
.source "AnimationProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

.field public static final enum Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Alpha"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Scale"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "PositionX"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "PositionY"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    const-string v1, "Height"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    return-object v0
.end method
