package com.microsoft.onlineid.sts.request;

import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.sts.DAToken;
import com.microsoft.onlineid.sts.DeviceCredentials;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.response.DeviceAuthResponse;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DeviceAuthRequest extends AbstractTokenRequest<DeviceAuthResponse> {
    private DeviceCredentials _credentials;

    public void setDeviceCredentials(DeviceCredentials credentials) {
        this._credentials = credentials;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractSoapRequest
    protected void buildSecurityNode(Element security) {
        Element credentials = Requests.appendElement(security, "wsse:UsernameToken");
        credentials.setAttribute("wsu:Id", "devicesoftware");
        Requests.appendElement(credentials, "wsse:Username", this._credentials.getUsername());
        Requests.appendElement(credentials, "wsse:Password", this._credentials.getPassword());
        appendTimestamp(security);
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractTokenRequest
    protected final List<ISecurityScope> getRequestedScopes() {
        return Collections.singletonList(DAToken.Scope);
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public ServerConfig.Endpoint getEndpoint() {
        return ServerConfig.Endpoint.Sts;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public DeviceAuthResponse instantiateResponse() {
        return new DeviceAuthResponse(getClockSkewManager());
    }
}
