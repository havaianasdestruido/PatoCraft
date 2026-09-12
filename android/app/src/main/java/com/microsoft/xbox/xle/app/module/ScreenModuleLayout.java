package com.microsoft.xbox.xle.app.module;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class ScreenModuleLayout extends FrameLayout {
    public abstract ViewModelBase getViewModel();

    public abstract void setViewModel(ViewModelBase viewModelBase);

    public abstract void updateView();

    public ScreenModuleLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void setContentView(int screenLayoutId) {
        LayoutInflater vi = (LayoutInflater) XboxTcuiSdk.getSystemService("layout_inflater");
        vi.inflate(screenLayoutId, (ViewGroup) this, true);
    }

    public void onPause() {
    }

    public void onApplicationPause() {
    }

    public void onApplicationResume() {
    }

    public void onResume() {
    }

    public void onDestroy() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void invalidateView() {
    }
}
