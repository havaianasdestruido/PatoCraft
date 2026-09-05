.class public Lcom/microsoft/xbox/xle/telemetry/utc/model/UTCNames$PageAction$DeepLink;
.super Ljava/lang/Object;
.source "UTCNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/utc/model/UTCNames$PageAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeepLink"
.end annotation


# static fields
.field public static final FriendSuggestions:Ljava/lang/String; = "DeepLink - Friend Suggestions"

.field public static final SendToStore:Ljava/lang/String; = "DeepLink - Store Redirect"

.field public static final TitleAchievements:Ljava/lang/String; = "DeepLink - GameHub Achievements"

.field public static final TitleHub:Ljava/lang/String; = "DeepLink - GameHub"

.field public static final UserProfile:Ljava/lang/String; = "DeepLink - User Profile"

.field public static final UserSettings:Ljava/lang/String; = "DeepLink - User Settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
