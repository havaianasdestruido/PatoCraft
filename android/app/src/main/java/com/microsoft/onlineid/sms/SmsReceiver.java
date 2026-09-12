package com.microsoft.onlineid.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.ui.JavaScriptBridge;
import com.microsoft.onlineid.internal.ui.PropertyBag;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SmsReceiver extends BroadcastReceiver {
    public static final Pattern OneTimeCodePattern = Pattern.compile("\\s*(\\d+).+\\Qhttp://aka.ms/smscode\\E");
    public static final String SMS_RECEIVED_ACTION = "android.provider.Telephony.SMS_RECEIVED";
    private final JavaScriptBridge _javaScriptBridge;

    public SmsReceiver(JavaScriptBridge javaScriptBridge) {
        Objects.verifyArgumentNotNull(javaScriptBridge, "javaScriptBridge");
        this._javaScriptBridge = javaScriptBridge;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Object[] protocolDescriptionUnits = (Object[]) extras.get("pdus");
            if (protocolDescriptionUnits.length >= 1) {
                SmsMessage message = SmsMessage.createFromPdu((byte[]) protocolDescriptionUnits[0]);
                String code = parseOneTimeCodeFromBody(message.getMessageBody());
                if (!TextUtils.isEmpty(code)) {
                    ClientAnalytics.get().logEvent(ClientAnalytics.SmsVerificationCategory, ClientAnalytics.Verified);
                    this._javaScriptBridge.Property(PropertyBag.Key.SmsCode.name(), code);
                    abortBroadcastWrapper();
                }
            }
        }
    }

    protected void abortBroadcastWrapper() {
        abortBroadcast();
    }

    static String parseOneTimeCodeFromBody(String messageBody) {
        if (messageBody == null) {
            return null;
        }
        Matcher matcher = OneTimeCodePattern.matcher(messageBody);
        if (matcher.matches() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        return null;
    }
}
