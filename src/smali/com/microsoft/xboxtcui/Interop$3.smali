.class final Lcom/microsoft/xboxtcui/Interop$3;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/Interop;->ShowFriendFinder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityToUse:Landroid/app/Activity;

.field final synthetic val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/microsoft/xboxtcui/Interop$3;->val$activityToUse:Landroid/app/Activity;

    iput-object p2, p0, Lcom/microsoft/xboxtcui/Interop$3;->val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    :try_start_0
    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    iget-object v2, p0, Lcom/microsoft/xboxtcui/Interop$3;->val$activityToUse:Landroid/app/Activity;

    const-class v3, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderHomeScreen;

    iget-object v4, p0, Lcom/microsoft/xboxtcui/Interop$3;->val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0, v2, v3, v4}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;-><init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 76
    .local v0, "df":Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;
    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->access$100()Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->setDetachedCallback(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;)V

    .line 77
    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "df":Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/microsoft/xboxtcui/Interop;->access$000(I)V

    goto :goto_0
.end method
