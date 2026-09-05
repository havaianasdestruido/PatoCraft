.class public Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "ReportUserScreenAdapter.java"


# instance fields
.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private optionalText:Landroid/widget/EditText;

.field private reasonSpinner:Landroid/widget/Spinner;

.field private reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;)V
    .locals 1
    .param p1, "viewModel"    # Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    .line 36
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_title:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 37
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_reason:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    .line 38
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_text:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    .line 39
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_cancel:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 40
    sget v0, Lcom/microsoft/xboxtcui/R$id;->report_user_submit:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->optionalText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    .line 53
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$layout;->report_spinner_item:I

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    .line 55
    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReasonTitles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/microsoft/xboxtcui/R$layout;->spinner_item_dropdown:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getPreferredColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->reasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method protected updateViewOverride()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->submitButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->validReasonSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 100
    :cond_1
    return-void
.end method
