.class final enum Lcom/appsflyer/AdvertisingIdObject$IdType;
.super Ljava/lang/Enum;
.source "AdvertisingIdObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AdvertisingIdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/AdvertisingIdObject$IdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsflyer/AdvertisingIdObject$IdType;

.field public static final enum AMAZON:Lcom/appsflyer/AdvertisingIdObject$IdType;

.field public static final enum GOOGLE:Lcom/appsflyer/AdvertisingIdObject$IdType;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/appsflyer/AdvertisingIdObject$IdType;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/appsflyer/AdvertisingIdObject$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AdvertisingIdObject$IdType;->GOOGLE:Lcom/appsflyer/AdvertisingIdObject$IdType;

    new-instance v0, Lcom/appsflyer/AdvertisingIdObject$IdType;

    const-string v1, "AMAZON"

    invoke-direct {v0, v1, v3, v3}, Lcom/appsflyer/AdvertisingIdObject$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appsflyer/AdvertisingIdObject$IdType;->AMAZON:Lcom/appsflyer/AdvertisingIdObject$IdType;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appsflyer/AdvertisingIdObject$IdType;

    sget-object v1, Lcom/appsflyer/AdvertisingIdObject$IdType;->GOOGLE:Lcom/appsflyer/AdvertisingIdObject$IdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/AdvertisingIdObject$IdType;->AMAZON:Lcom/appsflyer/AdvertisingIdObject$IdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsflyer/AdvertisingIdObject$IdType;->$VALUES:[Lcom/appsflyer/AdvertisingIdObject$IdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/appsflyer/AdvertisingIdObject$IdType;->intValue:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/AdvertisingIdObject$IdType;)I
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/AdvertisingIdObject$IdType;

    .prologue
    .line 67
    iget v0, p0, Lcom/appsflyer/AdvertisingIdObject$IdType;->intValue:I

    return v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/appsflyer/AdvertisingIdObject$IdType;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_1

    .line 78
    invoke-static {}, Lcom/appsflyer/AdvertisingIdObject$IdType;->values()[Lcom/appsflyer/AdvertisingIdObject$IdType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 79
    .local v0, "idType":Lcom/appsflyer/AdvertisingIdObject$IdType;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v0, Lcom/appsflyer/AdvertisingIdObject$IdType;->intValue:I

    if-ne v4, v5, :cond_0

    .line 84
    .end local v0    # "idType":Lcom/appsflyer/AdvertisingIdObject$IdType;
    :goto_1
    return-object v0

    .line 78
    .restart local v0    # "idType":Lcom/appsflyer/AdvertisingIdObject$IdType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "idType":Lcom/appsflyer/AdvertisingIdObject$IdType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/AdvertisingIdObject$IdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/appsflyer/AdvertisingIdObject$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/AdvertisingIdObject$IdType;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/AdvertisingIdObject$IdType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/appsflyer/AdvertisingIdObject$IdType;->$VALUES:[Lcom/appsflyer/AdvertisingIdObject$IdType;

    invoke-virtual {v0}, [Lcom/appsflyer/AdvertisingIdObject$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/AdvertisingIdObject$IdType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/appsflyer/AdvertisingIdObject$IdType;->intValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
