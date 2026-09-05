.class final enum Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
.super Ljava/lang/Enum;
.source "AuthFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public static final enum XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "START_SIGN_IN"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "MSA"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "XB_LOGIN"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "ACCOUNT_PROVISIONING"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "SIGN_UP"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    .line 503
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "EVENT_INITIALIZATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "INTRODUCING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "WELCOME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "FINISH_SIGN_IN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    const-string v1, "XB_LOGOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    .line 501
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->START_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->MSA:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGIN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ACCOUNT_PROVISIONING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->SIGN_UP:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->EVENT_INITIALIZATION:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->INTRODUCING:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->WELCOME:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->FINISH_SIGN_IN:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->XB_LOGOUT:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

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
    .line 501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 501
    const-class v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    return-object v0
.end method
