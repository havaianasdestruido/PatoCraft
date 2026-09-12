package com.microsoft.onlineid.internal.sso.service.operation;

import android.content.Context;
import android.os.Bundle;
import com.microsoft.onlineid.internal.sso.BundleMarshallerException;
import com.microsoft.onlineid.internal.storage.TypedStorage;
import com.microsoft.onlineid.internal.sts.TicketManager;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StoreBackupOperation extends ServiceOperation {
    private final TypedStorage _storage;

    public StoreBackupOperation(Context applicationContext, Bundle params, AuthenticatorAccountManager accountManager, TicketManager ticketManager, TypedStorage storage) {
        super(applicationContext, params, accountManager, ticketManager);
        this._storage = storage;
    }

    @Override // com.microsoft.onlineid.internal.sso.service.operation.ServiceOperation
    public Bundle call() throws BundleMarshallerException {
        this._storage.storeBackup(getParameters());
        return new Bundle();
    }
}
