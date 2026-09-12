package com.microsoft.onlineid.sts.request;

import android.text.TextUtils;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.sts.response.AbstractSoapResponse;
import java.util.List;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractTokenRequest<ResponseType extends AbstractSoapResponse> extends AbstractSoapRequest<ResponseType> {
    protected abstract List<ISecurityScope> getRequestedScopes();

    @Override // com.microsoft.onlineid.sts.request.AbstractSoapRequest
    protected void buildAuthInfo(Element authInfo) {
        super.buildAuthInfo(authInfo);
        Requests.appendElement(authInfo, "ps:HostingApp", AbstractSoapRequest.MsaAppGuid);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.microsoft.onlineid.sts.request.AbstractSoapRequest
    protected void buildSoapBody(Element body) {
        List<ISecurityScope> requests = getRequestedScopes();
        Element container = body;
        if (requests.size() > 1) {
            container = Requests.appendElement(body, "ps:RequestMultipleSecurityTokens");
            container.setAttribute("xmlns:ps", AbstractSoapRequest.PSNamespace);
            container.setAttribute("Id", "RSTS");
            if (this instanceof ISignableRequest) {
                ((ISignableRequest) this).getXmlSigner().addElementToSign(container);
            }
        }
        int i = 0;
        for (ISecurityScope scope : requests) {
            Element tokenRequestElement = appendTokenRequestElement(container, scope);
            tokenRequestElement.setAttribute("Id", "RST" + i);
            i++;
        }
    }

    private Element appendTokenRequestElement(Element parent, ISecurityScope scope) {
        Element token = Requests.appendElement(parent, "wst:RequestSecurityToken");
        token.setAttribute("xmlns:wst", AbstractSoapRequest.WstNamespace);
        Requests.appendElement(token, "wst:RequestType", "http://schemas.xmlsoap.org/ws/2005/02/trust/Issue");
        Element appliesTo = Requests.appendElement(token, "wsp:AppliesTo");
        appliesTo.setAttribute("xmlns:wsp", AbstractSoapRequest.WspNamespace);
        Element endpointRef = Requests.appendElement(appliesTo, "wsa:EndpointReference");
        endpointRef.setAttribute("xmlns:wsa", AbstractSoapRequest.WsaNamespace);
        Requests.appendElement(endpointRef, "wsa:Address", scope.getTarget());
        String policy = scope.getPolicy();
        if (!TextUtils.isEmpty(policy)) {
            Element policyElement = Requests.appendElement(token, "wsp:PolicyReference");
            policyElement.setAttribute("xmlns:wsp", AbstractSoapRequest.WspNamespace);
            policyElement.setAttribute("URI", policy);
        }
        return token;
    }
}
