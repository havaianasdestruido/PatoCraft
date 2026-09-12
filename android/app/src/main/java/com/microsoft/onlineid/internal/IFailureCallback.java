package com.microsoft.onlineid.internal;

import android.os.Bundle;
import com.microsoft.onlineid.exception.AuthenticationException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IFailureCallback {
    void onFailure(AuthenticationException authenticationException, Bundle bundle);
}
