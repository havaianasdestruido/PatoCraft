.class Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;
.super Ljava/lang/Object;
.source "AuthFlowActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

.field public cid:Ljava/lang/String;

.field public createAccount:Z

.field public currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

.field public lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

.field public nativeActivity:Z

.field public ticket:Ljava/lang/String;

.field public userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 536
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    const-class v2, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    .local v1, "taskId":I
    if-eq v1, v5, :cond_0

    .line 523
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->values()[Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .local v0, "lastStatusId":I
    if-eq v0, v5, :cond_1

    .line 531
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->values()[Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    .line 533
    :cond_1
    const-class v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iput-object v2, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    .line 534
    return-void

    .end local v0    # "lastStatusId":I
    :cond_2
    move v2, v4

    .line 527
    goto :goto_0

    :cond_3
    move v3, v4

    .line 528
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 555
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 556
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->createAccount:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->nativeActivity:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->accountProvisioningResult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 563
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$Task;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 559
    goto :goto_1

    :cond_2
    move v2, v3

    .line 560
    goto :goto_2

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$State;->lastStatus:Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->ordinal()I

    move-result v1

    goto :goto_3
.end method
