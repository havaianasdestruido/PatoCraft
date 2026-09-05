.class public final enum Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
.super Ljava/lang/Enum;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/services/NotificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/services/NotificationResult$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v1, "Achievement"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v1, "Invite"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    sget-object v1, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/services/NotificationResult$NotificationType;

    return-object v0
.end method
