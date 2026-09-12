package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.StsError;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TokenCollectionParser extends BasePullParser {
    private DAToken _daToken;
    private Ticket _ticket;
    private StsError _ticketError;
    private String _ticketInlineAuthUrl;
    private final ISecurityScope _ticketScope;

    public TokenCollectionParser(XmlPullParser underlyingParser, ISecurityScope ticketScope) {
        super(underlyingParser, AbstractSoapRequest.WstNamespace, "RequestSecurityTokenResponseCollection");
        this._ticketScope = ticketScope;
    }

    public TokenCollectionParser(XmlPullParser underlyingParser) {
        this(underlyingParser, null);
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, StsParseException, IOException {
        while (nextStartTagNoThrow("wst:RequestSecurityTokenResponse")) {
            TokenParser parser = new TokenParser(this._parser, this._ticketScope, TokenParser.SecurityTokenMode.ServiceRequest);
            parser.parse();
            if (parser.getDAToken() != null) {
                Assertion.check(this._daToken == null);
                this._daToken = parser.getDAToken();
            }
            if (parser.getTicketError() != null) {
                Assertion.check(this._ticketError == null);
                this._ticketError = parser.getTicketError();
                this._ticketInlineAuthUrl = parser.getTicketInlineAuthUrl();
            }
            if (parser.getTicket() != null) {
                Assertion.check(this._ticket == null);
                this._ticket = parser.getTicket();
            }
        }
        if (this._ticketScope != null && this._ticketError == null && this._ticket == null) {
            throw new StsParseException("No ticket or ticket error found.", new Object[0]);
        }
    }

    public DAToken getDAToken() {
        verifyParseCalled();
        return this._daToken;
    }

    public Ticket getTicket() {
        verifyParseCalled();
        return this._ticket;
    }

    public StsError getTicketError() {
        verifyParseCalled();
        return this._ticketError;
    }

    public String getTicketInlineAuthUrl() {
        verifyParseCalled();
        return this._ticketInlineAuthUrl;
    }
}
