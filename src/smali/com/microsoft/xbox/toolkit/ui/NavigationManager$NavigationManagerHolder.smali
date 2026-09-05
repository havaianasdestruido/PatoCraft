.class Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationManagerHolder"
.end annotation


# static fields
.field public static final instance:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
