.class Lquack/mc/patocraft/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->updateLocalization(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;

.field final synthetic val$langString:Ljava/lang/String;

.field final synthetic val$regionString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 567
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$8;->this$0:Lquack/mc/patocraft/MainActivity;

    iput-object p2, p0, Lquack/mc/patocraft/MainActivity$8;->val$langString:Ljava/lang/String;

    iput-object p3, p0, Lquack/mc/patocraft/MainActivity$8;->val$regionString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 569
    new-instance v1, Ljava/util/Locale;

    iget-object v2, p0, Lquack/mc/patocraft/MainActivity$8;->val$langString:Ljava/lang/String;

    iget-object v3, p0, Lquack/mc/patocraft/MainActivity$8;->val$regionString:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 571
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 572
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 573
    iget-object v2, p0, Lquack/mc/patocraft/MainActivity$8;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-virtual {v2}, Lquack/mc/patocraft/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lquack/mc/patocraft/MainActivity$8;->this$0:Lquack/mc/patocraft/MainActivity;

    .line 574
    invoke-virtual {v3}, Lquack/mc/patocraft/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 573
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 575
    return-void
.end method
