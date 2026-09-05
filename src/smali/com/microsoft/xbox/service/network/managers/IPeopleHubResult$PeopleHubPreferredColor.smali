.class public Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPreferredColor;
.super Ljava/lang/Object;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleHubPreferredColor"
.end annotation


# instance fields
.field public primaryColor:Ljava/lang/String;

.field public secondaryColor:Ljava/lang/String;

.field public tertiaryColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
