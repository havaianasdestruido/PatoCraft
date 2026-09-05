.class Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googleplay/licensing/LicenseChecker$ResultListener;-><init>(Lcom/googleplay/licensing/LicenseChecker;Lcom/googleplay/licensing/LicenseValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

.field final synthetic val$this$0:Lcom/googleplay/licensing/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/googleplay/licensing/LicenseChecker$ResultListener;Lcom/googleplay/licensing/LicenseChecker;)V
    .locals 0
    .param p1, "this$1"    # Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    iput-object p2, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->val$this$0:Lcom/googleplay/licensing/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->access$000(Lcom/googleplay/licensing/LicenseChecker$ResultListener;)Lcom/googleplay/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googleplay/licensing/LicenseChecker;->access$100(Lcom/googleplay/licensing/LicenseChecker;Lcom/googleplay/licensing/LicenseValidator;)V

    .line 209
    iget-object v0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/googleplay/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->access$000(Lcom/googleplay/licensing/LicenseChecker$ResultListener;)Lcom/googleplay/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googleplay/licensing/LicenseChecker;->access$200(Lcom/googleplay/licensing/LicenseChecker;Lcom/googleplay/licensing/LicenseValidator;)V

    .line 210
    return-void
.end method
