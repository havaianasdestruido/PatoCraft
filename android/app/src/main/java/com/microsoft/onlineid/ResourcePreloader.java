package com.microsoft.onlineid;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Uris;
import java.util.logging.Logger;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ResourcePreloader {
    private static final String INT_PRELOAD_URI = "https://signup.live-int.com/SignupPreload";
    private static final String PROD_PRELOAD_URI = "https://signup.live.com/SignupPreload";
    private static final Logger logger = Logger.getLogger("ResourcePreloader");

    private ResourcePreloader() {
    }

    public static void preloadSignup(Context context, String cobrandId) {
        WebView webView = new WebView(context);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        Uri uri = buildUri(context, cobrandId);
        webView.loadUrl(uri.toString());
    }

    private static void addWebViewClient(WebView webView) {
        webView.setWebViewClient(new WebViewClient() { // from class: com.microsoft.onlineid.ResourcePreloader.1
            private long started;

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                this.started = SystemClock.elapsedRealtime();
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView view, String url) {
                ResourcePreloader.logger.info("Loading " + url);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                long duration = SystemClock.elapsedRealtime() - this.started;
                ResourcePreloader.logger.info("Page load for " + url + " finished in " + duration + "ms");
            }
        });
    }

    private static Uri buildUri(Context context, String cobrandId) {
        Uri uri = Uri.parse(PROD_PRELOAD_URI).buildUpon().appendQueryParameter(AppProperties.CobrandIdKey, cobrandId).build();
        return Uris.appendMarketQueryString(context.getApplicationContext(), uri);
    }
}
