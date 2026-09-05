.class Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;
.super Ljava/lang/Object;
.source "ProfileScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-static {}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCPeopleHub;->trackViewInXboxApp()V

    .line 152
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->launchXboxApp()V

    .line 153
    return-void
.end method
