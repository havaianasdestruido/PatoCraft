.class Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$2;
.super Ljava/lang/Object;
.source "ProfileScreenViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->launchXboxApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$2;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackViewInXboxAppDialogComplete()V

    .line 350
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$2;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    iget-object v1, v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 351
    return-void
.end method
