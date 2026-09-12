package com.microsoft.onlineid.sts;

import android.util.Base64;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.sts.request.ISignableRequest;
import com.microsoft.onlineid.sts.request.Requests;
import java.io.CharArrayWriter;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XmlSigner {
    public static final String SignatureNamespace = "http://www.w3.org/2000/09/xmldsig#";
    private final List<Element> _elementsToDigest = new ArrayList();
    private byte[] _nonce = null;
    private final MessageDigest _elementDigester = Cryptography.getSha256Digester();

    public String getEncodedNonce() {
        return Base64.encodeToString(getOrCreateNonce(), 2);
    }

    public void addElementToSign(Element element) {
        this._elementsToDigest.add(element);
    }

    public void sign(ISignableRequest request) {
        Element parent = request.getParentOfSignatureNode();
        Document document = parent.getOwnerDocument();
        byte[] sessionKey = request.getSigningSessionKey();
        String signedInfoTag = buildSignedInfoTag();
        String signatureXml = "<Signature xmlns=\"" + SignatureNamespace + "\">" + signedInfoTag + "<SignatureValue>" + computeSignatureForRequest(sessionKey, signedInfoTag) + "</SignatureValue><KeyInfo><wsse:SecurityTokenReference><wsse:Reference URI=\"#SignKey\"/></wsse:SecurityTokenReference></KeyInfo></Signature>";
        try {
            Element signatureTag = Requests.xmlStringToElement(signatureXml);
            parent.appendChild(document.importNode(signatureTag, true));
        } catch (SAXException e) {
            throw new RuntimeException(e);
        }
    }

    public String computeDigest(String elementXml) {
        byte[] digest = this._elementDigester.digest(elementXml.getBytes(Strings.Utf8Charset));
        return Base64.encodeToString(digest, 2);
    }

    String computeSignatureForRequest(byte[] sessionKey, String signatureInput) {
        return computeSignatureImplementation(sessionKey, getOrCreateNonce(), signatureInput);
    }

    public String computeSignatureForResponse(byte[] sessionKey, byte[] nonce, String signatureInput) {
        return computeSignatureImplementation(sessionKey, nonce, signatureInput.replace("<SignedInfo>", "<SignedInfo xmlns=\"http://www.w3.org/2000/09/xmldsig#\">"));
    }

    String computeSignatureImplementation(byte[] sessionKey, byte[] nonce, String signatureInput) {
        byte[] key = new SharedKeyGenerator(sessionKey).generateKey(SharedKeyGenerator.KeyPurpose.STSDigest, nonce);
        Mac mac = Cryptography.getInitializedHmacSha256Digester(new SecretKeySpec(key, Cryptography.HmacSha256Algorithm));
        byte[] signature = mac.doFinal(signatureInput.getBytes(Strings.Utf8Charset));
        return Base64.encodeToString(signature, 2);
    }

    String buildSignedInfoTag() {
        StringBuilder signedInfoTagBuilder = new StringBuilder();
        signedInfoTagBuilder.append("<SignedInfo xmlns=\"").append(SignatureNamespace).append("\">").append("<CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\">").append("</CanonicalizationMethod>").append("<SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#hmac-sha256\">").append("</SignatureMethod>");
        for (Element element : this._elementsToDigest) {
            String encodedDigest = computeDigest(elementToCanonicalizedString(element));
            signedInfoTagBuilder.append("<Reference URI=\"#").append(getId(element)).append("\">").append("<Transforms>").append("<Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"></Transform>").append("</Transforms>").append("<DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\"></DigestMethod>").append("<DigestValue>").append(encodedDigest).append("</DigestValue>").append("</Reference>");
        }
        signedInfoTagBuilder.append("</SignedInfo>");
        return signedInfoTagBuilder.toString();
    }

    String elementToCanonicalizedString(Element element) {
        DOMSource source = new DOMSource(element);
        StreamResult result = new StreamResult(new CharArrayWriter());
        Transformer transformer = getTransformer();
        transformer.setOutputProperty("method", "html");
        transformer.setOutputProperty("indent", "no");
        try {
            transformer.transform(source, result);
            return result.getWriter().toString();
        } catch (TransformerException e) {
            throw new RuntimeException(e);
        }
    }

    private byte[] getOrCreateNonce() {
        if (this._nonce == null) {
            this._nonce = new byte[32];
            new SecureRandom().nextBytes(this._nonce);
        }
        return this._nonce;
    }

    private Transformer getTransformer() {
        try {
            return TransformerFactory.newInstance().newTransformer();
        } catch (TransformerConfigurationException e) {
            throw new RuntimeException(e);
        } catch (TransformerFactoryConfigurationError e2) {
            throw new RuntimeException(e2);
        }
    }

    private String getId(Element element) {
        return element.getAttribute(element.getNodeName().equals("wsu:Timestamp") ? "wsu:Id" : "Id");
    }
}
