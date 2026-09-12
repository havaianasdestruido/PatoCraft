package com.microsoft.onlineid.internal.ui;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.InternalException;
import com.microsoft.onlineid.internal.ActivityResultSender;
import com.microsoft.onlineid.internal.ApiRequest;
import com.microsoft.onlineid.internal.ApiRequestResultReceiver;
import com.microsoft.onlineid.internal.ApiResult;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Assertion;
import com.microsoft.onlineid.internal.Intents;
import com.microsoft.onlineid.internal.PackageInfoHelper;
import com.microsoft.onlineid.internal.Resources;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.sso.BundleMarshaller;
import com.microsoft.onlineid.sts.AuthenticatorAccountManager;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.ui.AddAccountActivity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AccountPickerActivity extends Activity {
    public static final String ActionPickAccount = "com.microsoft.onlineid.internal.PICK_ACCOUNT";
    public static final int AddAccountRequest = 1;
    private static final float BackgroundDimValue = 0.5f;
    private AccountListAdapter _accountList;
    private AuthenticatorAccountManager _accountManager;
    private Set<String> _cidExclusionList;
    private Resources _resources;
    private ActivityResultSender _resultSender;

    private enum Extras {
        CidsToExclude;

        public String getKey() {
            return "com.microsoft.msa.authenticator." + name();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ClientAnalytics.get().logScreenView(ClientAnalytics.AccountPickerScreen);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this._resources = new Resources(getApplicationContext());
        setupWindow();
        AccountHeaderView.applyStyle(this, this._resources.getString("webflow_header"));
        super.onCreate(savedInstanceState);
        this._resultSender = new ActivityResultSender(this, ActivityResultSender.ResultType.Account);
        setContentView(this._resources.getLayout("account_picker"));
        Bundle clientState = getIntent().getBundleExtra(BundleMarshaller.ClientStateBundleKey);
        String bodyText = null;
        String clientPackageName = getIntent().getStringExtra(BundleMarshaller.ClientPackageNameKey);
        if (clientPackageName != null && clientPackageName.equals(PackageInfoHelper.AuthenticatorPackageName)) {
            bodyText = clientState.getString(BundleMarshaller.AccountPickerBodyKey);
        }
        if (bodyText == null) {
            bodyText = this._resources.getString("account_picker_list_body");
        }
        BaseScreenFragment baseScreenFragment = BaseScreenFragment.buildWithBaseScreen(this._resources.getString("account_picker_list_header"), bodyText, BaseScreenFragment.class);
        getFragmentManager().beginTransaction().add(this._resources.getId("accountPickerBase"), baseScreenFragment).commit();
        this._accountList = new AccountListAdapter(this);
        this._accountManager = new AuthenticatorAccountManager(getApplicationContext());
        ArrayList<String> excluded = getIntent().getStringArrayListExtra(Extras.CidsToExclude.getKey());
        this._cidExclusionList = new HashSet();
        if (excluded != null) {
            this._cidExclusionList.addAll(excluded);
        }
        ListView accounts = (ListView) findViewById(this._resources.getId("listAccounts"));
        View addAccountView = getLayoutInflater().inflate(this._resources.getLayout("add_account_tile"), (ViewGroup) accounts, false);
        accounts.addFooterView(addAccountView);
        accounts.setAdapter((ListAdapter) this._accountList);
        accounts.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.microsoft.onlineid.internal.ui.AccountPickerActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.PickAccount, ClientAnalytics.ViaAccountPicker);
                if (position == AccountPickerActivity.this._accountList.getCount()) {
                    AccountPickerActivity.this.launchAddAccountFlow();
                    return;
                }
                AuthenticatorUserAccount account = AccountPickerActivity.this._accountList.getItem(position);
                AccountPickerActivity.this.onAccountPicked(account);
                AccountPickerActivity.this.finish();
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Set<AuthenticatorUserAccount> accounts = this._accountManager.getFilteredAccounts(this._cidExclusionList);
        Logger.info(String.format(Locale.US, "%d active account(s)", Integer.valueOf(accounts.size())));
        if (accounts.isEmpty()) {
            launchAddAccountFlow();
        } else {
            this._accountList.setContent(accounts);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchAddAccountFlow() {
        ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.InitiateAccountAdd, ClientAnalytics.ViaAccountPicker);
        Intent addAccountIntent = AddAccountActivity.getSignInIntent(getApplicationContext(), getIntent().getBundleExtra(BundleMarshaller.AppPropertiesKey), getIntent().getStringExtra(BundleMarshaller.ClientPackageNameKey), getIntent().getBundleExtra(BundleMarshaller.ClientStateBundleKey));
        ApiRequest addAccountRequest = new ApiRequest(getApplicationContext(), addAccountIntent).setResultReceiver(new AddAccountFlowReceiver(new Handler()));
        startActivityForResult(addAccountRequest.asIntent(), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccountPicked(AuthenticatorUserAccount account) {
        this._resultSender.putLimitedUserAccount(account).set();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onException(Exception e) {
        this._resultSender.putException(e).set();
        finish();
    }

    private class AddAccountFlowReceiver extends ApiRequestResultReceiver {
        public AddAccountFlowReceiver(Handler handler) {
            super(handler);
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onUserCancel() {
            if (AccountPickerActivity.this._accountManager.getFilteredAccounts(AccountPickerActivity.this._cidExclusionList).isEmpty()) {
                AccountPickerActivity.this.finish();
            }
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onFailure(Exception exception) {
            Assertion.check(exception != null, "Request failed without Exception.");
            AccountPickerActivity.this.onException(exception);
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onUINeeded(PendingIntent intent) {
            try {
                AccountPickerActivity.this.startIntentSenderForResult(intent.getIntentSender(), 0, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                AccountPickerActivity.this.onException(e);
            }
        }

        @Override // com.microsoft.onlineid.internal.ApiRequestResultReceiver
        protected void onSuccess(ApiResult result) {
            ClientAnalytics.get().logEvent(ClientAnalytics.SdkCategory, ClientAnalytics.AddAccount, ClientAnalytics.ViaAccountPicker);
            AuthenticatorUserAccount account = AccountPickerActivity.this._accountManager.getAccountByPuid(result.getAccountPuid());
            if (account == null) {
                AccountPickerActivity.this.onException(new InternalException("Picker could not find newly added account."));
            } else {
                AccountPickerActivity.this.onAccountPicked(account);
            }
        }
    }

    private void setupWindow() {
        requestWindowFeature(8);
        Window window = getWindow();
        WindowManager.LayoutParams params = window.getAttributes();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        window.addFlags(2);
        int accountPickerHeight = displayMetrics.heightPixels - getStatusBarHeight();
        int sideMargin = this._resources.getDimensionPixelSize("accountPickerMargin");
        int accountPickerWidth = displayMetrics.widthPixels - sideMargin;
        int maxAccountPickerHeight = this._resources.getDimensionPixelSize("maxAccountPickerHeight");
        int maxAccountPickerWidth = this._resources.getDimensionPixelSize("maxAccountPickerWidth");
        params.height = accountPickerHeight > maxAccountPickerHeight ? maxAccountPickerHeight : accountPickerHeight;
        if (accountPickerWidth <= maxAccountPickerWidth) {
            maxAccountPickerWidth = accountPickerWidth;
        }
        params.width = maxAccountPickerWidth;
        params.gravity = accountPickerHeight > maxAccountPickerHeight ? 17 : 80;
        params.dimAmount = BackgroundDimValue;
        window.setAttributes(params);
    }

    private int getStatusBarHeight() {
        int resourceId = getResources().getIdentifier("status_bar_height", "dimen", AddAccountActivity.PlatformName);
        if (resourceId == 0) {
            return 0;
        }
        int statusBarHeight = getResources().getDimensionPixelSize(resourceId);
        return statusBarHeight;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(this._resources.getMenu("action_dismiss_account_picker"), menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() != this._resources.getId("action_dismiss")) {
            return super.onOptionsItemSelected(item);
        }
        finish();
        return true;
    }

    public static Intent getAccountPickerIntent(Context applicationContext, ArrayList<String> cidExclusionList, AppProperties appProperties, String clientPackageName, Bundle clientState) {
        return new Intent().setClass(applicationContext, AccountPickerActivity.class).setAction(ActionPickAccount).putStringArrayListExtra(Extras.CidsToExclude.getKey(), cidExclusionList).putExtra(BundleMarshaller.AppPropertiesKey, appProperties.toBundle()).putExtra(BundleMarshaller.ClientPackageNameKey, clientPackageName).putExtra(BundleMarshaller.ClientStateBundleKey, clientState).setData(new Intents.DataBuilder().add(cidExclusionList).add(appProperties.toBundle()).add(clientPackageName).build());
    }
}
