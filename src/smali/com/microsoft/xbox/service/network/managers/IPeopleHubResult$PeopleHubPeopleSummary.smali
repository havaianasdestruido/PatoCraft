.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubPeopleSummary"
.end annotation


# instance fields
.field public friendFinderState:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

.field public people:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;",
            ">;"
        }
    .end annotation
.end field

.field public recommendationSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
