package com.microsoft.onlineid;

import android.os.Bundle;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.onlineid.internal.IFailureCallback;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IAccountCollectionCallback extends IFailureCallback {
    void onAccountCollectionAcquired(Set<UserAccount> set, Bundle bundle);

    @Override // com.microsoft.onlineid.internal.IFailureCallback
    void onFailure(AuthenticationException authenticationException, Bundle bundle);
}
