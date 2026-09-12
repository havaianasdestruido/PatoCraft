package com.microsoft.onlineid.sts.response.parsers;

import com.facebook.internal.ServerProtocol;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.sts.StsError;
import com.microsoft.onlineid.sts.exception.StsParseException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DeviceProvisionResponseParser extends BasePullParser {
    private StsError _error;
    private String _puid;

    public DeviceProvisionResponseParser(XmlPullParser underlyingParser) {
        super(underlyingParser, "", "DeviceAddResponse");
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        String success = this._parser.getAttributeValue("", "Success");
        if (Strings.equalsIgnoreCase(success, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
            nextStartTag("puid");
            this._puid = nextRequiredText();
        } else {
            StringCodeErrorParser parser = new StringCodeErrorParser(this._parser);
            parser.parse();
            this._error = new StsError(parser.getError());
        }
    }

    public String getPuid() {
        verifyParseCalled();
        return this._puid;
    }

    public StsError getError() {
        verifyParseCalled();
        return this._error;
    }
}
