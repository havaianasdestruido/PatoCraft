.class Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;
.super Ljava/lang/Object;
.source "ErrorReportManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/log/ErrorReportManager;->getCrashErrorFileList()[Ljava/io/File;
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
    .line 757
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/ErrorReportManager$1;->this$0:Lcom/microsoft/onlineid/internal/log/ErrorReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 761
    const-string v0, ".stacktrace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
