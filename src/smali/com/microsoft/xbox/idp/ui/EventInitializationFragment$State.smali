.class Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;
.super Ljava/lang/Object;
.source "EventInitializationFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/EventInitializationFragment;
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
            "Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 161
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-class v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/EventInitializationFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    return-void
.end method
