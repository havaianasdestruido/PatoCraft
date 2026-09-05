.class public Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
.super Ljava/lang/Object;
.source "AddFollowingUserResponseContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddFollowingUserResponse"
.end annotation


# instance fields
.field public code:I

.field public description:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddFollowingRequestStatus()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->success:Z

    return v0
.end method

.method public setAddFollowingRequestStatus(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->success:Z

    .line 16
    return-void
.end method
