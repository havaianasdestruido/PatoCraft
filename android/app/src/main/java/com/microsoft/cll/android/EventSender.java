package com.microsoft.cll.android;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EventSender {
    private final String NO_HTTPS_CONN = "URL didn't return HttpsUrlConnection instance.";
    private final String TAG = "AndroidCll-EventSender";
    private final ClientTelemetry clientTelemetry;
    private final URL endpoint;
    private final ILogger logger;

    public EventSender(URL endpoint, ClientTelemetry clientTelemetry, ILogger logger) {
        this.endpoint = endpoint;
        this.clientTelemetry = clientTelemetry;
        this.logger = logger;
    }

    public EventSendResult sendEvent(byte[] body, boolean compressed, TicketHeaders ticketHeaders) throws IOException {
        EventSendResult sendResult = new EventSendResult();
        int responseCode = 500;
        int retryAfterSeconds = 0;
        InputStream inputStream = null;
        InputStream errorStream = null;
        this.clientTelemetry.IncrementVortexHttpAttempts();
        HttpURLConnection connection = openConnection(body.length, compressed, ticketHeaders);
        try {
            connection.connect();
            this.logger.error("AndroidCll-EventSender", "Error connecting.");
            try {
                OutputStream stream = connection.getOutputStream();
                stream.write(body);
                stream.flush();
                stream.close();
                this.logger.error("AndroidCll-EventSender", "Error writing data");
                long start = getTime();
                try {
                    try {
                        responseCode = connection.getResponseCode();
                        if (responseCode == 429 || responseCode == 503) {
                            String retryAfterValueString = connection.getHeaderField("Retry-After");
                            if (retryAfterValueString != null) {
                                try {
                                    retryAfterSeconds = Integer.parseInt(retryAfterValueString);
                                } catch (NumberFormatException e) {
                                }
                            }
                            if (retryAfterSeconds > 86400 || retryAfterSeconds < 0) {
                                retryAfterSeconds = 0;
                            }
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (errorStream != null) {
                            errorStream.close();
                        }
                        if (responseCode >= 500 && responseCode < 600) {
                            this.logger.error("AndroidCll-EventSender", "Bad Response Code");
                            this.clientTelemetry.IncrementVortexHttpFailures(connection.getResponseCode());
                        }
                        long diff = getTime() - start;
                        this.clientTelemetry.SetAvgVortexLatencyMs((int) diff);
                        this.clientTelemetry.SetMaxVortexLatencyMs((int) diff);
                        throw th;
                    }
                } catch (IOException e2) {
                }
                try {
                    inputStream = connection.getInputStream();
                    if (inputStream != null) {
                        BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
                        processResponseBodyConditionally(reader, responseCode == 200);
                    }
                } catch (IOException e3) {
                    errorStream = connection.getErrorStream();
                    if (errorStream != null) {
                        BufferedReader reader2 = new BufferedReader(new InputStreamReader(errorStream));
                        processResponseBodyConditionally(reader2, responseCode == 400);
                    }
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                if (errorStream != null) {
                    errorStream.close();
                }
                if (responseCode >= 500 && responseCode < 600) {
                    this.logger.error("AndroidCll-EventSender", "Bad Response Code");
                    this.clientTelemetry.IncrementVortexHttpFailures(connection.getResponseCode());
                }
                long diff2 = getTime() - start;
                this.clientTelemetry.SetAvgVortexLatencyMs((int) diff2);
                this.clientTelemetry.SetMaxVortexLatencyMs((int) diff2);
                sendResult.responseCode = responseCode;
                sendResult.retryAfterSeconds = retryAfterSeconds;
                return sendResult;
            } catch (Throwable th2) {
                this.logger.error("AndroidCll-EventSender", "Error writing data");
                throw th2;
            }
        } catch (Throwable th3) {
            this.logger.error("AndroidCll-EventSender", "Error connecting.");
            throw th3;
        }
    }

    protected HttpURLConnection openConnection(int length, boolean compressed, TicketHeaders ticketHeaders) throws IOException {
        String ticketString = "";
        if (ticketHeaders != null && !ticketHeaders.xtokens.isEmpty()) {
            boolean first = true;
            for (Map.Entry<String, String> entry : ticketHeaders.xtokens.entrySet()) {
                if (!first) {
                    ticketString = ticketString + ";";
                }
                ticketString = ticketString + "\"" + entry.getKey() + "\"=\"" + entry.getValue() + "\"";
                first = false;
            }
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSS'Z'", Locale.US);
        dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        URLConnection connection = this.endpoint.openConnection();
        if (connection instanceof HttpURLConnection) {
            HttpURLConnection httpsConnection = (HttpURLConnection) connection;
            httpsConnection.setConnectTimeout(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.HTTPTIMEOUTINTERVAL));
            httpsConnection.setReadTimeout(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.HTTPTIMEOUTINTERVAL));
            httpsConnection.setInstanceFollowRedirects(false);
            httpsConnection.setUseCaches(false);
            httpsConnection.setDoOutput(true);
            httpsConnection.setRequestMethod("POST");
            httpsConnection.setRequestProperty("Content-Type", "application/x-json-stream; charset=utf-8");
            httpsConnection.setRequestProperty("X-UploadTime", dateFormat.format(new Date()).toString());
            httpsConnection.setRequestProperty("Content-Length", Integer.toString(length));
            if (compressed) {
                httpsConnection.setRequestProperty("Accept", "application/json");
                httpsConnection.setRequestProperty("Accept-Encoding", "gzip, deflate");
                httpsConnection.setRequestProperty("Content-Encoding", "deflate");
            }
            if (ticketString != "") {
                httpsConnection.setRequestProperty("X-Tickets", ticketString);
                httpsConnection.setRequestProperty("X-AuthXToken", ticketHeaders.authXToken);
                if (ticketHeaders.msaDeviceTicket != null) {
                    httpsConnection.setRequestProperty("X-AuthMsaDeviceTicket", ticketHeaders.msaDeviceTicket);
                }
            }
            return httpsConnection;
        }
        this.clientTelemetry.IncrementVortexHttpFailures(-1);
        throw new IOException("URL didn't return HttpsUrlConnection instance.");
    }

    protected String processResponseBody(BufferedReader reader) {
        return processResponseBodyConditionally(reader, true);
    }

    protected String processResponseBodyConditionally(BufferedReader reader, boolean parseJson) {
        StringBuilder responseBuilder = new StringBuilder();
        while (true) {
            try {
                String line = reader.readLine();
                if (line == null) {
                    break;
                }
                responseBuilder.append(line);
            } catch (IOException e) {
                this.logger.error("AndroidCll-EventSender", "Couldn't read response body");
            }
        }
        if (parseJson) {
            try {
                JSONObject jsonObject = new JSONObject(responseBuilder.toString());
                int rejectCount = jsonObject.getInt("rej");
                this.clientTelemetry.IncrementRejectDropCount(rejectCount);
            } catch (RuntimeException e2) {
                this.logger.info("AndroidCll-EventSender", e2.getMessage());
            } catch (JSONException e3) {
                this.logger.info("AndroidCll-EventSender", e3.getMessage());
            }
        }
        this.logger.info("AndroidCll-EventSender", responseBuilder.toString());
        return responseBuilder.toString();
    }

    private long getTime() {
        return Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US).getTimeInMillis();
    }
}
