package com.appsflyer;

import android.content.Context;
import android.os.AsyncTask;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class BackgroundHttpTask extends AsyncTask<String, Void, String> {
    private static final int WAIT_TIMEOUT = 30000;
    String bodyAsString;
    Map<String, String> bodyParameters;
    private HttpURLConnection conn;
    private Context mContext;
    private URL url;
    private String content = "";
    private boolean error = false;
    private boolean remoteDebugMode = true;
    private boolean shouldReadResponse = true;

    public BackgroundHttpTask(Context context) {
        this.mContext = context;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        JSONObject jsonObject;
        if (this.bodyAsString == null && (jsonObject = new JSONObject(this.bodyParameters)) != null) {
            this.bodyAsString = jsonObject.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(String... urls) {
        try {
            this.url = new URL(urls[0]);
            if (this.remoteDebugMode) {
                RemoteDebuggingManager.getInstance().addServerRequestEvent(this.url.toString(), this.bodyAsString);
            }
            int sizeOfBody = this.bodyAsString.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET).length;
            LogMessages.logMessageMaskKey("call = " + this.url + "; size = " + sizeOfBody + " byte" + (sizeOfBody > 1 ? "s" : "") + "; body = " + this.bodyAsString);
            this.conn = (HttpsURLConnection) this.url.openConnection();
            this.conn.setReadTimeout(WAIT_TIMEOUT);
            this.conn.setConnectTimeout(WAIT_TIMEOUT);
            this.conn.setRequestMethod("POST");
            this.conn.setDoInput(true);
            this.conn.setDoOutput(true);
            this.conn.setRequestProperty("Content-Type", "application/json");
            OutputStream os = this.conn.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, HttpURLConnectionBuilder.DEFAULT_CHARSET));
            writer.write(this.bodyAsString);
            writer.flush();
            writer.close();
            os.close();
            this.conn.connect();
            int responseCode = this.conn.getResponseCode();
            if (this.shouldReadResponse) {
                this.content = AppsFlyerLib.getInstance().readServerResponse(this.conn);
            }
            if (this.remoteDebugMode) {
                RemoteDebuggingManager.getInstance().addServerResponseEvent(this.url.toString(), responseCode, this.content);
            }
            if (responseCode == 200) {
                AFLogger.afLog("Status 200 ok");
            } else {
                this.error = true;
            }
        } catch (Throwable t) {
            AFLogger.afLogE("Error while calling " + this.url.toString(), t);
            this.error = true;
        }
        return this.content;
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String response) {
        if (this.error) {
            AFLogger.afLog("Connection error: " + response);
        } else {
            AFLogger.afLog("Connection call succeeded: " + response);
        }
    }

    public void setRemoteDebugMode(boolean remoteDebugMode) {
        this.remoteDebugMode = remoteDebugMode;
    }

    public HttpURLConnection getConnection() {
        return this.conn;
    }

    public void setShouldReadResponse(boolean shouldReadResponse) {
        this.shouldReadResponse = shouldReadResponse;
    }
}
