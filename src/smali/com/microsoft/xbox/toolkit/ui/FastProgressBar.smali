.class public Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;
.super Landroid/widget/ProgressBar;
.source "FastProgressBar.java"


# instance fields
.field private isEnabled:Z

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setEnabled(Z)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setVisibility(I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    const-wide/16 v0, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->postInvalidateDelayed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 37
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    .line 39
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    .line 41
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    goto :goto_0
.end method
