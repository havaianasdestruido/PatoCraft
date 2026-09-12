package com.microsoft.onlineid.sts.request;

import com.facebook.internal.ServerProtocol;
import com.microsoft.onlineid.sts.DeviceCredentials;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.response.DeviceProvisionResponse;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DeviceProvisionRequest extends AbstractStsRequest<DeviceProvisionResponse> {
    private DeviceCredentials _credentials;

    public void setDeviceCredentials(DeviceCredentials credentials) {
        this._credentials = credentials;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public Document buildRequest() {
        Document doc = createBlankDocument(null, "DeviceAddRequest");
        Element addRequestElement = doc.getDocumentElement();
        Element clientInfo = Requests.appendElement(addRequestElement, "ClientInfo");
        clientInfo.setAttribute("name", AbstractStsRequest.AppIdentifier);
        clientInfo.setAttribute(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "1.0");
        Element authentication = Requests.appendElement(addRequestElement, "Authentication");
        Requests.appendElement(authentication, "Membername", this._credentials.getUsername());
        Requests.appendElement(authentication, "Password", this._credentials.getPassword());
        return doc;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public ServerConfig.Endpoint getEndpoint() {
        return ServerConfig.Endpoint.DeviceProvision;
    }

    @Override // com.microsoft.onlineid.sts.request.AbstractStsRequest
    public DeviceProvisionResponse instantiateResponse() {
        return new DeviceProvisionResponse();
    }
}
