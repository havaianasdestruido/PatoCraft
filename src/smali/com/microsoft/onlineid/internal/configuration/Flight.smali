.class public final enum Lcom/microsoft/onlineid/internal/configuration/Flight;
.super Ljava/lang/Enum;
.source "Flight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/configuration/Flight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

.field public static final enum QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;


# instance fields
.field private final _flightID:I

.field private final _flightName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    const-string v1, "QRCode"

    const/16 v2, 0xb

    const-string v3, "qr_code"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/microsoft/onlineid/internal/configuration/Flight;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/configuration/Flight;

    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Flight;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "flightID"    # I
    .param p4, "flightName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightID:I

    .line 29
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/Flight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/configuration/Flight;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Flight;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/configuration/Flight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/configuration/Flight;

    return-object v0
.end method


# virtual methods
.method public getFlightID()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightID:I

    return v0
.end method

.method public getFlightName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Flight;->_flightName:Ljava/lang/String;

    return-object v0
.end method
