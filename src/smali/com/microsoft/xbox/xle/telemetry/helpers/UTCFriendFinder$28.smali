.class final Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;
.super Ljava/lang/Object;
.source "UTCFriendFinder.java"

# interfaces
.implements Lcom/microsoft/xbox/xle/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsBack(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->access$100()V

    .line 317
    const-string v0, "Friend Finder Contacts - Close"

    iget-object v1, p0, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder$28;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 318
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 319
    return-void
.end method
