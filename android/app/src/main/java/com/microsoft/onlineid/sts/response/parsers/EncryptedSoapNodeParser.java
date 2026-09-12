package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.sts.exception.StsParseException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EncryptedSoapNodeParser extends BasePullParser {
    private String _cipherValue;

    public EncryptedSoapNodeParser(XmlPullParser underlyingParser) {
        this(underlyingParser, "EncryptedData");
    }

    public EncryptedSoapNodeParser(XmlPullParser underlyingParser, String expectedTag) {
        super(underlyingParser, "http://www.w3.org/2001/04/xmlenc#", expectedTag);
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        nextStartTag("CipherData");
        NodeScope cipherDataScope = getLocation();
        cipherDataScope.nextStartTag("CipherValue");
        this._cipherValue = nextRequiredText();
        cipherDataScope.finish();
    }

    public String getCipherValue() {
        verifyParseCalled();
        return this._cipherValue;
    }
}
