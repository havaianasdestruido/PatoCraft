package com.microsoft.cll.android;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface ITicketCallback {
    String getAuthXToken(boolean z);

    String getMsaDeviceTicket(boolean z);

    TicketObject getXTicketForXuid(String str);
}
