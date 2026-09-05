.class public Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
.super Ljava/lang/Object;
.source "FollowingSummaryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "People"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public displayPicRaw:Ljava/lang/String;

.field public gamertag:Ljava/lang/String;

.field public isFavorite:Z

.field public isIdentityShared:Z

.field public realName:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
