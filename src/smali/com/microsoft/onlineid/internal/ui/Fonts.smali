.class public final enum Lcom/microsoft/onlineid/internal/ui/Fonts;
.super Ljava/lang/Enum;
.source "Fonts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ui/Fonts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUI:Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUILight:Lcom/microsoft/onlineid/internal/ui/Fonts;

.field public static final enum SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;


# instance fields
.field private _fallbackFamilyName:Ljava/lang/String;

.field private _fallbackStyle:I

.field private _filename:Ljava/lang/String;

.field private _loadFailed:Z

.field private _typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v1, "SegoeUI"

    const-string v3, "segoeui"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUI:Lcom/microsoft/onlineid/internal/ui/Fonts;

    .line 17
    new-instance v5, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v6, "SegoeUILight"

    const-string v8, "segoeuil"

    const-string v9, "sans-serif-thin"

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUILight:Lcom/microsoft/onlineid/internal/ui/Fonts;

    .line 18
    new-instance v8, Lcom/microsoft/onlineid/internal/ui/Fonts;

    const-string v9, "SegoeUISemiBold"

    const-string v11, "seguisb"

    move v10, v14

    move-object v12, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/microsoft/onlineid/internal/ui/Fonts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ui/Fonts;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUI:Lcom/microsoft/onlineid/internal/ui/Fonts;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUILight:Lcom/microsoft/onlineid/internal/ui/Fonts;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/Fonts;->SegoeUISemiBold:Lcom/microsoft/onlineid/internal/ui/Fonts;

    aput-object v1, v0, v14

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fallbackFamilyName"    # Ljava/lang/String;
    .param p5, "fallbackStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    .line 37
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_filename:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackFamilyName:Ljava/lang/String;

    .line 39
    iput p5, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackStyle:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/Fonts;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/Fonts;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/Fonts;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/Fonts;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/Fonts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/Fonts;

    return-object v0
.end method


# virtual methods
.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    if-nez v4, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 60
    .local v1, "manager":Landroid/content/res/AssetManager;
    :try_start_1
    const-string v4, "fonts/%s.ttf"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_filename:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_loadFailed:Z

    .line 72
    .end local v1    # "manager":Landroid/content/res/AssetManager;
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    monitor-exit p0

    return-object v2

    .line 62
    .restart local v1    # "manager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackFamilyName:Ljava/lang/String;

    iget v5, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_fallbackStyle:I

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/internal/ui/Fonts;->_typeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 73
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "manager":Landroid/content/res/AssetManager;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "manager":Landroid/content/res/AssetManager;
    :cond_1
    move v2, v3

    .line 69
    goto :goto_1
.end method
