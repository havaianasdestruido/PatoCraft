.class public Lcom/microsoft/xbox/xle/app/XLEUtil;
.super Ljava/lang/Object;
.source "XLEUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullOrEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRefresh(Ljava/util/Date;J)Z
    .locals 9
    .param p0, "lastRefreshTime"    # Ljava/util/Date;
    .param p1, "lifetime"    # J

    .prologue
    const/4 v1, 0x1

    .line 109
    if-nez p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 113
    .local v0, "currentTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 114
    .local v2, "diff":J
    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delayMS"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/microsoft/xbox/xle/app/XLEUtil$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/XLEUtil$1;-><init>(Landroid/view/View;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPostDelayed(Ljava/lang/Runnable;J)V

    .line 86
    return-void
.end method

.method public static showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "promptText"    # Ljava/lang/String;
    .param p2, "okText"    # Ljava/lang/String;
    .param p3, "okHandler"    # Ljava/lang/Runnable;
    .param p4, "cancelText"    # Ljava/lang/String;
    .param p5, "cancelHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    const-string v0, "You must supply cancel text if this is not a must-act dialog."

    invoke-static {v0, p4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/DialogManager;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public static updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "visibility"    # I

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public static updateVisibilityIfNotNull(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method
