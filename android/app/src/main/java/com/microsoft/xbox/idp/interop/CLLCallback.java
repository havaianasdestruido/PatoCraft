package com.microsoft.xbox.idp.interop;

import android.content.Context;
import android.util.Log;
import com.microsoft.cll.android.ITicketCallback;
import com.microsoft.cll.android.TicketObject;
import com.microsoft.xbox.idp.jobs.JobSilentSignIn;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CLLCallback implements ITicketCallback {
    private static final String POLICY = "mbi_ssl";
    private static final String VORTEX_SCOPE = "vortex.data.microsoft.com";
    private String m_activityTitle;
    private Context m_context;
    private String m_vortexTicket = new String("");

    public CLLCallback(Context context, String activityTitle) {
        this.m_context = null;
        this.m_context = context;
        this.m_activityTitle = activityTitle;
    }

    @Override // com.microsoft.cll.android.ITicketCallback
    public String getMsaDeviceTicket(boolean forceRefresh) {
        if (this.m_vortexTicket.length() > 0 && !forceRefresh) {
            return this.m_vortexTicket;
        }
        MSATicketCallbacks callbacks = new MSATicketCallbacks();
        LocalConfig cfg = new LocalConfig();
        JobSilentSignIn job = new JobSilentSignIn(this.m_context, this.m_activityTitle, callbacks, VORTEX_SCOPE, POLICY, cfg.getCid());
        synchronized (job) {
            try {
                job.start();
                job.wait();
            } catch (Exception e) {
                Log.i("XSAPI.Android", "exception on votex MSA Ticket");
            }
        }
        this.m_vortexTicket = callbacks.getTicket();
        return this.m_vortexTicket;
    }

    @Override // com.microsoft.cll.android.ITicketCallback
    public String getAuthXToken(boolean b) {
        return Interop.GetLiveXTokenCallback(b);
    }

    @Override // com.microsoft.cll.android.ITicketCallback
    public TicketObject getXTicketForXuid(String s) {
        return new TicketObject("x:" + Interop.GetXTokenCallback(s), false);
    }
}
