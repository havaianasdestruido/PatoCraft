.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceRecord"
.end annotation


# instance fields
.field public titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isXbox360()Z
    .locals 2

    .prologue
    .line 145
    const-string v0, "Xbox360"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isXboxOne()Z
    .locals 2

    .prologue
    .line 141
    const-string v0, "XboxOne"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
