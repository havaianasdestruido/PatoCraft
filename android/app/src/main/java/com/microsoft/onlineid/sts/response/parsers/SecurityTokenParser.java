package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SecurityTokenParser extends BasePullParser {
    private String _tokenBlob;

    public SecurityTokenParser(XmlPullParser underlyingParser) {
        super(underlyingParser, AbstractSoapRequest.WstNamespace, "RequestedSecurityToken");
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        while (nextStartTagNoThrow()) {
            String tagName = getPrefixedTagName();
            if (tagName.equals("EncryptedData")) {
                Assertion.check(this._tokenBlob == null);
                this._tokenBlob = readRawOuterXml();
            } else if (tagName.equals("wsse:BinarySecurityToken")) {
                Assertion.check(this._tokenBlob == null);
                this._tokenBlob = nextRequiredText();
            } else {
                skipElement();
            }
        }
    }

    public String getTokenBlob() {
        verifyParseCalled();
        return this._tokenBlob;
    }
}
