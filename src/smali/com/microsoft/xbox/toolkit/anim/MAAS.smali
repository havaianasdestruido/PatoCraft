.class public Lcom/microsoft/xbox/toolkit/anim/MAAS;
.super Ljava/lang/Object;
.source "MAAS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;


# instance fields
.field private final ASSET_FILENAME:Ljava/lang/String;

.field private final SDCARD_FILENAME:Ljava/lang/String;

.field private maasFileCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private usingSdcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/MAAS;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "/sdcard/bishop/maas/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->SDCARD_FILENAME:Ljava/lang/String;

    .line 19
    const-string v0, "animation/%sAnimation.xml"

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->ASSET_FILENAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->usingSdcard:Z

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->instance:Lcom/microsoft/xbox/toolkit/anim/MAAS;

    return-object v0
.end method

.method private getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    .line 40
    .local v0, "file":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v0    # "file":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->maasFileCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    return-object v1
.end method

.method private loadMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "rv":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    const/4 v3, 0x0

    .line 53
    .local v3, "s":Ljava/io/InputStream;
    :try_start_0
    iget-boolean v5, p0, Lcom/microsoft/xbox/toolkit/anim/MAAS;->usingSdcard:Z

    if-eqz v5, :cond_0

    .line 54
    const-string v5, "/sdcard/bishop/maas/%sAnimation.xml"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3    # "s":Ljava/io/InputStream;
    .local v4, "s":Ljava/io/InputStream;
    move-object v3, v4

    .line 61
    .end local v4    # "s":Ljava/io/InputStream;
    .restart local v3    # "s":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance()Lcom/microsoft/xbox/toolkit/XMLHelper;

    move-result-object v5

    const-class v6, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    invoke-virtual {v5, v3, v6}, Lcom/microsoft/xbox/toolkit/XMLHelper;->load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-object v2, v0

    .line 63
    .end local v1    # "filename":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 57
    :cond_0
    const-string v5, "animation/%sAnimation.xml"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .restart local v1    # "filename":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 62
    .end local v1    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getMAASFile(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    .line 34
    .local v0, "file":Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
    return-object v0
.end method
