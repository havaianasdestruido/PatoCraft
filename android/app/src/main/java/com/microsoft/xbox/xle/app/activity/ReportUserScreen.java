package com.microsoft.xbox.xle.app.activity;

import com.microsoft.xbox.xle.telemetry.helpers.UTCReportUser;
import com.microsoft.xbox.xle.viewmodel.ReportUserScreenViewModel;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ReportUserScreen extends ActivityBase {
    private ReportUserScreenViewModel reportUserScreenViewModel;

    @Override // com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onCreate() {
        super.onCreate();
        onCreateContentView();
        this.viewModel = new ReportUserScreenViewModel(this);
        this.reportUserScreenViewModel = (ReportUserScreenViewModel) this.viewModel;
        UTCReportUser.trackReportView(getName(), this.reportUserScreenViewModel.getXUID());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase, com.microsoft.xbox.toolkit.ui.ScreenLayout
    public void onStart() {
        super.onStart();
        setBackgroundColor(this.reportUserScreenViewModel.getPreferredColor());
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    protected String getActivityName() {
        return "Report user";
    }

    @Override // com.microsoft.xbox.xle.app.activity.ActivityBase
    public void onCreateContentView() {
        setContentView(R.layout.report_user_screen);
    }
}
