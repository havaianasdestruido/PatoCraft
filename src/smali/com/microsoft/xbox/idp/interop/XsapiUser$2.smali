.class Lcom/microsoft/xbox/idp/interop/XsapiUser$2;
.super Ljava/lang/Object;
.source "XsapiUser.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field final synthetic val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/interop/XsapiUser;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->this$0:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

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
    .line 116
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;->onError(IILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public onSuccess(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 111
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;->val$callback:Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    new-instance v1, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/xbox/idp/interop/TokenAndSignature;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;->onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V

    .line 112
    return-void
.end method
