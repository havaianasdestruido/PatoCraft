package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Loader;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.gson.GsonBuilder;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;
import com.microsoft.xbox.idp.model.UserAccount;
import com.microsoft.xbox.idp.services.EndpointsFactory;
import com.microsoft.xbox.idp.toolkit.BitmapLoader;
import com.microsoft.xbox.idp.toolkit.ObjectLoader;
import com.microsoft.xbox.idp.util.CacheUtil;
import com.microsoft.xbox.idp.util.FragmentLoaderKey;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class HeaderFragment extends BaseFragment implements View.OnClickListener {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int LOADER_GET_PROFILE = 1;
    private static final int LOADER_USER_IMAGE_URL = 2;
    private static final Callbacks NO_OP_CALLBACKS;
    private static final String TAG;
    private UserAccount userAccount;
    private TextView userEmail;
    private ImageView userImageView;
    private TextView userName;
    private Callbacks callbacks = NO_OP_CALLBACKS;
    LoaderManager.LoaderCallbacks<ObjectLoader.Result<UserAccount>> userAccountCallbacks = new LoaderManager.LoaderCallbacks<ObjectLoader.Result<UserAccount>>() { // from class: com.microsoft.xbox.idp.ui.HeaderFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<ObjectLoader.Result<UserAccount>> onCreateLoader(int id, Bundle args) {
            Log.d(HeaderFragment.TAG, "Creating LOADER_GET_PROFILE");
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", EndpointsFactory.get().accounts(), "/users/current/profile"), "4");
            return new ObjectLoader(HeaderFragment.this.getActivity(), CacheUtil.getObjectLoaderCache(), new FragmentLoaderKey(HeaderFragment.class, 1), UserAccount.class, UserAccount.registerAdapters(new GsonBuilder()).create(), httpCall);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<ObjectLoader.Result<UserAccount>> loader, ObjectLoader.Result<UserAccount> result) {
            Log.d(HeaderFragment.TAG, "LOADER_GET_PROFILE finished");
            if (result.hasData()) {
                HeaderFragment.this.userAccount = result.getData();
                HeaderFragment.this.userEmail.setText(HeaderFragment.this.userAccount.email);
                if (!TextUtils.isEmpty(HeaderFragment.this.userAccount.firstName) || !TextUtils.isEmpty(HeaderFragment.this.userAccount.lastName)) {
                    HeaderFragment.this.userName.setVisibility(0);
                    HeaderFragment.this.userName.setText(HeaderFragment.this.getString(R.string.xbid_first_and_last_name_android, new Object[]{HeaderFragment.this.userAccount.firstName, HeaderFragment.this.userAccount.lastName}));
                } else {
                    HeaderFragment.this.userName.setVisibility(8);
                }
                HeaderFragment.this.getLoaderManager().initLoader(2, null, HeaderFragment.this.imageCallbacks);
                return;
            }
            Log.e(HeaderFragment.TAG, "Error getting UserAccount");
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<ObjectLoader.Result<UserAccount>> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<BitmapLoader.Result> imageCallbacks = new LoaderManager.LoaderCallbacks<BitmapLoader.Result>() { // from class: com.microsoft.xbox.idp.ui.HeaderFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<BitmapLoader.Result> onCreateLoader(int id, Bundle args) {
            Log.d(HeaderFragment.TAG, "Creating LOADER_USER_IMAGE_URL");
            Log.d(HeaderFragment.TAG, "url: " + HeaderFragment.this.userAccount.imageUrl);
            return new BitmapLoader(HeaderFragment.this.getActivity(), CacheUtil.getBitmapCache(), HeaderFragment.this.userAccount.imageUrl, HeaderFragment.this.userAccount.imageUrl);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<BitmapLoader.Result> loader, BitmapLoader.Result result) {
            Log.d(HeaderFragment.TAG, "LOADER_USER_IMAGE_URL finished");
            if (result.hasData()) {
                HeaderFragment.this.userImageView.setVisibility(0);
                HeaderFragment.this.userImageView.setImageBitmap(result.getData());
            } else if (result.hasException()) {
                HeaderFragment.this.userImageView.setVisibility(8);
                Log.w(HeaderFragment.TAG, "Failed to load user image with message: " + result.getException().getMessage());
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<BitmapLoader.Result> loader) {
            HeaderFragment.this.userImageView.setImageBitmap(null);
        }
    };

    public interface Callbacks {
        void onClickCloseHeader();
    }

    static {
        $assertionsDisabled = !HeaderFragment.class.desiredAssertionStatus();
        TAG = HeaderFragment.class.getSimpleName();
        NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.HeaderFragment.3
            @Override // com.microsoft.xbox.idp.ui.HeaderFragment.Callbacks
            public void onClickCloseHeader() {
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!$assertionsDisabled && !(activity instanceof Callbacks)) {
            throw new AssertionError();
        }
        this.callbacks = (Callbacks) activity;
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.callbacks = NO_OP_CALLBACKS;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_header, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        view.findViewById(R.id.xbid_close).setOnClickListener(this);
        this.userImageView = (ImageView) view.findViewById(R.id.xbid_user_image);
        this.userName = (TextView) view.findViewById(R.id.xbid_user_name);
        this.userEmail = (TextView) view.findViewById(R.id.xbid_user_email);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle args = getArguments();
        if (args != null) {
            getLoaderManager().initLoader(1, args, this.userAccountCallbacks);
        } else {
            Log.e(TAG, "No arguments provided");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.xbid_close) {
            this.callbacks.onClickCloseHeader();
        }
    }
}
