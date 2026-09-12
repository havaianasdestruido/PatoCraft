package com.microsoft.onlineid.sts.request;

import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.analytics.ITimedAnalyticsEvent;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.log.RedactableXml;
import com.microsoft.onlineid.internal.transport.Transport;
import com.microsoft.onlineid.internal.transport.TransportFactory;
import com.microsoft.onlineid.sts.ClockSkewManager;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.exception.InvalidResponseException;
import com.microsoft.onlineid.sts.response.AbstractStsResponse;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Locale;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractStsRequest<ResponseType extends AbstractStsResponse> {
    public static final String AppIdentifier = "MSAAndroidApp";
    public static final String DeviceType = "Android";
    public static final String StsBinaryVersion = "11";
    private ClockSkewManager _clockSkewManager;
    private URL _destination;
    private int _msaAppVersionCode;
    private TransportFactory _transportFactory;

    public abstract Document buildRequest();

    public abstract ServerConfig.Endpoint getEndpoint();

    protected abstract ResponseType instantiateResponse();

    public URL getDestination() {
        return this._destination;
    }

    public void setDestination(URL url) {
        this._destination = url;
    }

    public int getMsaAppVersionCode() {
        return this._msaAppVersionCode;
    }

    public void setMsaAppVersionCode(int versionCode) {
        this._msaAppVersionCode = versionCode;
    }

    void setTransportFactory(TransportFactory transportFactory) {
        this._transportFactory = transportFactory;
    }

    protected ClockSkewManager getClockSkewManager() {
        return this._clockSkewManager;
    }

    public void setClockSkewManager(ClockSkewManager clockSkewManager) {
        this._clockSkewManager = clockSkewManager;
    }

    protected final Document createBlankDocument(String rootNamespace, String rootElementName) {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        try {
            Document doc = factory.newDocumentBuilder().getDOMImplementation().createDocument(rootNamespace, rootElementName, null);
            return doc;
        } catch (ParserConfigurationException e) {
            Assertion.check(false);
            throw new RuntimeException("Invalid parser configuration.", e);
        }
    }

    public ResponseType send() throws NetworkException, InvalidResponseException {
        ResponseType responsetype = (ResponseType) instantiateResponse();
        Transport transportCreateTransport = this._transportFactory.createTransport();
        transportCreateTransport.openPostRequest(getDestination());
        OutputStream requestStream = transportCreateTransport.getRequestStream();
        ITimedAnalyticsEvent iTimedAnalyticsEventCreateTimedEvent = ClientAnalytics.get().createTimedEvent(ClientAnalytics.StsRequestCategory, getClass().getSimpleName(), getAnalyticsRequestType());
        iTimedAnalyticsEventCreateTimedEvent.start();
        try {
            try {
                try {
                    Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
                    if (Settings.isDebugBuild()) {
                        CharArrayWriter charArrayWriter = new CharArrayWriter();
                        transformerNewTransformer.transform(new DOMSource(buildRequest()), new StreamResult(charArrayWriter));
                        String string = charArrayWriter.toString();
                        Logger.info(new RedactableXml(String.format(Locale.US, "%s: %s", getClass().getSimpleName(), string), new String[0]));
                        requestStream.write(string.getBytes(Strings.Utf8Charset));
                    } else {
                        transformerNewTransformer.transform(new DOMSource(buildRequest()), new StreamResult(requestStream));
                    }
                    requestStream.close();
                    InputStream responseStream = transportCreateTransport.getResponseStream();
                    updateClockSkew(transportCreateTransport.getResponseDate());
                    try {
                        try {
                            responsetype.parse(responseStream);
                            iTimedAnalyticsEventCreateTimedEvent.end();
                            responseStream.close();
                            transportCreateTransport.closeConnection();
                            return responsetype;
                        } catch (IOException e) {
                            Logger.error("Unable to parse stream.", e);
                            throw new NetworkException("Unable to parse stream.", e);
                        }
                    } catch (Throwable th) {
                        iTimedAnalyticsEventCreateTimedEvent.end();
                        responseStream.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    transportCreateTransport.closeConnection();
                    throw th2;
                }
            } catch (IOException e2) {
                Logger.error("Unable to close stream", e2);
                throw new NetworkException("Unable to close stream", e2);
            }
        } catch (TransformerConfigurationException e3) {
            Logger.error("Unable to configure Transformer", e3);
            throw new RuntimeException("Unable to configure Transformer", e3);
        } catch (TransformerException e4) {
            Logger.error("Problem occurred transforming XML document", e4);
            throw new RuntimeException("Problem occurred transforming XML document", e4);
        }
    }

    private void updateClockSkew(long serverTime) {
        if (serverTime != 0) {
            getClockSkewManager().onTimestampReceived(serverTime);
            ClientAnalytics.get().logClockSkew(getClockSkewManager().getSkewMilliseconds());
        }
    }

    protected String getAnalyticsRequestType() {
        return "(none)";
    }
}
