.class public final enum Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
.super Ljava/lang/Enum;
.source "XLEMAASAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

.field public static final enum GridView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

.field public static final enum ListView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

.field public static final enum View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    const-string v1, "View"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    new-instance v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    const-string v1, "ListView"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->ListView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    new-instance v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    const-string v1, "GridView"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->GridView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->ListView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->GridView:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->$VALUES:[Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->$VALUES:[Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    return-object v0
.end method
