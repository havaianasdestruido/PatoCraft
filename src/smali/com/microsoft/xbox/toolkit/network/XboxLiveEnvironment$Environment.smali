.class public final enum Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
.super Ljava/lang/Enum;
.source "XboxLiveEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum CERTNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum DNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum PARTNERNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum STUB:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum VINT:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "STUB"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->STUB:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "VINT"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->VINT:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "CERTNET"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->CERTNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "PARTNERNET"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PARTNERNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "DNET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->DNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->STUB:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->VINT:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->CERTNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PARTNERNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->DNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object v0
.end method
