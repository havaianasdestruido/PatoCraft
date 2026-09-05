.class public final Lcom/microsoft/xbox/idp/util/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;,
        Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;,
        Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_RESULT_KEY:Ljava/lang/String; = "KEY_RESULT_KEY"

.field public static final LOADER_NONE:I = -0x1

.field public static final RC_ERROR_SCREEN:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

.field public loaderArgs:Landroid/os/Bundle;

.field public loaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/microsoft/xbox/idp/util/ErrorHelper$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method private isConnected()Z
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 74
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteLoader()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 147
    iget v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    if-eq v2, v4, :cond_1

    .line 148
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 149
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 150
    .local v0, "resultKey":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-interface {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->clearCache(Ljava/lang/Object;)V

    .line 153
    :cond_0
    iput v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 154
    iput-object v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 156
    .end local v0    # "resultKey":Ljava/lang/Object;
    :cond_1
    return-void

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 159
    const/16 v1, 0x3f

    if-eq p1, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    if-ne p2, v0, :cond_1

    :goto_1
    invoke-direct {v1, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initLoader(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Z)Z
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "checkNetwork"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v5, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    const-string v6, "initLoader"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "initialized":Z
    const/4 v5, -0x1

    if-eq p1, v5, :cond_4

    .line 96
    iput p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 97
    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 98
    iget-object v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v5}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 99
    .local v2, "lm":Landroid/app/LoaderManager;
    iget-object v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v6, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-interface {v5, v6}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v3

    .line 100
    .local v3, "loaderInfo":Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    iget-object v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 101
    .local v4, "resultKey":Ljava/lang/Object;
    :goto_0
    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 102
    .local v0, "hasCachedData":Z
    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v2, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v5

    if-nez v5, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    :cond_0
    sget-object v5, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializing loader #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-virtual {v2, p1, p2, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 105
    const/4 v1, 0x1

    .line 113
    .end local v0    # "hasCachedData":Z
    .end local v2    # "lm":Landroid/app/LoaderManager;
    .end local v3    # "loaderInfo":Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .end local v4    # "resultKey":Ljava/lang/Object;
    :goto_2
    return v1

    .line 100
    .restart local v2    # "lm":Landroid/app/LoaderManager;
    .restart local v3    # "loaderInfo":Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    const-string v6, "KEY_RESULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 101
    .restart local v4    # "resultKey":Ljava/lang/Object;
    :cond_2
    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->hasCachedData(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 107
    .restart local v0    # "hasCachedData":Z
    :cond_3
    sget-object v5, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    const-string v6, "Starting error activity: OFFLINE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v5, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_2

    .line 111
    .end local v0    # "hasCachedData":Z
    .end local v2    # "lm":Landroid/app/LoaderManager;
    .end local v3    # "loaderInfo":Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;
    .end local v4    # "resultKey":Ljava/lang/Object;
    :cond_4
    sget-object v5, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    const-string v6, "LOADER_NONE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public restartLoader()Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "restarted":Z
    iget v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    iget-object v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 137
    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    .line 136
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 138
    const/4 v0, 0x1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0
.end method

.method public restartLoader(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "restarted":Z
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 119
    iput p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 120
    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 121
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    iget-object v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v5, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 123
    invoke-interface {v4, v5}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    .line 122
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 124
    const/4 v0, 0x1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0
.end method

.method public setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    .line 79
    return-void
.end method

.method public startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V
    .locals 4
    .param p1, "screen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ARG_ERROR_TYPE"

    iget-object v3, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    const/16 v3, 0x3f

    invoke-interface {v2, v1, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
