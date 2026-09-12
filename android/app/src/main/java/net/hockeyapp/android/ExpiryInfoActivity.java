package net.hockeyapp.android;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import net.hockeyapp.android.utils.Util;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ExpiryInfoActivity extends Activity {
    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(getString(R.string.hockeyapp_expiry_info_title));
        setContentView(R.layout.hockeyapp_activity_expiry_info);
        String appName = Util.getAppName(this);
        String text = String.format(getString(R.string.hockeyapp_expiry_info_text), appName);
        TextView messageView = (TextView) findViewById(R.id.label_message);
        messageView.setText(text);
    }
}
