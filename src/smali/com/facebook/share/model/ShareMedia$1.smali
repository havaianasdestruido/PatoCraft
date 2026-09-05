.class final Lcom/facebook/share/model/ShareMedia$1;
.super Ljava/lang/Object;
.source "ShareMedia.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/share/model/ShareMedia;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMedia;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/share/model/ShareMedia$2;->$SwitchMap$com$facebook$share$model$ShareMedia$Type:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/model/ShareMedia$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMedia$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareMedia$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v0, Landroid/os/ParcelFormatException;

    const-string v1, "ShareMedia has invalid type"

    invoke-direct {v0, v1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/SharePhoto;-><init>(Landroid/os/Parcel;)V

    .line 77
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/facebook/share/model/ShareVideo;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareVideo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMedia$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareMedia;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Lcom/facebook/share/model/ShareMedia;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMedia$1;->newArray(I)[Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    return-object v0
.end method
