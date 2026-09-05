.class public Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;
.super Ljava/lang/Object;
.source "XsapiUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserImpl"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-wide p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    .line 255
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    .line 259
    return-void
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getUserImplPtr()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    return-void
.end method
