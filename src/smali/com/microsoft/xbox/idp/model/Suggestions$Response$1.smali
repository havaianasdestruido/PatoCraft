.class final Lcom/microsoft/xbox/idp/model/Suggestions$Response$1;
.super Ljava/lang/Object;
.source "Suggestions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Suggestions$Response;
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
        "Lcom/microsoft/xbox/idp/model/Suggestions$Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/microsoft/xbox/idp/model/Suggestions$Response;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    new-instance v0, Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    invoke-direct {v0, p1}, Lcom/microsoft/xbox/idp/model/Suggestions$Response;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Suggestions$Response$1;->createFromParcel(Landroid/os/Parcel;)Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/microsoft/xbox/idp/model/Suggestions$Response;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 35
    new-array v0, p1, [Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/model/Suggestions$Response$1;->newArray(I)[Lcom/microsoft/xbox/idp/model/Suggestions$Response;

    move-result-object v0

    return-object v0
.end method
