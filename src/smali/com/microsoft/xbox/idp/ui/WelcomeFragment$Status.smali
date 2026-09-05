.class public final enum Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;
.super Ljava/lang/Enum;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/WelcomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

.field public static final enum ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

.field public static final enum ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

.field public static final enum NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

.field public static final enum PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .line 328
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    const-string v1, "ERROR_USER_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .line 329
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    const-string v1, "ERROR_SWITCH_USER"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .line 330
    new-instance v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    const-string v1, "PROVIDER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    .line 326
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_USER_CANCEL:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->ERROR_SWITCH_USER:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

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
    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/WelcomeFragment$Status;

    return-object v0
.end method
