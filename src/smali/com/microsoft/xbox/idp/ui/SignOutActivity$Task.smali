.class final enum Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
.super Ljava/lang/Enum;
.source "SignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

.field public static final enum SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    const-string v1, "SIGN_OUT"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->SIGN_OUT:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    return-object v0
.end method
