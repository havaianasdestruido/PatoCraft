.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
.super Ljava/lang/Enum;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSAError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/interop/Interop$MSAError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

.field public static final enum USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 470
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    .line 471
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v1, "UI_INTERACTION_REQUIRED"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    .line 472
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v1, "USER_CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    .line 473
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    .line 468
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->NONE:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->UI_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->OTHER:Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 479
    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->id:I

    .line 480
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 468
    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$MSAError;

    return-object v0
.end method
