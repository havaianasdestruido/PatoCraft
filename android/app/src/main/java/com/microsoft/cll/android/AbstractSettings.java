package com.microsoft.cll.android;

import com.facebook.internal.ServerProtocol;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AbstractSettings {
    protected SettingsStore.Settings ETagSettingName;
    protected final ClientTelemetry clientTelemetry;
    protected String endpoint;
    protected final ILogger logger;
    private final PartA partA;
    protected String queryParam;
    protected String TAG = "AndroidCll-AbstractSettings";
    protected boolean disableUploadOn404 = false;

    public abstract void ParseSettings(JSONObject jSONObject);

    protected AbstractSettings(ClientTelemetry clientTelemetry, ILogger logger, PartA partA) {
        this.clientTelemetry = clientTelemetry;
        this.logger = logger;
        this.partA = partA;
    }

    public JSONObject getSettings() {
        this.logger.info(this.TAG, "Get Settings");
        try {
            URL url = new URL(this.endpoint + this.queryParam);
            URLConnection connection = null;
            try {
                try {
                    URLConnection connection2 = url.openConnection();
                    if (!(connection2 instanceof HttpsURLConnection)) {
                        if (connection2 != null) {
                            try {
                                connection2.getInputStream().close();
                            } catch (Exception e) {
                                this.logger.error(this.TAG, e.getMessage());
                            }
                        }
                        return null;
                    }
                    this.clientTelemetry.IncrementSettingsHttpAttempts();
                    HttpsURLConnection httpConnection = (HttpsURLConnection) connection2;
                    httpConnection.getConnectTimeout();
                    httpConnection.getReadTimeout();
                    httpConnection.setConnectTimeout(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.HTTPTIMEOUTINTERVAL));
                    httpConnection.setReadTimeout(SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.HTTPTIMEOUTINTERVAL));
                    httpConnection.setRequestMethod("GET");
                    httpConnection.setRequestProperty("Accept", "application/json");
                    httpConnection.setRequestProperty("If-None-Match", SettingsStore.getCllSettingsAsString(this.ETagSettingName));
                    long start = Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US).getTimeInMillis();
                    httpConnection.connect();
                    long finish = Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US).getTimeInMillis();
                    long diff = finish - start;
                    this.clientTelemetry.SetAvgSettingsLatencyMs((int) diff);
                    this.clientTelemetry.SetMaxSettingsLatencyMs((int) diff);
                    if (httpConnection.getResponseCode() == 404 && this.disableUploadOn404) {
                        this.logger.info(this.TAG, "Your iKey is invalid. Your events will not be sent!");
                        SettingsStore.updateCllSetting(SettingsStore.Settings.UPLOADENABLED, "false");
                    } else if (httpConnection.getResponseCode() != 404 && this.disableUploadOn404) {
                        this.logger.info(this.TAG, "Your iKey is valid.");
                        SettingsStore.updateCllSetting(SettingsStore.Settings.UPLOADENABLED, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    }
                    if (httpConnection.getResponseCode() == 200 || httpConnection.getResponseCode() == 304) {
                        String ETag = httpConnection.getHeaderField("ETAG");
                        if (ETag != null && !ETag.isEmpty()) {
                            SettingsStore.updateCllSetting(this.ETagSettingName, ETag);
                        }
                    } else {
                        this.clientTelemetry.IncrementSettingsHttpFailures(httpConnection.getResponseCode());
                    }
                    if (httpConnection.getResponseCode() != 200) {
                        httpConnection.disconnect();
                        URLConnection connection3 = null;
                        if (0 == 0) {
                            return null;
                        }
                        try {
                            connection3.getInputStream().close();
                            return null;
                        } catch (Exception e2) {
                            this.logger.error(this.TAG, e2.getMessage());
                            return null;
                        }
                    }
                    BufferedReader input = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
                    StringBuilder result = new StringBuilder();
                    while (true) {
                        String line = input.readLine();
                        if (line == null) {
                            break;
                        }
                        result.append(line);
                    }
                    input.close();
                    httpConnection.disconnect();
                    URLConnection connection4 = null;
                    JSONObject jSONObject = new JSONObject(result.toString());
                    if (0 == 0) {
                        return jSONObject;
                    }
                    try {
                        connection4.getInputStream().close();
                        return jSONObject;
                    } catch (Exception e3) {
                        this.logger.error(this.TAG, e3.getMessage());
                        return jSONObject;
                    }
                } catch (IOException e4) {
                    this.logger.error(this.TAG, e4.getMessage());
                    this.clientTelemetry.IncrementSettingsHttpFailures(-1);
                    if (0 != 0) {
                        try {
                            connection.getInputStream().close();
                        } catch (Exception e5) {
                            this.logger.error(this.TAG, e5.getMessage());
                        }
                    }
                } catch (JSONException e6) {
                    this.logger.error(this.TAG, e6.getMessage());
                    if (0 != 0) {
                        try {
                            connection.getInputStream().close();
                        } catch (Exception e7) {
                            this.logger.error(this.TAG, e7.getMessage());
                        }
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        connection.getInputStream().close();
                    } catch (Exception e8) {
                        this.logger.error(this.TAG, e8.getMessage());
                    }
                }
                throw th;
            }
        } catch (MalformedURLException e9) {
            this.logger.error(this.TAG, "Settings URL is invalid");
            return null;
        }
    }
}
