package com.microsoft.onlineid.authenticator;

import android.os.Bundle;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.internal.ui.ProgressView;
import com.microsoft.onlineid.sdk.R;
import com.microsoft.onlineid.ui.MsaSdkActivity;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountAddPendingActivity extends MsaSdkActivity {
    @Override // com.microsoft.onlineid.ui.MsaSdkActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        setContentView(R.layout.static_page);
        super.onCreate(savedInstanceState);
        ProgressView progress = (ProgressView) findViewById(R.id.progressView);
        progress.setVisibility(0);
        progress.startAnimation();
        findViewById(R.id.static_page_header).setVisibility(8);
        findViewById(R.id.static_page_body_first).setVisibility(8);
        findViewById(R.id.static_page_body_second).setVisibility(8);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ClientAnalytics.get().logScreenView(ClientAnalytics.AccountAddPendingScreen);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }
}
