.class Lcom/microsoft/xbox/idp/interop/XsapiUser$3;
.super Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
.source "XsapiUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/interop/XsapiUser;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser$1;)V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 1
    .param p1, "httpStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->onError(IILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 153
    return-void
.end method

.method public onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V
    .locals 1
    .param p1, "tokenAndSignature"    # Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    return-void
.end method
