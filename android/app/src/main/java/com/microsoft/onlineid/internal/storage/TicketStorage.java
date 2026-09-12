package com.microsoft.onlineid.internal.storage;

import android.content.Context;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.sts.ClockSkewManager;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TicketStorage {
    private final ClockSkewManager _clockSkewManager;
    private TypedStorage _typedStorage;

    public TicketStorage(Context applicationContext) {
        this._clockSkewManager = new ClockSkewManager(applicationContext);
        this._typedStorage = new TypedStorage(applicationContext);
    }

    void setTypedStorage(TypedStorage typedStorage) {
        Objects.verifyArgumentNotNull(typedStorage, "typedStorage");
        this._typedStorage = typedStorage;
    }

    public Ticket getTicket(String accountId, String appId, ISecurityScope scope) {
        checkCommonParameters(accountId, appId);
        Objects.verifyArgumentNotNull(scope, "scope");
        Ticket ticket = this._typedStorage.getTicket(accountId, appId, scope);
        if (ticket != null && !isTicketValid(ticket.getExpiry())) {
            this._typedStorage.removeTicket(accountId, appId, scope);
            return null;
        }
        return ticket;
    }

    public void storeTicket(String accountId, String appId, Ticket ticket) {
        checkCommonParameters(accountId, appId);
        Objects.verifyArgumentNotNull(ticket, "ticket");
        if (isTicketValid(ticket.getExpiry())) {
            this._typedStorage.storeTicket(accountId, appId, ticket);
        }
    }

    public void removeTickets(String accountId) {
        Strings.verifyArgumentNotNullOrEmpty(accountId, "accountId");
        this._typedStorage.removeTickets(accountId);
    }

    static void checkCommonParameters(String accountId, String appId) {
        Strings.verifyArgumentNotNullOrEmpty(accountId, "accountId");
        Strings.verifyArgumentNotNullOrEmpty(appId, "appId");
    }

    boolean isTicketValid(Date expirationDate) {
        Date currentDate = this._clockSkewManager.getCurrentServerTime();
        return currentDate.compareTo(expirationDate) < 0;
    }
}
