.class public Lcom/microsoft/xbox/toolkit/ui/TouchUtil;
.super Ljava/lang/Object;
.source "TouchUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0

    .line 16
    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0

    .line 25
    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createOnLongClickListener(Landroid/view/View$OnLongClickListener;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 p0, 0x0

    .line 35
    :goto_0
    return-object p0

    .line 34
    :cond_0
    const-string v0, "Original listener is null."

    invoke-static {v0, p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
