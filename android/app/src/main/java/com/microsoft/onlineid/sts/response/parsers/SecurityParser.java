package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import java.util.Date;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SecurityParser extends BasePullParser {
    private byte[] _encKeyNonce;
    private Date _expires;
    private final SignatureValidator _validator;

    public SecurityParser(XmlPullParser underlyingParser) {
        this(underlyingParser, null);
    }

    public SecurityParser(XmlPullParser underlyingParser, SignatureValidator validator) {
        super(underlyingParser, AbstractSoapRequest.WsseNamespace, "Security");
        this._validator = validator;
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, StsParseException, IOException {
        while (nextStartTagNoThrow()) {
            String tag = getPrefixedTagName();
            if (tag.equals("wsu:Timestamp")) {
                XmlPullParser subParser = this._validator != null ? this._validator.computeNodeDigest(this) : this._parser;
                TimeListParser parser = new TimeListParser(subParser);
                parser.parse();
                this._expires = parser.getExpires();
            } else if (tag.equals("wssc:DerivedKeyToken")) {
                String id = this._parser.getAttributeValue(AbstractSoapRequest.WsuNamespace, "Id");
                DerivedKeyTokenParser derivedKeyTokenParser = new DerivedKeyTokenParser(this._parser);
                derivedKeyTokenParser.parse();
                if ("EncKey".equals(id)) {
                    this._encKeyNonce = derivedKeyTokenParser.getNonce();
                } else if ("SignKey".equals(id) && this._validator != null) {
                    this._validator.setSignKeyNonce(derivedKeyTokenParser.getNonce());
                }
            } else if ("Signature".equals(tag) && this._validator != null) {
                this._validator.parseSignatureNode(this);
            } else {
                skipElement();
            }
        }
        if (this._expires == null) {
            throw new StsParseException("wsu:Timestamp node not found.", new Object[0]);
        }
    }

    public Date getResponseExpiry() {
        verifyParseCalled();
        return this._expires;
    }

    public byte[] getEncKeyNonce() {
        verifyParseCalled();
        return this._encKeyNonce;
    }
}
