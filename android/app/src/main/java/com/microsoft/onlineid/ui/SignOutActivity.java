package com.microsoft.onlineid.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import com.microsoft.onlineid.internal.ActivityResultSender;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.ApiRequestResultReceiver;
import com.microsoft.onlineid.internal.ApiResult;
import com.microsoft.onlineid.internal.Intents;
import com.microsoft.onlineid.internal.MsaService;
import com.microsoft.onlineid.internal.Resources;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SignOutActivity extends Activity {
    private boolean _isSignedOutOfThisAppOnly;
    private ActivityResultSender _resultSender;
    private String _userCid;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        this._resultSender = new ActivityResultSender(this, ActivityResultSender.ResultType.Account);
        this._userCid = getIntent().getStringExtra(BundleMarshaller.UserCidKey);
        AlertDialog dialog = buildDialog();
        dialog.show();
    }

    private AlertDialog buildDialog() {
        final Context applicationContext = getApplicationContext();
        final ApiRequest originalSignOutRequest = new ApiRequest(applicationContext, getIntent());
        Resources resources = new Resources(applicationContext);
        RelativeLayout customContentView = (RelativeLayout) getLayoutInflater().inflate(resources.getLayout("sign_out_custom_content_view"), (ViewGroup) null);
        final CheckBox checkBox = (CheckBox) customContentView.findViewById(resources.getId("signOutCheckBox"));
        checkBox.setText(String.format(resources.getString("sign_out_dialog_checkbox"), originalSignOutRequest.getAccountName()));
        DialogInterface.OnClickListener signOutOnClickListener = new DialogInterface.OnClickListener() { // from class: com.microsoft.onlineid.ui.SignOutActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                String puid = originalSignOutRequest.getAccountPuid();
                String action = checkBox.isChecked() ? MsaService.ActionSignOutAllApps : MsaService.ActionSignOut;
                SignOutActivity.this._isSignedOutOfThisAppOnly = !checkBox.isChecked();
                ApiRequest signOutRequest = new ApiRequest(applicationContext, new Intent(applicationContext, (Class<?>) MsaService.class).setAction(action)).setAccountPuid(puid).setResultReceiver(SignOutActivity.this.new SignOutResultReceiver());
                signOutRequest.executeAsync();
                dialog.dismiss();
            }
        };
        DialogInterface.OnClickListener cancelOnClickListener = new DialogInterface.OnClickListener() { // from class: com.microsoft.onlineid.ui.SignOutActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int id) {
                dialog.cancel();
            }
        };
        DialogInterface.OnCancelListener onCancelListener = new DialogInterface.OnCancelListener() { // from class: com.microsoft.onlineid.ui.SignOutActivity.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                SignOutActivity.this.finish();
            }
        };
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(customContentView).setTitle(resources.getString("sign_out_dialog_title")).setPositiveButton(resources.getString("sign_out_dialog_button_sign_out"), signOutOnClickListener).setNegativeButton(resources.getString("sign_out_dialog_button_cancel"), cancelOnClickListener).setOnCancelListener(onCancelListener);
        return builder.create();
    }

    private class SignOutResultReceiver extends ApiRequestResultReceiver {
        public SignOutResultReceiver() {
            super(new Handler());
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onSuccess(ApiResult result) {
            SignOutActivity.this._resultSender.putSignedOutCid(SignOutActivity.this._userCid, SignOutActivity.this._isSignedOutOfThisAppOnly).set();
            SignOutActivity.this.finish();
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onUserCancel() {
            SignOutActivity.this.finish();
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onFailure(Exception e) {
            SignOutActivity.this._resultSender.putException(e).set();
            SignOutActivity.this.finish();
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onUINeeded(PendingIntent intent) {
            onFailure(new UnsupportedOperationException("onUINeeded not expected for sign out request."));
        }
    }

    public static Intent getSignOutIntent(Context applicationContext, String accountPuid, String accountCid, String accountName, Bundle callerState) {
        return new Intent(applicationContext, (Class<?>) SignOutActivity.class).putExtra(ApiRequest.Extras.AccountPuid.getKey(), accountPuid).putExtra(ApiRequest.Extras.AccountName.getKey(), accountName).putExtra(BundleMarshaller.UserCidKey, accountCid).putExtra(BundleMarshaller.ClientStateBundleKey, callerState).setData(new Intents.DataBuilder().add(accountPuid).add(accountName).build());
    }
}
