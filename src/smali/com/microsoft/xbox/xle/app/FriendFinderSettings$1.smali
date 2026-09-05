.class Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "FriendFinderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconsFromJson(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/RecommendationTypeIcon;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/FriendFinderSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$1;->this$0:Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
