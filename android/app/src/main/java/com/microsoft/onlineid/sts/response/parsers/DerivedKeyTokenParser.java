package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DerivedKeyTokenParser extends BasePullParser {
    private byte[] _nonce;

    public DerivedKeyTokenParser(XmlPullParser underlyingParser) {
        super(underlyingParser, AbstractSoapRequest.WsscNamespace, "DerivedKeyToken");
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        nextStartTag("wssc:Nonce");
        this._nonce = TextParsers.parseBase64(nextRequiredText());
    }

    public byte[] getNonce() {
        verifyParseCalled();
        return this._nonce;
    }
}
