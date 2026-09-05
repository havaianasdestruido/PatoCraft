.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationSummary;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendationSummary"
.end annotation


# instance fields
.field public VIP:I

.field public facebookFriend:I

.field public follower:I

.field public friendOfFriend:I

.field public phoneContact:I

.field public promoteSuggestions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
