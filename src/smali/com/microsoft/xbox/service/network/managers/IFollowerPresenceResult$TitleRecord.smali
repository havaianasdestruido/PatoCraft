.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleRecord"
.end annotation


# instance fields
.field public activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

.field public id:J

.field public lastModified:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public placement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDash()Z
    .locals 4

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    const-wide v2, 0xfffe07d1L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningInFullOrFill()Z
    .locals 2

    .prologue
    .line 157
    const-string v0, "Full"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Fill"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
