.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FollowersPresenceResult"
.end annotation


# instance fields
.field public userPresence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "result":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
    const-class v2, [Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;

    invoke-direct {v4}, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;-><init>()V

    invoke-static {p0, v2, v3, v4}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    .line 183
    .local v0, "data":[Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;

    .end local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
    invoke-direct {v1}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;-><init>()V

    .line 185
    .restart local v1    # "result":Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;->userPresence:Ljava/util/ArrayList;

    .line 188
    :cond_0
    return-object v1
.end method
