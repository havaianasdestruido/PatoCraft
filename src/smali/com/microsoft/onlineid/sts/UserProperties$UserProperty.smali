.class public final enum Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
.super Ljava/lang/Enum;
.source "UserProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/UserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

.field public static final enum CID:Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    const-string v1, "CID"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->CID:Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    sget-object v1, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->CID:Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->$VALUES:[Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->$VALUES:[Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    return-object v0
.end method
