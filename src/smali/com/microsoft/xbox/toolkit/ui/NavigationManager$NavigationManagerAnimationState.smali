.class final enum Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
.super Ljava/lang/Enum;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NavigationManagerAnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum COUNT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v1, "ANIMATING_IN"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v1, "ANIMATING_OUT"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->COUNT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->COUNT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    return-object v0
.end method
