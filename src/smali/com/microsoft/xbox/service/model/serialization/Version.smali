.class public Lcom/microsoft/xbox/service/model/serialization/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "version"
.end annotation


# instance fields
.field public latest:I
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field public min:I
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
