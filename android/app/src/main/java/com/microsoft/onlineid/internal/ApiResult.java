package com.microsoft.onlineid.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.internal.ui.WebTelemetryRecorder;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ApiResult {
    public static final int ResultException = 1;
    public static final int ResultUINeeded = 2;
    private final Bundle _bundle;

    public enum Extras {
        Exception,
        UINeededIntent,
        WebFlowTelemetryEvents,
        WebFlowTelemetryAllEventsCaptured;

        public String getKey() {
            return "com.microsoft.msa.authenticator." + name();
        }
    }

    public ApiResult() {
        this(new Bundle());
    }

    public ApiResult(Bundle bundle) {
        this._bundle = bundle == null ? new Bundle() : bundle;
    }

    public Bundle asBundle() {
        return this._bundle;
    }

    public String getAccountPuid() {
        return this._bundle.getString(ApiRequest.Extras.AccountPuid.getKey());
    }

    public ApiResult setAccountPuid(String value) {
        this._bundle.putString(ApiRequest.Extras.AccountPuid.getKey(), value);
        return this;
    }

    public String getFlowToken() {
        return this._bundle.getString(ApiRequest.Extras.FlowToken.getKey());
    }

    public ApiResult setFlowToken(String value) {
        this._bundle.putString(ApiRequest.Extras.FlowToken.getKey(), value);
        return this;
    }

    public ISecurityScope getScope() {
        return (ISecurityScope) this._bundle.getSerializable(ApiRequest.Extras.Scope.getKey());
    }

    public ApiResult setScope(ISecurityScope value) {
        this._bundle.putSerializable(ApiRequest.Extras.Scope.getKey(), value);
        return this;
    }

    protected String getTicketKey(ISecurityScope scope) {
        return TextUtils.join(".", new Object[]{PackageInfoHelper.AuthenticatorPackageName, "Ticket", scope.getTarget().toLowerCase(Locale.US), scope.getPolicy().toLowerCase(Locale.US)});
    }

    public Ticket getTicket() {
        return getTicket(getScope());
    }

    public Ticket getTicket(ISecurityScope scope) {
        if (scope == null) {
            return null;
        }
        return (Ticket) this._bundle.getSerializable(getTicketKey(scope));
    }

    public ApiResult addTicket(Ticket value) {
        setScope(value.getScope());
        this._bundle.putSerializable(getTicketKey(value.getScope()), value);
        return this;
    }

    public Exception getException() {
        return (Exception) this._bundle.getSerializable(Extras.Exception.getKey());
    }

    public ApiResult setException(Exception value) {
        this._bundle.putSerializable(Extras.Exception.getKey(), value);
        return this;
    }

    public PendingIntent getUINeededIntent() {
        return (PendingIntent) this._bundle.getParcelable(Extras.UINeededIntent.getKey());
    }

    public ApiResult setUINeededIntent(PendingIntent value) {
        this._bundle.putParcelable(Extras.UINeededIntent.getKey(), value);
        return this;
    }

    public ApiResult setWebFlowTelemetryFields(WebTelemetryRecorder recorder) {
        this._bundle.putStringArrayList(Extras.WebFlowTelemetryEvents.getKey(), recorder.getEvents());
        this._bundle.putBoolean(Extras.WebFlowTelemetryAllEventsCaptured.getKey(), recorder.wereAllEventsCaptured());
        return this;
    }

    public ArrayList<String> getWebFlowTelemetryEvents() {
        return this._bundle.getStringArrayList(Extras.WebFlowTelemetryEvents.getKey());
    }

    public boolean hasWebFlowTelemetryEvents() {
        ArrayList<String> events = getWebFlowTelemetryEvents();
        return (events == null || events.isEmpty()) ? false : true;
    }

    public boolean getWereAllWebFlowTelemetryEventsCaptured() {
        return this._bundle.getBoolean(Extras.WebFlowTelemetryAllEventsCaptured.getKey(), false);
    }
}
