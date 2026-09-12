package com.microsoft.xbox.xle.app.adapter;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderVerifyCodeScreenViewModel;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.ui.IconFontToggleButton;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderVerifyCodeScreenAdapter extends AdapterBase {
    private IconFontToggleButton callMeButton;
    private EditText codeEditText;
    private FrameLayout loadingLayout;
    private IconFontToggleButton resendCodeButton;
    private XLEButton verifyButton;
    private FriendFinderVerifyCodeScreenViewModel viewModel;

    public FriendFinderVerifyCodeScreenAdapter(FriendFinderVerifyCodeScreenViewModel viewModel) {
        super(viewModel);
        this.viewModel = viewModel;
        this.codeEditText = (EditText) findViewById(R.id.friendfinder_verify_code_edit_text);
        this.resendCodeButton = (IconFontToggleButton) findViewById(R.id.friendfinder_verify_resend);
        this.callMeButton = (IconFontToggleButton) findViewById(R.id.friendfinder_verify_call_me);
        this.verifyButton = (XLEButton) findViewById(R.id.friendfinder_verify_verify_code);
        this.loadingLayout = (FrameLayout) findViewById(R.id.friendfinder_verify_loading);
        XLEAssert.assertNotNull(this.codeEditText);
        XLEAssert.assertNotNull(this.resendCodeButton);
        XLEAssert.assertNotNull(this.callMeButton);
        XLEAssert.assertNotNull(this.verifyButton);
        XLEAssert.assertNotNull(this.loadingLayout);
        this.resendCodeButton.setChecked(false);
        this.resendCodeButton.setEnabled(true);
        this.callMeButton.setChecked(false);
        this.callMeButton.setEnabled(true);
        this.verifyButton.setEnabled(false);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        this.codeEditText.addTextChangedListener(new TextWatcher() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderVerifyCodeScreenAdapter.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                FriendFinderVerifyCodeScreenAdapter.this.verifyButton.setEnabled(s.length() > 0);
            }
        });
        this.resendCodeButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderVerifyCodeScreenAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                UTCFriendFinder.trackPhoneContactsResendCode(FriendFinderVerifyCodeScreenAdapter.this.viewModel.getScreen().getName());
                FriendFinderVerifyCodeScreenAdapter.this.viewModel.resendCode();
            }
        });
        this.callMeButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderVerifyCodeScreenAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                UTCFriendFinder.trackPhoneContactsCallMe(FriendFinderVerifyCodeScreenAdapter.this.viewModel.getScreen().getName());
                FriendFinderVerifyCodeScreenAdapter.this.viewModel.callMe();
            }
        });
        this.verifyButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderVerifyCodeScreenAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                UTCFriendFinder.trackPhoneContactsNext(FriendFinderVerifyCodeScreenAdapter.this.viewModel.getScreen().getName());
                FriendFinderVerifyCodeScreenAdapter.this.viewModel.verifyCode(FriendFinderVerifyCodeScreenAdapter.this.codeEditText.getText().toString());
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        this.loadingLayout.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        this.resendCodeButton.setEnabled(!this.viewModel.isSendingCode());
        this.callMeButton.setEnabled(this.viewModel.isSendingCode() ? false : true);
    }
}
