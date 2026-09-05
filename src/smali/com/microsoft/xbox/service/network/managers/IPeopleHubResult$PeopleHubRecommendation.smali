.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubRecommendation"
.end annotation


# instance fields
.field public Reasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Type:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->getRecommendationType(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    return-object v0
.end method
