package com.microsoft.xbox.xle.app.adapter;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderAddPhoneScreenViewModel;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderAddPhoneScreenAdapter extends AdapterBase {
    private FrameLayout loadingLayout;
    private XLEButton nextButton;
    private EditText phoneNumberEditText;
    private CustomTypefaceTextView subtitleTextView;
    private FriendFinderAddPhoneScreenViewModel viewModel;

    public FriendFinderAddPhoneScreenAdapter(FriendFinderAddPhoneScreenViewModel viewModel) {
        super(viewModel);
        this.viewModel = viewModel;
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_add_phone_subtitle);
        this.phoneNumberEditText = (EditText) findViewById(R.id.friendfinder_add_phone_edit_text);
        this.nextButton = (XLEButton) findViewById(R.id.friendfinder_info_next);
        this.loadingLayout = (FrameLayout) findViewById(R.id.friendfinder_add_phone_loading);
        XLEAssert.assertNotNull(this.subtitleTextView);
        XLEAssert.assertNotNull(this.phoneNumberEditText);
        XLEAssert.assertNotNull(this.nextButton);
        XLEAssert.assertNotNull(this.loadingLayout);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        String subtitle = XboxTcuiSdk.getResources().getString(R.string.FriendFinder_AddPhoneNumber_Dialog_Text_LineOne) + "\n\n" + XboxTcuiSdk.getResources().getString(R.string.FriendFinder_AddPhoneNumber_Dialog_Text_LineTwo) + "\n\n" + XboxTcuiSdk.getResources().getString(R.string.FriendFinder_AddPhoneNumber_Dialog_Text_LineThree);
        this.subtitleTextView.setText(subtitle);
        this.nextButton.setEnabled(false);
        this.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderAddPhoneScreenAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                UTCFriendFinder.trackPhoneContactsNext(FriendFinderAddPhoneScreenAdapter.this.viewModel.getScreen().getName());
                FriendFinderAddPhoneScreenAdapter.this.viewModel.addPhoneNumber(FriendFinderAddPhoneScreenAdapter.this.phoneNumberEditText.getText().toString());
            }
        });
        this.phoneNumberEditText.addTextChangedListener(new TextWatcher() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderAddPhoneScreenAdapter.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                boolean textEntered = s.length() > 0;
                FriendFinderAddPhoneScreenAdapter.this.nextButton.setEnabled(textEntered);
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        this.loadingLayout.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        if (!JavaUtil.isNullOrEmpty(this.viewModel.getSimPhoneNumber())) {
            String number = this.viewModel.getCurrentCountryCode() + this.viewModel.getSimPhoneNumber();
            EditText editText = this.phoneNumberEditText;
            if (JavaUtil.isNullOrEmpty(number)) {
                number = "+";
            }
            editText.setText(number);
        }
    }
}
