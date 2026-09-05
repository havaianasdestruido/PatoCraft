.class public final enum Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
.super Ljava/lang/Enum;
.source "MSAJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/MSAJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

.field public static final enum SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

.field public static final enum SILENT_SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    const-string v1, "SILENT_SIGN_IN"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SILENT_SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    .line 34
    new-instance v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    const-string v1, "SIGN_IN"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    sget-object v1, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SILENT_SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->SIGN_IN:Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->$VALUES:[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 2
    .param p0, "ordinal"    # I

    .prologue
    .line 37
    invoke-static {}, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->values()[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    move-result-object v0

    .line 38
    .local v0, "values":[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-gt v1, p0, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->$VALUES:[Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/jobs/MSAJob$Type;

    return-object v0
.end method
