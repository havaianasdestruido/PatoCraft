package com.microsoft.xbox.idp.ui;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseActivity;
import com.microsoft.xbox.idp.interop.Interop;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class AuthActivity extends BaseActivity {
    public static final int RESULT_PROVIDER_ERROR = 2;

    public static int toActivityResult(Interop.AuthFlowScreenStatus status) {
        switch (status) {
            case NO_ERROR:
                return -1;
            case ERROR_USER_CANCEL:
                return 0;
            default:
                return 2;
        }
    }

    public static Interop.AuthFlowScreenStatus fromActivityResult(int result) {
        switch (result) {
            case -1:
                return Interop.AuthFlowScreenStatus.NO_ERROR;
            case 0:
                return Interop.AuthFlowScreenStatus.ERROR_USER_CANCEL;
            default:
                return Interop.AuthFlowScreenStatus.PROVIDER_ERROR;
        }
    }

    protected void showBodyFragment(Fragment bodyFragment, Bundle args, boolean showHeader) {
        FragmentManager fragmentManager = getFragmentManager();
        FragmentTransaction tx = fragmentManager.beginTransaction();
        if (showHeader) {
            if (fragmentManager.findFragmentById(R.id.xbid_header_fragment) == null) {
                Fragment headerFragment = new HeaderFragment();
                headerFragment.setArguments(args);
                tx.add(R.id.xbid_header_fragment, headerFragment);
            }
        } else {
            Fragment headerFragment2 = fragmentManager.findFragmentById(R.id.xbid_header_fragment);
            if (headerFragment2 != null) {
                tx.remove(headerFragment2);
            }
        }
        if (bodyFragment != null) {
            bodyFragment.setArguments(args);
        }
        tx.replace(R.id.xbid_body_fragment, bodyFragment);
        tx.commit();
    }

    protected void finishCompat() {
        finish();
    }
}
