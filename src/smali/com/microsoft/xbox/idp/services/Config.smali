.class public Lcom/microsoft/xbox/idp/services/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->PROD:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    sput-object v0, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
