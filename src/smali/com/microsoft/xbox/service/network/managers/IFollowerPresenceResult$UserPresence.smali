.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPresence"
.end annotation


# instance fields
.field private broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

.field private broadcastRecordSet:Z

.field public devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public lastSeen:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$LastSeenRecord;

.field public state:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;
    .locals 7
    .param p1, "titleId"    # J

    .prologue
    .line 68
    iget-boolean v2, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    if-nez v2, :cond_3

    .line 69
    const-string v2, "Online"

    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 72
    .local v0, "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 74
    .local v1, "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    iget-wide v4, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object v4, v4, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    if-eqz v4, :cond_1

    .line 75
    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    iput-object v2, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    .line 82
    .end local v0    # "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    .end local v1    # "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    return-object v2
.end method

.method public getBroadcastingViewerCount(J)I
    .locals 3
    .param p1, "titleId"    # J

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    move-result-object v0

    .line 89
    .local v0, "r":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;->viewers:I

    goto :goto_0
.end method

.method public getXboxOneNowPlayingDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "result":Ljava/util/Date;
    const-string v3, "Online"

    iget-object v4, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 116
    .local v0, "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 118
    .local v2, "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    iget-object v1, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->lastModified:Ljava/util/Date;

    .line 120
    goto :goto_0

    .line 127
    .end local v0    # "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    .end local v2    # "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    :cond_2
    return-object v1
.end method

.method public getXboxOneNowPlayingTitleId()J
    .locals 7

    .prologue
    .line 93
    const-wide/16 v2, -0x1

    .line 95
    .local v2, "result":J
    const-string v4, "Online"

    iget-object v5, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 97
    .local v0, "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    iget-object v5, v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 99
    .local v1, "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    iget-wide v2, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    .line 101
    goto :goto_0

    .line 108
    .end local v0    # "device":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
    .end local v1    # "title":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
    :cond_2
    return-wide v2
.end method
