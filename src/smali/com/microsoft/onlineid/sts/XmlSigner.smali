.class public Lcom/microsoft/onlineid/sts/XmlSigner;
.super Ljava/lang/Object;
.source "XmlSigner.java"


# static fields
.field public static final SignatureNamespace:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"


# instance fields
.field private final _elementDigester:Ljava/security/MessageDigest;

.field private final _elementsToDigest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field

.field private _nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_elementsToDigest:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_nonce:[B

    .line 51
    invoke-static {}, Lcom/microsoft/onlineid/sts/Cryptography;->getSha256Digester()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_elementDigester:Ljava/security/MessageDigest;

    .line 52
    return-void
.end method

.method private getId(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wsu:Timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wsu:Id"

    :goto_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Id"

    goto :goto_0
.end method

.method private getOrCreateNonce()[B
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_nonce:[B

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_nonce:[B

    .line 269
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_nonce:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_nonce:[B

    return-object v0
.end method

.method private getTransformer()Ljavax/xml/transform/Transformer;
    .locals 2

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 291
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljavax/xml/transform/TransformerFactoryConfigurationError;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addElementToSign(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_elementsToDigest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method buildSignedInfoTag()Ljava/lang/String;
    .locals 6

    .prologue
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v2, "signedInfoTagBuilder":Ljava/lang/StringBuilder;
    const-string v3, "<SignedInfo xmlns=\""

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\">"

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</CanonicalizationMethod>"

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#hmac-sha256\">"

    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SignatureMethod>"

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_elementsToDigest:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 204
    .local v0, "element":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->elementToCanonicalizedString(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "encodedDigest":Ljava/lang/String;
    const-string v4, "<Reference URI=\"#"

    .line 208
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->getId(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<Transforms>"

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"></Transform>"

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</Transforms>"

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\"></DigestMethod>"

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<DigestValue>"

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</DigestValue>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</Reference>"

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "encodedDigest":Ljava/lang/String;
    :cond_0
    const-string v3, "</SignedInfo>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public computeDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "elementXml"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/XmlSigner;->_elementDigester:Ljava/security/MessageDigest;

    sget-object v2, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 127
    .local v0, "digest":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method computeSignatureForRequest([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sessionKey"    # [B
    .param p2, "signatureInput"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/XmlSigner;->getOrCreateNonce()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeSignatureImplementation([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeSignatureForResponse([B[BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sessionKey"    # [B
    .param p2, "nonce"    # [B
    .param p3, "signatureInput"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "<SignedInfo>"

    const-string v1, "<SignedInfo xmlns=\"http://www.w3.org/2000/09/xmldsig#\">"

    .line 158
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeSignatureImplementation([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method computeSignatureImplementation([B[BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sessionKey"    # [B
    .param p2, "nonce"    # [B
    .param p3, "signatureInput"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v3, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    invoke-direct {v3, p1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;-><init>([B)V

    sget-object v4, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-virtual {v3, v4, p2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B

    move-result-object v0

    .line 174
    .local v0, "key":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA256"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 177
    .local v1, "mac":Ljavax/crypto/Mac;
    sget-object v3, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 179
    .local v2, "signature":[B
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method elementToCanonicalizedString(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 232
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 233
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4}, Ljava/io/CharArrayWriter;-><init>()V

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 234
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/XmlSigner;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 240
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "method"

    const-string v5, "html"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v4, "indent"

    const-string v5, "no"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 247
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getEncodedNonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/XmlSigner;->getOrCreateNonce()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sign(Lcom/microsoft/onlineid/sts/request/ISignableRequest;)V
    .locals 9
    .param p1, "request"    # Lcom/microsoft/onlineid/sts/request/ISignableRequest;

    .prologue
    .line 85
    invoke-interface {p1}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getParentOfSignatureNode()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 86
    .local v2, "parent":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 87
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {p1}, Lcom/microsoft/onlineid/sts/request/ISignableRequest;->getSigningSessionKey()[B

    move-result-object v3

    .line 88
    .local v3, "sessionKey":[B
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/XmlSigner;->buildSignedInfoTag()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "signedInfoTag":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<Signature xmlns=\""

    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 93
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<SignatureValue>"

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 95
    invoke-virtual {p0, v3, v6}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeSignatureForRequest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</SignatureValue>"

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<KeyInfo>"

    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<wsse:SecurityTokenReference><wsse:Reference URI=\"#SignKey\"/></wsse:SecurityTokenReference>"

    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</KeyInfo>"

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</Signature>"

    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "signatureXml":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/microsoft/onlineid/sts/request/Requests;->xmlStringToElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 115
    .local v4, "signatureTag":Lorg/w3c/dom/Element;
    const/4 v7, 0x1

    invoke-interface {v0, v4, v7}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 116
    return-void

    .line 109
    .end local v4    # "signatureTag":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
