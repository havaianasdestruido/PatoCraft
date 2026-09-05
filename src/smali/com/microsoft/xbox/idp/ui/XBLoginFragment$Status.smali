.class public final enum Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
.super Ljava/lang/Enum;
.source "XBLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/XBLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    new-instance v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    const-string v1, "PROVIDER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->SUCCESS:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->PROVIDER_ERROR:Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->$VALUES:[Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/XBLoginFragment$Status;

    return-object v0
.end method
