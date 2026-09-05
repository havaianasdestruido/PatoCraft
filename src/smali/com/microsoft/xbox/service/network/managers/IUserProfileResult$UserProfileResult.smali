.class public Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
.super Ljava/lang/Object;
.source "IUserProfileResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IUserProfileResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfileResult"
.end annotation


# instance fields
.field public profileUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    return-object v0
.end method
