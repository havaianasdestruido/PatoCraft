.class public Lcom/microsoft/xbox/idp/model/Suggestions$Request;
.super Ljava/lang/Object;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Suggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public Algorithm:I

.field public Count:I

.field public Locale:Ljava/lang/String;

.field public Seed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
