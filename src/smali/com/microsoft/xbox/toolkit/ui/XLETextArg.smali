.class public Lcom/microsoft/xbox/toolkit/ui/XLETextArg;
.super Ljava/lang/Object;
.source "XLETextArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    }
.end annotation


# instance fields
.field private final params:Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V
    .locals 1
    .param p1, "params"    # Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->text:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->params:Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    .line 15
    return-void
.end method


# virtual methods
.method public getParams()Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->params:Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
