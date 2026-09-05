.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubTitleHistory"
.end annotation


# instance fields
.field public LastTimePlayed:Ljava/util/Date;

.field public TitleId:J

.field public TitleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
