.class Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;
.super Ljava/lang/Object;
.source "SignOutActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignOutActivity;
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
            "Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "taskId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->values()[Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignOutActivity$State;->currentTask:Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/SignOutActivity$Task;->ordinal()I

    move-result v0

    goto :goto_0
.end method
