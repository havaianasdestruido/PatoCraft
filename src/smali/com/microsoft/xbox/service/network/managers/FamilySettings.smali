.class public Lcom/microsoft/xbox/service/network/managers/FamilySettings;
.super Ljava/lang/Object;
.source "FamilySettings.java"


# instance fields
.field public familyId:Ljava/lang/String;

.field public familyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/FamilyUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
