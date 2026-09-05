.class Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$XLEGlobalDataHolder;
.super Ljava/lang/Object;
.source "XLEGlobalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XLEGlobalDataHolder"
.end annotation


# static fields
.field public static final instance:Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;-><init>(Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$1;)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$XLEGlobalDataHolder;->instance:Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
