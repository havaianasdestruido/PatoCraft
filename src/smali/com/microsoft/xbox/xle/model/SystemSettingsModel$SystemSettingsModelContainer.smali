.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;
.super Ljava/lang/Object;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemSettingsModelContainer"
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$1;)V

    sput-object v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->instance:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-object v0
.end method
