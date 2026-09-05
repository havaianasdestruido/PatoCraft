.class public Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
.super Ljava/lang/Object;
.source "DelegateRPSTicketResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;",
            ">;"
        }
    .end annotation
.end field

.field public static RESULT_NOCID:I

.field public static RESULT_SUCCESS:I

.field public static RESULT_UNEXPECTED:I


# instance fields
.field private errorCode:I

.field private pendingIntent:Landroid/app/PendingIntent;

.field private ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->RESULT_SUCCESS:I

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->RESULT_NOCID:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->RESULT_UNEXPECTED:I

    .line 19
    new-instance v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 54
    return-void
.end method
