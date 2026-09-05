.class public Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
.super Ljava/lang/Object;
.source "FriendFinderSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    }
.end annotation


# static fields
.field private static icons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICONS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "size"    # Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    .prologue
    .line 40
    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;

    .line 42
    .local v0, "icon":Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;
    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$2;->$SwitchMap$com$microsoft$xbox$xle$app$FriendFinderSettings$IconImageSize:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 55
    .end local v0    # "icon":Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 45
    .restart local v0    # "icon":Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;
    :pswitch_0
    iget-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->small:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->medium:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v1, v0, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->large:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getIconsFromJson(Ljava/lang/String;)V
    .locals 7
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    .line 26
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;

    invoke-direct {v4, p0}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;-><init>(Lcom/microsoft/xbox/xle/app/FriendFinderSettings;)V

    .line 28
    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 29
    .local v3, "resultType":Ljava/lang/reflect/Type;
    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .local v2, "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;>;"
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;

    .line 32
    .local v1, "icon":Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;
    sget-object v5, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->icons:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;->type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "icon":Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;
    .end local v2    # "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;>;"
    .end local v3    # "resultType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v4

    .line 37
    :cond_0
    return-void
.end method
