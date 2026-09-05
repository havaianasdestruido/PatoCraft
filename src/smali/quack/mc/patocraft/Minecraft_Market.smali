.class public Lquack/mc/patocraft/Minecraft_Market;
.super Lquack/mc/patocraft/MainActivity;
.source "Minecraft_Market.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lquack/mc/patocraft/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buyGame()V
    .locals 3

    .prologue
    .line 10
    const-string v2, "market://details?id=quack.mc.patocraft"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11
    .local v0, "buyLink":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .local v1, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lquack/mc/patocraft/Minecraft_Market;->startActivity(Landroid/content/Intent;)V

    .line 13
    return-void
.end method
