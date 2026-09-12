package com.microsoft.xbox.idp.interop;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class XsapiUser {
    private static XsapiUser instance;
    private final long id = create();
    private final UserImpl userImpl = new UserImpl(getUserImpl(this.id));
    private static final Object instanceLock = new Object();
    private static final String TAG = XsapiUser.class.getSimpleName();

    public interface FinishSignInCallback extends VoidCallback {
    }

    private interface LongCallback extends Interop.ErrorCallback {
        void onSuccess(long j);
    }

    public interface SignInSilentlyCallback extends Interop.ErrorCallback {
        void onSuccess(SignInStatus signInStatus);
    }

    private interface SignInSilentlyCallbackInternal extends Interop.ErrorCallback {
        void onSuccess(int i);
    }

    public interface SignOutCallback extends VoidCallback {
    }

    public interface StartSignInCallback extends VoidCallback {
    }

    public interface TokenAndSignatureCallback extends Interop.ErrorCallback {
        void onSuccess(TokenAndSignature tokenAndSignature);
    }

    public interface VoidCallback extends Interop.ErrorCallback {
        void onSuccess();
    }

    private static native long create();

    private static native void delete(long j);

    private static native void finishSignIn(long j, FinishSignInCallback finishSignInCallback, int i, String str);

    private static native String getPrivileges(long j);

    private static native void getTokenAndSignature(long j, String str, String str2, String str3, String str4, LongCallback longCallback);

    private static native long getUserImpl(long j);

    private static native String getXuid(long j);

    private static native boolean isProd(long j);

    private static native boolean isSignedIn(long j);

    private static native void signInSilently(long j, SignInSilentlyCallbackInternal signInSilentlyCallbackInternal);

    private static native void signOut(long j, SignOutCallback signOutCallback);

    private static native void startSignIn(long j, StartSignInCallback startSignInCallback);

    public static XsapiUser getInstance() {
        if (instance == null) {
            synchronized (instanceLock) {
                if (instance == null) {
                    instance = new XsapiUser();
                }
            }
        }
        return instance;
    }

    private XsapiUser() {
    }

    public UserImpl getUserImpl() {
        return this.userImpl;
    }

    public void startSignIn(StartSignInCallback callback) {
        startSignIn(this.id, callback);
    }

    public void finishSignIn(FinishSignInCallback callback, Interop.AuthFlowScreenStatus authStatus, String cid) {
        finishSignIn(this.id, callback, authStatus.getId(), cid);
    }

    public void signInSilently(final SignInSilentlyCallback callback) {
        signInSilently(this.id, new SignInSilentlyCallbackInternal() { // from class: com.microsoft.xbox.idp.interop.XsapiUser.1
            @Override // com.microsoft.xbox.idp.interop.XsapiUser.SignInSilentlyCallbackInternal
            public void onSuccess(int signInStatus) {
                callback.onSuccess(SignInStatus.fromId(signInStatus));
            }

            @Override // com.microsoft.xbox.idp.interop.Interop.ErrorCallback
            public void onError(int httpStatusCode, int errorCode, String errorMessage) {
                callback.onError(httpStatusCode, errorCode, errorMessage);
            }
        });
    }

    public void signOut(SignOutCallback callback) {
        signOut(this.id, callback);
    }

    public void getTokenAndSignature(String httpMethod, String url, String headers, TokenAndSignatureCallback callback) {
        getTokenAndSignature(httpMethod, url, headers, null, callback);
    }

    public void getTokenAndSignature(String httpMethod, String url, String headers, String requestBody, final TokenAndSignatureCallback callback) {
        getTokenAndSignature(this.id, httpMethod, url, headers, requestBody, new LongCallback() { // from class: com.microsoft.xbox.idp.interop.XsapiUser.2
            @Override // com.microsoft.xbox.idp.interop.XsapiUser.LongCallback
            public void onSuccess(long id) {
                callback.onSuccess(new TokenAndSignature(id));
            }

            @Override // com.microsoft.xbox.idp.interop.Interop.ErrorCallback
            public void onError(int httpStatusCode, int errorCode, String errorMessage) {
                callback.onError(httpStatusCode, errorCode, errorMessage);
            }
        });
    }

    public TokenAndSignature getTokenAndSignatureSync(String httpMethod, String url, String headers) {
        return getTokenAndSignatureSync(httpMethod, url, headers, null);
    }

    public TokenAndSignature getTokenAndSignatureSync(String httpMethod, String url, String headers, String requestBody) {
        final CountDownLatch latch = new CountDownLatch(1);
        TokenAndSignatureCallbackWithResult callback = new TokenAndSignatureCallbackWithResult() { // from class: com.microsoft.xbox.idp.interop.XsapiUser.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.microsoft.xbox.idp.interop.XsapiUser.TokenAndSignatureCallbackWithResult, com.microsoft.xbox.idp.interop.XsapiUser.TokenAndSignatureCallback
            public void onSuccess(TokenAndSignature tokenAndSignature) {
                super.onSuccess(tokenAndSignature);
                latch.countDown();
            }

            @Override // com.microsoft.xbox.idp.interop.XsapiUser.TokenAndSignatureCallbackWithResult, com.microsoft.xbox.idp.interop.Interop.ErrorCallback
            public void onError(int httpStatusCode, int errorCode, String errorMessage) {
                super.onError(httpStatusCode, errorCode, errorMessage);
                latch.countDown();
            }
        };
        getTokenAndSignature(httpMethod, url, headers, requestBody, callback);
        try {
            latch.await();
        } catch (InterruptedException e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return callback.getTokenAndSignature();
    }

    private static class TokenAndSignatureCallbackWithResult implements TokenAndSignatureCallback {
        private int errorCode;
        private String errorMessage;
        private int httpStatusCode;
        private TokenAndSignature tokenAndSignature;

        private TokenAndSignatureCallbackWithResult() {
        }

        @Override // com.microsoft.xbox.idp.interop.XsapiUser.TokenAndSignatureCallback
        public void onSuccess(TokenAndSignature tokenAndSignature) {
            this.tokenAndSignature = tokenAndSignature;
        }

        @Override // com.microsoft.xbox.idp.interop.Interop.ErrorCallback
        public void onError(int httpStatusCode, int errorCode, String errorMessage) {
            this.httpStatusCode = httpStatusCode;
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
        }

        public TokenAndSignature getTokenAndSignature() {
            return this.tokenAndSignature;
        }

        public int getHttpStatusCode() {
            return this.httpStatusCode;
        }

        public int getErrorCode() {
            return this.errorCode;
        }

        public String getErrorMessage() {
            return this.errorMessage;
        }
    }

    public boolean isProd() {
        return isProd(this.id);
    }

    public boolean isSignedIn() {
        return isSignedIn(this.id);
    }

    public String getXuid() {
        return getXuid(this.id);
    }

    public int[] getPrivileges() {
        return convertPrivileges(getPrivileges(this.id));
    }

    protected void finalize() throws Throwable {
        delete(this.id);
        super.finalize();
    }

    public static int[] convertPrivileges(String privileges) {
        LinkedList<Integer> list = new LinkedList<>();
        for (String s : privileges.split(" ")) {
            try {
                list.add(Integer.valueOf(Integer.parseInt(s)));
            } catch (NumberFormatException e) {
                Log.d(TAG, "Cannot convert " + s + " to integer");
            }
        }
        int[] buf = new int[list.size()];
        int idx = -1;
        for (Integer priv : list) {
            idx++;
            buf[idx] = priv.intValue();
        }
        return buf;
    }

    public static class UserImpl implements Parcelable {
        public static final Parcelable.Creator<UserImpl> CREATOR = new Parcelable.Creator<UserImpl>() { // from class: com.microsoft.xbox.idp.interop.XsapiUser.UserImpl.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserImpl createFromParcel(Parcel in) {
                return new UserImpl(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserImpl[] newArray(int size) {
                return new UserImpl[size];
            }
        };
        private final long id;

        public UserImpl(long id) {
            this.id = id;
        }

        protected UserImpl(Parcel in) {
            this.id = in.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeLong(this.id);
        }

        private long getId() {
            return this.id;
        }

        public long getUserImplPtr() {
            return this.id;
        }
    }

    public enum SignInStatus {
        SUCCESS(0),
        USER_INTERACTION_REQUIRED(1),
        USER_CANCEL(3);

        public final int id;

        SignInStatus(int id) {
            this.id = id;
        }

        public static SignInStatus fromId(int id) {
            switch (id) {
                case 0:
                    return SUCCESS;
                case 1:
                    return USER_INTERACTION_REQUIRED;
                default:
                    return USER_CANCEL;
            }
        }
    }
}
