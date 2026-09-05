.class public Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;
.super Ljava/lang/Object;
.source "FragmentLoaderKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private final loaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->$assertionsDisabled:Z

    .line 25
    new-instance v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "loaderId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    .line 44
    .local v0, "that":Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;
    iget v2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    iget v3, v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    if-ne v2, v3, :cond_0

    .line 45
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    iget-object v2, v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 52
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    add-int v0, v1, v2

    .line 53
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
