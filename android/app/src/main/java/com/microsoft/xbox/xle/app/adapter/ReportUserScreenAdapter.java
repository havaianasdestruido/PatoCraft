package com.microsoft.xbox.xle.app.adapter;

import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.telemetry.helpers.UTCReportUser;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xbox.xle.viewmodel.ReportUserScreenViewModel;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ReportUserScreenAdapter extends AdapterBase {
    private XLEButton cancelButton;
    private EditText optionalText;
    private Spinner reasonSpinner;
    private ArrayAdapter<String> reasonSpinnerAdapter;
    private XLEButton submitButton;
    private CustomTypefaceTextView titleTextView;
    private ReportUserScreenViewModel viewModel;

    public ReportUserScreenAdapter(ReportUserScreenViewModel viewModel) {
        super(viewModel);
        this.viewModel = viewModel;
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.report_user_title);
        this.reasonSpinner = (Spinner) findViewById(R.id.report_user_reason);
        this.optionalText = (EditText) findViewById(R.id.report_user_text);
        this.cancelButton = (XLEButton) findViewById(R.id.report_user_cancel);
        this.submitButton = (XLEButton) findViewById(R.id.report_user_submit);
        XLEAssert.assertNotNull(this.titleTextView);
        XLEAssert.assertNotNull(this.reasonSpinner);
        XLEAssert.assertNotNull(this.optionalText);
        XLEAssert.assertNotNull(this.cancelButton);
        XLEAssert.assertNotNull(this.submitButton);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        this.reasonSpinnerAdapter = new ArrayAdapter<>(XboxTcuiSdk.getActivity(), R.layout.report_spinner_item, this.viewModel.getReasonTitles());
        this.reasonSpinnerAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
        this.reasonSpinner.setAdapter((SpinnerAdapter) this.reasonSpinnerAdapter);
        if (Build.VERSION.SDK_INT >= 16) {
            this.reasonSpinner.setPopupBackgroundDrawable(new ColorDrawable(this.viewModel.getPreferredColor()));
        }
        this.reasonSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                ReportUserScreenAdapter.this.viewModel.setReason(position);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ReportUserScreenAdapter.this.viewModel.onBackButtonPressed();
            }
        });
        this.submitButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                UTCReportUser.trackReportDialogOK(ReportUserScreenAdapter.this.viewModel.getReason() == null ? "Unknown" : ReportUserScreenAdapter.this.viewModel.getReason().toString());
                ReportUserScreenAdapter.this.viewModel.submitReport(ReportUserScreenAdapter.this.optionalText.getText().toString());
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        if (this.titleTextView != null) {
            this.titleTextView.setText(this.viewModel.getTitle());
        }
        if (this.submitButton != null) {
            this.submitButton.setEnabled(this.viewModel.validReasonSelected());
        }
    }
}
