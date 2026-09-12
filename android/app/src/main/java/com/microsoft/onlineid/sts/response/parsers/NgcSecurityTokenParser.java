package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class NgcSecurityTokenParser extends BasePullParser {
    private String _tokenBlob;

    public NgcSecurityTokenParser(XmlPullParser underlyingParser) {
        super(underlyingParser, AbstractSoapRequest.WstNamespace, "RequestedSecurityToken");
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        nextStartTag("EncryptedData");
        EncryptedSoapNodeParser esnParser = new EncryptedSoapNodeParser(this._parser);
        esnParser.parse();
        this._tokenBlob = esnParser.getCipherValue();
    }

    public String getTokenBlob() {
        verifyParseCalled();
        return this._tokenBlob;
    }
}
