.class Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundManagerHolder"
.end annotation


# static fields
.field public static final instance:Lcom/microsoft/xbox/toolkit/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/microsoft/xbox/toolkit/SoundManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/SoundManager;-><init>(Lcom/microsoft/xbox/toolkit/SoundManager$1;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/SoundManager$SoundManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/SoundManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
