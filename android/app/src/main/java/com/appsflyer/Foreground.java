package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@RequiresApi(api = 14)
class Foreground implements Application.ActivityLifecycleCallbacks {
    private static final long CHECK_DELAY = 500;
    private static Foreground instance;
    private boolean foreground = false;
    private boolean paused = true;
    private Listener listener = null;

    interface Listener {
        void onBecameBackground(WeakReference<Activity> weakReference);

        void onBecameForeground(Activity activity);
    }

    Foreground() {
    }

    public static Foreground init(Application application) {
        if (instance == null) {
            instance = new Foreground();
            if (Build.VERSION.SDK_INT >= 14) {
                application.registerActivityLifecycleCallbacks(instance);
            }
        }
        return instance;
    }

    public static Foreground get(Application application) {
        if (instance == null) {
            init(application);
        }
        return instance;
    }

    public static Foreground get(Context ctx) {
        if (instance == null) {
            Context appCtx = ctx.getApplicationContext();
            if (appCtx instanceof Application) {
                init((Application) appCtx);
            }
            throw new IllegalStateException("Foreground is not initialised and cannot obtain the Application object");
        }
        return instance;
    }

    public static Foreground getInstance() {
        if (instance == null) {
            throw new IllegalStateException("Foreground is not initialised - invoke at least once with parameter init/get");
        }
        return instance;
    }

    public boolean isForeground() {
        return this.foreground;
    }

    public boolean isBackground() {
        return !this.foreground;
    }

    public void registerListener(Listener listener) {
        this.listener = listener;
    }

    public void unregisterListener() {
        this.listener = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.paused = false;
        boolean wasBackground = this.foreground ? false : true;
        this.foreground = true;
        if (wasBackground) {
            try {
                this.listener.onBecameForeground(activity);
            } catch (Exception exc) {
                AFLogger.afLogE("Listener threw exception! ", exc);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.appsflyer.Foreground$1] */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(final Activity activity) {
        this.paused = true;
        new AsyncTask<Void, Void, Void>() { // from class: com.appsflyer.Foreground.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... params) {
                try {
                    Thread.sleep(Foreground.CHECK_DELAY);
                } catch (InterruptedException e) {
                    AFLogger.afLogE("Sleeping attempt failed (essential for background state verification)\n", e);
                }
                if (Foreground.this.foreground && Foreground.this.paused) {
                    Foreground.this.foreground = false;
                    try {
                        WeakReference<Activity> weakActivity = new WeakReference<>(activity);
                        Foreground.this.listener.onBecameBackground(weakActivity);
                        weakActivity.clear();
                        return null;
                    } catch (Exception exc) {
                        AFLogger.afLogE("Listener threw exception! ", exc);
                        cancel(true);
                        return null;
                    }
                }
                return null;
            }
        }.execute(new Void[0]);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }
}
