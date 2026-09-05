.class public final enum Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
.super Ljava/lang/Enum;
.source "BackgroundThreadWaitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "Navigation"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ApplicationBar"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ListScroll"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "ListLayout"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "PivotScroll"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object v0
.end method
