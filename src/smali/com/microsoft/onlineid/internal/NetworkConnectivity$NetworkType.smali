.class public final enum Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/NetworkConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Bluetooth:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Ethernet:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Mobile2G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Mobile3G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Mobile4G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum None:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum Unknown:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

.field public static final enum WiFi:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->None:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 22
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "WiFi"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->WiFi:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 23
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Ethernet"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Ethernet:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 24
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Bluetooth"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Bluetooth:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 25
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Mobile2G"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile2G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 26
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Mobile3G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile3G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 27
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Mobile4G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile4G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 28
    new-instance v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    const-string v1, "Unknown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Unknown:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->None:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->WiFi:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Ethernet:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Bluetooth:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile2G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile3G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Mobile4G:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->Unknown:Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->$VALUES:[Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->$VALUES:[Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/NetworkConnectivity$NetworkType;

    return-object v0
.end method
