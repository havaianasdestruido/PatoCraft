.class Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
.super Ljava/lang/Object;
.source "XsapiUser.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenAndSignatureCallbackWithResult"
.end annotation


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private httpStatusCode:I

.field private tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/interop/XsapiUser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$1;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->httpStatusCode:I

    return v0
.end method

.method public getTokenAndSignature()Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    return-object v0
.end method

.method public onError(IILjava/lang/String;)V
    .locals 0
    .param p1, "httpStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 180
    iput p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->httpStatusCode:I

    .line 181
    iput p2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorCode:I

    .line 182
    iput-object p3, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->errorMessage:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V
    .locals 0
    .param p1, "tokenAndSignature"    # Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->tokenAndSignature:Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    .line 176
    return-void
.end method
