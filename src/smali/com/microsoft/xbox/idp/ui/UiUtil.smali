.class public final Lcom/microsoft/xbox/idp/ui/UiUtil;
.super Ljava/lang/Object;
.source "UiUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/xbox/idp/ui/UiUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/ui/UiUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScroll(Landroid/widget/ScrollView;)Z
    .locals 6
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "scrollChild":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    .line 70
    .local v0, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    if-ge v4, v0, :cond_0

    const/4 v3, 0x1

    .line 72
    .end local v0    # "childHeight":I
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return v3
.end method

.method public static ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "stringId"    # I
    .param p2, "clickableSpan"    # Landroid/text/style/ClickableSpan;

    .prologue
    const/4 v5, 0x0

    .line 55
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Landroid/text/style/UnderlineSpan;

    invoke-virtual {v1, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/UnderlineSpan;

    .line 57
    .local v0, "spans":[Landroid/text/style/UnderlineSpan;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 58
    aget-object v2, v0, v5

    .line 59
    .local v2, "underlineSpan":Landroid/text/style/UnderlineSpan;
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, p2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 62
    .end local v2    # "underlineSpan":Landroid/text/style/UnderlineSpan;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public static ensureErrorButtonsFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z
    .locals 3
    .param p0, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p1, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .prologue
    .line 46
    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_error_buttons:I

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "ARG_LEFT_ERROR_BUTTON_STRING_ID"

    iget v2, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->leftButtonTextId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-class v1, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;

    sget v2, Lcom/microsoft/xbox/idp/R$id;->xbid_error_buttons:I

    invoke-static {v1, p0, v2, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v1

    .line 51
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureErrorFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z
    .locals 3
    .param p0, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p1, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .prologue
    .line 39
    sget v0, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->errorFragmentClass:Ljava/lang/Class;

    sget v1, Lcom/microsoft/xbox/idp/R$id;->xbid_body_fragment:I

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p2, "fragmentId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;",
            "Lcom/microsoft/xbox/idp/compat/BaseActivity;",
            "I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/idp/compat/BaseFragment;>;"
    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->hasFragment(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/compat/BaseFragment;

    .line 79
    .local v1, "fragment":Lcom/microsoft/xbox/idp/compat/BaseFragment;
    invoke-virtual {v1, p3}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p1, p2, v1}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->addFragment(ILcom/microsoft/xbox/idp/compat/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    const/4 v2, 0x1

    .line 88
    .end local v1    # "fragment":Lcom/microsoft/xbox/idp/compat/BaseFragment;
    :goto_0
    return v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/UiUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/microsoft/xbox/idp/ui/UiUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ensureGamerTagCreationFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p1, "fragmentId"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const-class v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static ensureHeaderFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p1, "fragmentId"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const-class v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static ensureWelcomeFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;IZLandroid/os/Bundle;)Z
    .locals 1
    .param p0, "activity"    # Lcom/microsoft/xbox/idp/compat/BaseActivity;
    .param p1, "fragmentId"    # I
    .param p2, "firstTime"    # Z
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 30
    if-eqz p2, :cond_0

    const-class v0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v0, p0, p1, p3}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/microsoft/xbox/idp/ui/WelcomeFragment;

    .line 31
    invoke-static {v0, p0, p1, p3}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureFragment(Ljava/lang/Class;Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
