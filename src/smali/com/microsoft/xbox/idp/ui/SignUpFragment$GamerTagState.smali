.class final enum Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
.super Ljava/lang/Enum;
.source "SignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GamerTagState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "UNINITIALIZED"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_tools_empty:I

    invoke-direct {v0, v1, v4, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 536
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "INITIAL"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_available:I

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 537
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "EMPTY"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_tools_empty:I

    invoke-direct {v0, v1, v6, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 538
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "AVAILABLE"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_available:I

    invoke-direct {v0, v1, v7, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 539
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "UNAVAILABLE"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_not_available_no_suggestions_android:I

    invoke-direct {v0, v1, v8, v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 540
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "UNAVAILABLE_WITH_SUGGESTIONS"

    const/4 v2, 0x5

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_not_available_android:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 541
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_check_availability:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 542
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "CHECKING"

    const/4 v2, 0x7

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_checking_android:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 543
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_gamertag_checking_error:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    .line 534
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNINITIALIZED:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->INITIAL:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->EMPTY:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->AVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNAVAILABLE_WITH_SUGGESTIONS:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->UNKNOWN:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->CHECKING:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "stringId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 548
    iput p3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->stringId:I

    .line 549
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->$VALUES:[Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    return-object v0
.end method


# virtual methods
.method public getStringId()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->stringId:I

    return v0
.end method
