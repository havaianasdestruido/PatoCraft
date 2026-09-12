package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProofTokenParser extends BasePullParser {
    private byte[] _sessionKey;

    public ProofTokenParser(XmlPullParser underlyingParser) {
        super(underlyingParser, AbstractSoapRequest.WstNamespace, "RequestedProofToken");
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        while (nextStartTagNoThrow()) {
            String prefixedTagName = getPrefixedTagName();
            if (prefixedTagName.equals("EncryptedKey")) {
                EncryptedSoapNodeParser esnParser = new EncryptedSoapNodeParser(this._parser, "EncryptedKey");
                esnParser.parse();
                Assertion.check(this._sessionKey == null, "Only one of EncryptedKey or wst:BinarySecret is expected");
                this._sessionKey = null;
            } else if (prefixedTagName.equals("wst:BinarySecret")) {
                Assertion.check(this._sessionKey == null, "Only one of EncryptedKey or wst:BinarySecret is expected");
                this._sessionKey = TextParsers.parseBase64(nextRequiredText());
            } else {
                skipElement();
            }
        }
    }

    public byte[] getSessionKey() {
        verifyParseCalled();
        return this._sessionKey;
    }
}
