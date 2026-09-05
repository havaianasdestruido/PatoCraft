.class public Lcom/microsoft/xbox/toolkit/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;
    }
.end annotation


# static fields
.field private static final MAX_STREAM_SIZE:I = 0xe

.field private static final NO_LOOP:I


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private isEnabled:Z

.field private recentlyPlayedResourceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resourceSoundIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->recentlyPlayedResourceIds:Ljava/util/ArrayList;

    .line 23
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    .line 27
    const-string v2, "You must access sound manager on UI thread."

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 28
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0xe

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    .line 31
    return-void

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/SoundManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/toolkit/SoundManager$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/SoundManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/SoundManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/SoundManager;

    return-object v0
.end method


# virtual methods
.method public clearMostRecentlyPlayedResourceIds()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public getMostRecentlyPlayedResourceIds()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public loadSound(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 52
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 57
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 64
    .local v1, "soundId":I
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v2, v0

    .line 70
    .local v2, "volume":F
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v2

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->soundPool:Landroid/media/SoundPool;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 66
    .end local v1    # "soundId":I
    .end local v2    # "volume":F
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->resourceSoundIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "soundId":I
    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/SoundManager;->isEnabled:Z

    .line 47
    :cond_0
    return-void
.end method
