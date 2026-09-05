.class public final Lcom/microsoft/xbox/idp/util/AuthFlowResult;
.super Ljava/lang/Object;
.source "AuthFlowResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/idp/util/AuthFlowResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deleteOnFinalize:Z

.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/microsoft/xbox/idp/util/AuthFlowResult$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/AuthFlowResult$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;-><init>(JZ)V

    .line 16
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "deleteOnFinalize"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    .line 20
    iput-boolean p3, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->deleteOnFinalize:Z

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->deleteOnFinalize:Z

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native delete(J)V
.end method

.method private static native getAgeGroup(J)Ljava/lang/String;
.end method

.method private static native getGamerTag(J)Ljava/lang/String;
.end method

.method private static native getPrivileges(J)Ljava/lang/String;
.end method

.method private static native getRpsTicket(J)Ljava/lang/String;
.end method

.method private static native getUserEnforcementRestrictions(J)Ljava/lang/String;
.end method

.method private static native getUserId(J)Ljava/lang/String;
.end method

.method private static native getUserSettingsRestrictions(J)Ljava/lang/String;
.end method

.method private static native getUserTitleRestrictions(J)Ljava/lang/String;
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->deleteOnFinalize:Z

    if-eqz v0, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->delete(J)V

    .line 77
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void
.end method

.method public getAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getAgeGroup(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getGamerTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getPrivileges(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRpsTicket()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getRpsTicket(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEnforcementRestrictions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getUserEnforcementRestrictions(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getUserId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSettingsRestrictions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getUserSettingsRestrictions(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserTitleRestrictions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getUserTitleRestrictions(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->deleteOnFinalize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
