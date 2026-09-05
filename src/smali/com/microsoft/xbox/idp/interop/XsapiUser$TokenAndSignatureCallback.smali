.class public interface abstract Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;
.super Ljava/lang/Object;
.source "XsapiUser.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/Interop$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/XsapiUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenAndSignatureCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Lcom/microsoft/xbox/idp/interop/TokenAndSignature;)V
.end method
