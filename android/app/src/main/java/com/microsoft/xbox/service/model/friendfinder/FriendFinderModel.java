package com.microsoft.xbox.service.model.friendfinder;

import com.microsoft.xbox.service.model.ModelBase;
import com.microsoft.xbox.service.model.UpdateData;
import com.microsoft.xbox.service.model.UpdateType;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderModel extends ModelBase<FriendFinderState.FriendsFinderStateResult> {
    private static FriendFinderModel instance = new FriendFinderModel();
    private LoadFailedCallback callback;
    private FriendFinderState.FriendsFinderStateResult result;

    public interface LoadFailedCallback {
        void onFriendFinderLoadFailed();
    }

    public static FriendFinderModel getInstance() {
        return instance;
    }

    public FriendFinderState.FriendsFinderStateResult getResult() {
        return this.result;
    }

    @Override // com.microsoft.xbox.service.model.ModelBase
    public boolean shouldRefresh() {
        return shouldRefresh(this.lastRefreshTime);
    }

    @Override // com.microsoft.xbox.service.model.ModelBase, com.microsoft.xbox.toolkit.ModelData
    public void updateWithNewData(AsyncResult<FriendFinderState.FriendsFinderStateResult> result) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        super.updateWithNewData(result);
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult() != null) {
            this.result = result.getResult();
            FacebookManager.getInstance().setFacebookFriendFinderState(this.result);
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.FriendFinderFacebook, true), this, result.getException()));
        } else if (this.callback != null) {
            this.callback.onFriendFinderLoadFailed();
            this.callback = null;
        }
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    public void loadAsync(boolean forceRefresh, LoadFailedCallback callback) {
        this.callback = callback;
        loadAsync(forceRefresh);
    }

    public void loadAsync(boolean forceRefresh) {
        loadInternal(forceRefresh, UpdateType.FriendFinderFacebook, new GetPeopleHubFriendFinderStateResultRunner());
    }

    private class GetPeopleHubFriendFinderStateResultRunner extends IDataLoaderRunnable<FriendFinderState.FriendsFinderStateResult> {
        public GetPeopleHubFriendFinderStateResultRunner() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public FriendFinderState.FriendsFinderStateResult buildData() throws XLEException {
            FriendFinderState.FriendsFinderStateResult result = ServiceManagerFactory.getInstance().getSLSServiceManager().getPeopleHubFriendFinderState();
            return result;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
            FriendFinderModel.this.isLoading = true;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<FriendFinderState.FriendsFinderStateResult> result) {
            FriendFinderModel.this.updateWithNewData(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return 11L;
        }
    }
}
