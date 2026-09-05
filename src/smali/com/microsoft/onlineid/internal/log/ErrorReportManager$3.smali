.class Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;
.super Ljava/lang/Object;
.source "ErrorReportManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->askUserPermissionToEmailCrashReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/internal/log/ErrorReportManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 895
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 898
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$3;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->sendMailAndDeleteFiles(Z)V

    .line 902
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 904
    invoke-static {}, Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/configuration/Settings;->getInstance(Landroid/content/Context;)Lcom/microsoft/onlineid/internal/configuration/Settings;

    move-result-object v0

    .line 905
    .local v0, "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    const-string v1, "isIgnoreCrashReporting"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/configuration/Settings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .end local v0    # "settings":Lcom/microsoft/onlineid/internal/configuration/Settings;
    :cond_0
    return-void

    .line 898
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
