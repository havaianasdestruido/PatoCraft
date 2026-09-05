.class Lquack/mc/patocraft/MainActivity$16;
.super Lnet/hockeyapp/android/CrashManagerListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/MainActivity;->registerCrashManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/MainActivity;

    .prologue
    .line 1551
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$16;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/CrashManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAutoUploadCrashes()Z
    .locals 1

    .prologue
    .line 1553
    const/4 v0, 0x1

    return v0
.end method
