.class public final enum Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
.super Ljava/lang/Enum;
.source "XsapiUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignInStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

.field public static final enum USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;


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

    .line 339
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v1, "USER_INTERACTION_REQUIRED"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    const-string v1, "USER_CANCEL"

    invoke-direct {v0, v1, v4, v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    .line 338
    new-array v0, v5, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    sget-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

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
    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput p3, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->id:I

    .line 345
    return-void
.end method

.method public static fromId(I)Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 348
    packed-switch p0, :pswitch_data_0

    .line 355
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_CANCEL:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->SUCCESS:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    goto :goto_0

    .line 352
    :pswitch_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->USER_INTERACTION_REQUIRED:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 338
    const-class v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    return-object v0
.end method
