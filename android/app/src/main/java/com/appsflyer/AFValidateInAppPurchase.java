package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AFValidateInAppPurchase implements Runnable {
    private HashMap<String, String> additionalParams;
    private String appsFlyerDevKey;
    protected WeakReference<Context> ctxReference;
    private String currency;
    private ScheduledExecutorService executorService;
    private String googlePublicKey;
    private String price;
    private String purchaseData;
    private String signature;

    public AFValidateInAppPurchase(Context context, String appsFlyerDevKey, String aPublicKey, String aSignature, String aPurchaseData, String aPrice, String aCurrency, HashMap<String, String> aAdditionalParams, ScheduledExecutorService executorService) {
        this.ctxReference = null;
        this.ctxReference = new WeakReference<>(context);
        this.appsFlyerDevKey = appsFlyerDevKey;
        this.googlePublicKey = aPublicKey;
        this.purchaseData = aPurchaseData;
        this.price = aPrice;
        this.currency = aCurrency;
        this.additionalParams = aAdditionalParams;
        this.signature = aSignature;
        this.executorService = executorService;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.appsFlyerDevKey == null || this.appsFlyerDevKey.length() == 0) {
            return;
        }
        HttpURLConnection legacyValidateConnection = null;
        try {
            try {
                Context context = this.ctxReference.get();
                if (context == null) {
                    if (0 != 0) {
                        legacyValidateConnection.disconnect();
                        return;
                    }
                    return;
                }
                Map<? extends String, ? extends Object> map = new HashMap<>();
                map.put("public-key", this.googlePublicKey);
                map.put("sig-data", this.purchaseData);
                map.put("signature", this.signature);
                final Map<String, Object> validateParamsForWH = new HashMap<>();
                validateParamsForWH.putAll(map);
                ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
                scheduler.schedule(new Runnable() { // from class: com.appsflyer.AFValidateInAppPurchase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AFValidateInAppPurchase.this.validateWHPurchaseEvent(validateParamsForWH, AFValidateInAppPurchase.this.ctxReference);
                    }
                }, 5L, TimeUnit.MILLISECONDS);
                map.put("dev_key", this.appsFlyerDevKey);
                map.put("app_id", context.getPackageName());
                map.put(ServerParameters.AF_USER_ID, AppsFlyerLib.getInstance().getAppsFlyerUID(context));
                map.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
                JSONObject validateParamsJSON = new JSONObject(map);
                String postData = validateParamsJSON.toString();
                RemoteDebuggingManager.getInstance().addServerRequestEvent("https://sdk-services.appsflyer.com/validate-android-signature", postData);
                HttpURLConnection legacyValidateConnection2 = sendDataToServer(postData, "https://sdk-services.appsflyer.com/validate-android-signature");
                int responseCode = legacyValidateConnection2 != null ? legacyValidateConnection2.getResponseCode() : -1;
                String str = AppsFlyerLib.getInstance().readServerResponse(legacyValidateConnection2);
                RemoteDebuggingManager.getInstance().addServerResponseEvent("https://sdk-services.appsflyer.com/validate-android-signature", responseCode, str);
                JSONObject responseJsonObject = new JSONObject(str);
                responseJsonObject.put("code", responseCode);
                if (responseCode == 200) {
                    AFLogger.afLog("Validate response 200 ok: " + responseJsonObject.toString());
                    boolean validated = responseJsonObject.optBoolean("result") ? responseJsonObject.getBoolean("result") : false;
                    validateCallback(validated, this.purchaseData, this.price, this.currency, this.additionalParams, responseJsonObject.toString());
                } else {
                    AFLogger.afLog("Failed Validate request");
                    validateCallback(false, this.purchaseData, this.price, this.currency, this.additionalParams, responseJsonObject.toString());
                }
                if (legacyValidateConnection2 != null) {
                    legacyValidateConnection2.disconnect();
                }
                this.executorService.shutdown();
            } catch (Throwable t) {
                if (AppsFlyerLib.validatorListener != null) {
                    AFLogger.afLogE("Failed Validate request + ex", t);
                    validateCallback(false, this.purchaseData, this.price, this.currency, this.additionalParams, t.getMessage());
                }
                AFLogger.afLogE(t.getMessage(), t);
                if (0 != 0) {
                    legacyValidateConnection.disconnect();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                legacyValidateConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateWHPurchaseEvent(Map<String, Object> validateParams, WeakReference<Context> context) {
        if (context.get() != null) {
            String validateWhUrlString = AppsFlyerLib.VALIDATE_WH_URL + context.get().getPackageName();
            SharedPreferences sharedPreferences = context.get().getSharedPreferences("appsflyer-data", 0);
            String referrer = getReferrer(sharedPreferences);
            Map<String, Object> validateWHParams = AppsFlyerLib.getInstance().getEventParameters(context.get(), this.appsFlyerDevKey, AFInAppEventType.PURCHASE, "", referrer, true, sharedPreferences, false);
            addValidateParameters(validateParams, validateWHParams);
            JSONObject validateWHParamsJSON = new JSONObject(validateWHParams);
            String postData = validateWHParamsJSON.toString();
            RemoteDebuggingManager.getInstance().addServerRequestEvent(validateWhUrlString, postData);
            HttpURLConnection validatePurchaseConnection = null;
            try {
                validatePurchaseConnection = sendDataToServer(postData, validateWhUrlString);
                int responseCode = -1;
                if (validatePurchaseConnection != null) {
                    responseCode = validatePurchaseConnection.getResponseCode();
                }
                String responseString = AppsFlyerLib.getInstance().readServerResponse(validatePurchaseConnection);
                RemoteDebuggingManager.getInstance().addServerResponseEvent(validateWhUrlString, responseCode, responseString);
                JSONObject responseJsonObject = new JSONObject(responseString);
                if (responseCode == 200) {
                    AFLogger.afLog("Validate-WH response - 200: " + responseJsonObject.toString());
                } else {
                    AFLogger.afWarnLog("Validate-WH response failed - " + responseCode + ": " + responseJsonObject.toString());
                }
            } catch (Throwable t) {
                AFLogger.afLogE(t.getMessage(), t);
            } finally {
                if (validatePurchaseConnection != null) {
                    validatePurchaseConnection.disconnect();
                }
            }
        }
    }

    private void addValidateParameters(Map<String, Object> validateParams, Map<String, Object> validateWHParams) {
        validateWHParams.put("receipt_data", validateParams);
        validateWHParams.put("price", this.price);
        validateWHParams.put("currency", this.currency);
    }

    private String getReferrer(SharedPreferences sharedPreferences) {
        String referrer = sharedPreferences.getString("referrer", null);
        return referrer == null ? "" : referrer;
    }

    private HttpURLConnection sendDataToServer(String dataString, String url) throws IOException {
        HttpURLConnection connection = null;
        try {
            BackgroundHttpTask validateRequest = new BackgroundHttpTask(null);
            validateRequest.bodyAsString = dataString;
            validateRequest.setShouldReadResponse(false);
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                AFLogger.afDebugLog("Main thread detected. Calling " + url + " in a new thread.");
                validateRequest.execute(url);
            } else {
                AFLogger.afDebugLog("Calling " + url + " (on current thread: " + Thread.currentThread().toString() + " )");
                validateRequest.onPreExecute();
                validateRequest.onPostExecute(validateRequest.doInBackground(url));
            }
            connection = validateRequest.getConnection();
            return connection;
        } catch (Throwable t) {
            AFLogger.afLogE("Could not send callStats request", t);
            return connection;
        }
    }

    private void validateCallback(boolean validated, String purchaseData, String price, String currency, HashMap<String, String> additionalParams, String result) {
        if (AppsFlyerLib.validatorListener != null) {
            AFLogger.afLog("Validate callback parameters: " + purchaseData + " " + price + " " + currency);
            if (validated) {
                AFLogger.afLog("Validate in app purchase success: " + result);
                AppsFlyerLib.validatorListener.onValidateInApp();
                return;
            }
            AFLogger.afLog("Validate in app purchase failed: " + result);
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLib.validatorListener;
            if (result == null) {
                result = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(result);
        }
    }
}
