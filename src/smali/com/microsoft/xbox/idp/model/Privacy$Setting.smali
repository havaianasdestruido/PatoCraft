.class public Lcom/microsoft/xbox/idp/model/Privacy$Setting;
.super Ljava/lang/Object;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# instance fields
.field public setting:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public value:Lcom/microsoft/xbox/idp/model/Privacy$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
