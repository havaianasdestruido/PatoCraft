package com.microsoft.onlineid.sts.request;

import android.text.TextUtils;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.configuration.Experiment;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.XmlSigner;
import com.microsoft.onlineid.sts.exception.CorruptedUserDATokenException;
import com.microsoft.onlineid.sts.response.ServiceResponse;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ServiceRequest extends AbstractTokenRequest<ServiceResponse> implements ISignableRequest {
    private String _clientAppUri;
    private DAToken _deviceDA;
    private String _flowToken;
    private Element _parentOfSignatureNode;
    private boolean _requestFlights = false;
    protected List<ISecurityScope> _requestedScopes = new ArrayList();
    private XmlSigner _signer;
    private String _telemetry;
    private DAToken _userDA;

    public void setRequestFlights(boolean requestFlights) {
        this._requestFlights = requestFlights;
    }

    public void setUserDA(DAToken userDA) {
        this._userDA = userDA;
    }

    public void setDeviceDA(DAToken deviceDA) {
        this._deviceDA = deviceDA;
    }

    public void setFlowToken(String flowToken) {
        this._flowToken = flowToken;
    }

    public void setClientAppUri(String clientAppUri) {
        this._clientAppUri = clientAppUri;
    }

    public void setTelemetry(String telemetry) {
        this._telemetry = telemetry;
    }

    public void addRequest(ISecurityScope request) {
        if (request == null) {
            throw new IllegalArgumentException("Cannot request a null scope.");
        }
        Assertion.check(this._requestedScopes.size() < 2);
        Assertion.check(request.equals(DAToken.Scope) ? false : true);
        if (!this._requestedScopes.contains(request)) {
            this._requestedScopes.add(request);
        }
    }

    public ServiceRequest() {
        this._requestedScopes.add(DAToken.Scope);
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractTokenRequest
    protected List<ISecurityScope> getRequestedScopes() {
        return this._requestedScopes;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractTokenRequest, com.microsoft.onlineid.sts.request.AbstractSoapRequest
    protected void buildAuthInfo(Element authInfo) {
        super.buildAuthInfo(authInfo);
        Requests.appendElement(authInfo, "ps:InlineUX", AbstractStsRequest.DeviceType);
        Requests.appendElement(authInfo, "ps:ConsentFlags", "1");
        Requests.appendElement(authInfo, "ps:IsConnected", "1");
        if (this._requestFlights) {
            Requests.appendElement(authInfo, "ps:Experiments", Experiment.getExperimentList());
        }
        if (this._flowToken != null) {
            Requests.appendElement(authInfo, "ps:InlineFT", this._flowToken);
        }
        Requests.appendElement(authInfo, "ps:ClientAppURI", this._clientAppUri);
        if (!TextUtils.isEmpty(this._telemetry)) {
            Requests.appendElement(authInfo, "ps:Telemetry", this._telemetry);
        }
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractSoapRequest
    protected void buildSecurityNode(Element security) {
        try {
            Element userTokenElement = Requests.xmlStringToElement(this._userDA.getToken());
            security.appendChild(security.getOwnerDocument().importNode(userTokenElement, true));
            appendDeviceDAToken(security, this._deviceDA);
            Element derivedToken = Requests.appendElement(security, "wssc:DerivedKeyToken");
            derivedToken.setAttribute("wsu:Id", "SignKey");
            derivedToken.setAttribute("Algorithm", "urn:liveid:SP800-108CTR-HMAC-SHA256");
            Element tokenReference = Requests.appendElement(derivedToken, "wsse:RequestedTokenReference");
            Requests.appendElement(tokenReference, "wsse:KeyIdentifier").setAttribute("ValueType", "http://docs.oasis-open.org/wss/2004/XX/oasis-2004XX-wss-saml-token-profile-1.0#SAMLAssertionID");
            Requests.appendElement(tokenReference, "wsse:Reference").setAttribute("URI", "");
            Requests.appendElement(derivedToken, "wssc:Nonce", this._signer.getEncodedNonce());
            appendTimestamp(security);
            this._parentOfSignatureNode = security;
        } catch (SAXException e) {
            throw new CorruptedUserDATokenException("Unable to parse user DAToken blob into XML, possibly corrupt.", e);
        }
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public ServerConfig.Endpoint getEndpoint() {
        return ServerConfig.Endpoint.Sts;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public ServiceResponse instantiateResponse() {
        Assertion.check(getRequestedScopes().size() == 2);
        ISecurityScope ticketScope = null;
        for (ISecurityScope scope : getRequestedScopes()) {
            if (!scope.equals(DAToken.Scope)) {
                ticketScope = scope;
                break;
            }
        }
        return new ServiceResponse(getSigningSessionKey(), ticketScope, getClockSkewManager());
    }

    @Override // com.microsoft.onlineid.sts.request.ISignableRequest
    public void setXmlSigner(XmlSigner signer) {
        this._signer = signer;
    }

    @Override // com.microsoft.onlineid.sts.request.ISignableRequest
    public XmlSigner getXmlSigner() {
        return this._signer;
    }

    @Override // com.microsoft.onlineid.sts.request.ISignableRequest
    public Element getParentOfSignatureNode() {
        return this._parentOfSignatureNode;
    }

    @Override // com.microsoft.onlineid.sts.request.ISignableRequest
    public byte[] getSigningSessionKey() {
        return this._userDA.getSessionKey();
    }
}
