.class public interface abstract Lcom/microsoft/onlineid/sts/request/ISignableRequest;
.super Ljava/lang/Object;
.source "ISignableRequest.java"


# virtual methods
.method public abstract getParentOfSignatureNode()Lorg/w3c/dom/Element;
.end method

.method public abstract getSigningSessionKey()[B
.end method

.method public abstract getXmlSigner()Lcom/microsoft/onlineid/sts/XmlSigner;
.end method

.method public abstract setXmlSigner(Lcom/microsoft/onlineid/sts/XmlSigner;)V
.end method
