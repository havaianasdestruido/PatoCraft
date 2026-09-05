.class Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;
.super Ljava/lang/Object;
.source "ErrorReportManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->notifyUserOfNoMailApp()V
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
    .line 780
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$2;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 785
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 786
    return-void
.end method
