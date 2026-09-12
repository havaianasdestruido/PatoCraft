package com.microsoft.onlineid.ui;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.internal.log.SendLogsHandler;
import com.microsoft.onlineid.internal.ui.AccountHeaderView;
import com.microsoft.onlineid.sdk.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class MsaSdkActivity extends Activity {
    public static final String AuthenticatorIntentFlagTag = "com.microsoft.msa.authenticator.authenticatorFlags";
    public static final int IntentFlagNoFinishAnimation = 1;
    protected SendLogsHandler _logHandler;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        AccountHeaderView.applyStyle(this, getResources().getString(R.string.webflow_header));
        super.onCreate(savedInstanceState);
        this._logHandler = new SendLogsHandler(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (isFinishing()) {
            int flags = getIntent().getIntExtra(AuthenticatorIntentFlagTag, 0);
            if ((flags & 1) == 1) {
                overridePendingTransition(0, 0);
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) throws Throwable {
        if (Settings.isDebugBuild() && this._logHandler != null) {
            this._logHandler.setSendScreenshot(true);
            this._logHandler.trySendLogsOnKeyEvent(keyCode);
        }
        return super.onKeyDown(keyCode, event);
    }
}
