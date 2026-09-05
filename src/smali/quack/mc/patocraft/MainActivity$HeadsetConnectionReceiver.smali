.class Lquack/mc/patocraft/MainActivity$HeadsetConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lquack/mc/patocraft/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/MainActivity;


# direct methods
.method private constructor <init>(Lquack/mc/patocraft/MainActivity;)V
    .locals 0

    .prologue
    .line 1532
    iput-object p1, p0, Lquack/mc/patocraft/MainActivity$HeadsetConnectionReceiver;->this$0:Lquack/mc/patocraft/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lquack/mc/patocraft/MainActivity;Lquack/mc/patocraft/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lquack/mc/patocraft/MainActivity;
    .param p2, "x1"    # Lquack/mc/patocraft/MainActivity$1;

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lquack/mc/patocraft/MainActivity$HeadsetConnectionReceiver;-><init>(Lquack/mc/patocraft/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1534
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1536
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 1547
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 1538
    .restart local v0    # "state":I
    :pswitch_0
    const-string v1, "MCPE"

    const-string v2, "Headset unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$HeadsetConnectionReceiver;->this$0:Lquack/mc/patocraft/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lquack/mc/patocraft/MainActivity;->nativeSetHeadphonesConnected(Z)V

    goto :goto_0

    .line 1542
    :pswitch_1
    const-string v1, "MCPE"

    const-string v2, "Headset plugged in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v1, p0, Lquack/mc/patocraft/MainActivity$HeadsetConnectionReceiver;->this$0:Lquack/mc/patocraft/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lquack/mc/patocraft/MainActivity;->nativeSetHeadphonesConnected(Z)V

    goto :goto_0

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
