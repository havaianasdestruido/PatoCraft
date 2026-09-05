.class public final Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamerpicChangeRequest"
.end annotation


# instance fields
.field public userSetting:Lcom/microsoft/xbox/idp/model/Profile$UserSetting;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "newUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$UserSetting;

    const-string v1, "PublicGamerpic"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/xbox/idp/model/Profile$UserSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;->userSetting:Lcom/microsoft/xbox/idp/model/Profile$UserSetting;

    .line 38
    return-void
.end method
