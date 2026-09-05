.class Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;
.super Ljava/lang/Object;
.source "AccountPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    const-string v2, "SDK"

    const-string v3, "Pick an account"

    const-string v4, "via account picker"

    invoke-interface {v1, v2, v3, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 180
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->getCount()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$100(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$000(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;)Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/microsoft/onlineid/internal/ui/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 187
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-static {v1, v0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->access$200(Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    .line 188
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$1;->this$0:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;->finish()V

    goto :goto_0
.end method
