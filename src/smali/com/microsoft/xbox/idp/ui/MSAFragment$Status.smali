.class public final enum Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
.super Ljava/lang/Enum;
.source "MSAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/MSAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

.field public static final enum ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

.field public static final enum PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    const-string v1, "PROVIDER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-class v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/MSAFragment$Status;

    return-object v0
.end method
