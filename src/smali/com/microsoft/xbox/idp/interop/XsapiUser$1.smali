.class Lcom/microsoft/xbox/idp/interop/XsapiUser$1;
.super Ljava/lang/Object;
.source "XsapiUser.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;->signInSilently(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field final synthetic val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/interop/XsapiUser;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;->this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 1
    .param p1, "httpStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;->onError(IILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "signInStatus"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;->fromId(I)Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;->onSuccess(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;)V

    .line 69
    return-void
.end method
