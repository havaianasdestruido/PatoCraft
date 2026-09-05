.class public Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult;
.super Ljava/lang/Object;
.source "FollowingSummaryResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
    }
.end annotation


# instance fields
.field public people:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
