package com.microsoft.onlineid.sts.response.parsers;

import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.IntegerCodeServerError;
import com.microsoft.onlineid.sts.StsError;
import com.microsoft.onlineid.sts.exception.StsParseException;
import com.microsoft.onlineid.sts.request.AbstractSoapRequest;
import java.io.IOException;
import java.util.Date;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TokenParser extends BasePullParser {
    private DAToken _daToken;
    private String _inlineAuthUrl;
    private final SecurityTokenMode _securityTokenMode;
    private Ticket _ticket;
    private StsError _ticketError;
    private final ISecurityScope _ticketScope;

    public enum SecurityTokenMode {
        ServiceRequest,
        NgcAuthentication
    }

    public TokenParser(XmlPullParser underlyingParser, SecurityTokenMode securityTokenParseMode) {
        this(underlyingParser, null, securityTokenParseMode);
    }

    public TokenParser(XmlPullParser underlyingParser, ISecurityScope ticketScope, SecurityTokenMode securityTokenParseMode) {
        super(underlyingParser, AbstractSoapRequest.WstNamespace, "RequestSecurityTokenResponse");
        this._ticketScope = ticketScope;
        this._securityTokenMode = securityTokenParseMode;
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        String tokenType = null;
        String target = null;
        String tokenBlob = null;
        byte[] sessionKey = null;
        Date expires = null;
        while (nextStartTagNoThrow()) {
            String tag = getPrefixedTagName();
            if (tag.equals("wst:TokenType")) {
                tokenType = nextRequiredText();
            } else if (tag.equals("wsp:AppliesTo")) {
                NodeScope appliesToScope = getLocation();
                appliesToScope.nextStartTag("wsa:EndpointReference");
                NodeScope endpointReferenceScope = getLocation();
                endpointReferenceScope.nextStartTag("wsa:Address");
                target = nextRequiredText();
                appliesToScope.finish();
            } else if (tag.equals("wst:Lifetime")) {
                TimeListParser timeParser = new TimeListParser(this._parser);
                timeParser.parse();
                expires = timeParser.getExpires();
            } else if (tag.equals("wst:RequestedSecurityToken")) {
                switch (this._securityTokenMode) {
                    case ServiceRequest:
                        SecurityTokenParser securityTokenParser = new SecurityTokenParser(this._parser);
                        securityTokenParser.parse();
                        tokenBlob = securityTokenParser.getTokenBlob();
                        break;
                    case NgcAuthentication:
                        NgcSecurityTokenParser ngcSecurityTokenParser = new NgcSecurityTokenParser(this._parser);
                        ngcSecurityTokenParser.parse();
                        tokenBlob = ngcSecurityTokenParser.getTokenBlob();
                        break;
                }
            } else if (tag.equals("wst:RequestedProofToken")) {
                ProofTokenParser ptParser = new ProofTokenParser(this._parser);
                ptParser.parse();
                sessionKey = ptParser.getSessionKey();
            } else if (tag.equals("psf:pp")) {
                PassportParser parser = new PassportParser(this._parser);
                parser.parse();
                this._ticketError = new StsError(new IntegerCodeServerError(parser.getReqStatus()));
                this._inlineAuthUrl = parser.getInlineAuthUrl();
            } else {
                skipElement();
            }
        }
        if (this._ticketError == null && tokenType == null) {
            throw new StsParseException("wst:TokenType node is missing", new Object[0]);
        }
        try {
            if (Objects.equals(tokenType, "urn:passport:legacy") && sessionKey != null) {
                Assertion.check(DAToken.Scope.getTarget().equals(target));
                this._daToken = new DAToken(tokenBlob, sessionKey);
            } else if ((Objects.equals(tokenType, "urn:passport:compact") || Objects.equals(tokenType, "urn:passport:loginprooftoken")) && this._ticketError == null) {
                Assertion.check(this._ticketScope != null && this._ticketScope.getTarget().equals(target), "Expected returned target " + target + " to equal requested target " + this._ticketScope.getTarget());
                this._ticket = new Ticket(this._ticketScope, expires, tokenBlob);
            }
        } catch (IllegalArgumentException e) {
            throw new StsParseException(e);
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
        return this._inlineAuthUrl;
    }
}
