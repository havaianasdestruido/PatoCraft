package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.sts.UserProperties;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UserPropertiesParser extends BasePullParser {
    private final UserProperties _userProperties;

    public UserPropertiesParser(XmlPullParser underlyingParser) {
        super(underlyingParser, AbstractSoapRequest.PsfNamespace, "credProperties");
        this._userProperties = new UserProperties();
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        while (nextStartTagNoThrow()) {
            String name = this._parser.getAttributeValue("", "Name");
            if (name == null) {
                skipElement();
            } else {
                try {
                    UserProperties.UserProperty credProperty = UserProperties.UserProperty.valueOf(name);
                    this._userProperties.put(credProperty, this._parser.nextText());
                } catch (IllegalArgumentException e) {
                    skipElement();
                }
            }
        }
    }

    public UserProperties getUserProperties() {
        verifyParseCalled();
        return this._userProperties;
    }
}
