.class public final enum Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
.super Ljava/lang/Enum;
.source "AppsFlyerProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailsCryptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum MD5:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum SHA1:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

.field public static final enum SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const-string v1, "SHA1"

    invoke-direct {v0, v1, v3, v3}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA1:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v4, v4}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->MD5:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    new-instance v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1, v5, v5}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    sget-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA1:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->MD5:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->$VALUES:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->value:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->$VALUES:[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v0}, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->value:I

    return v0
.end method
