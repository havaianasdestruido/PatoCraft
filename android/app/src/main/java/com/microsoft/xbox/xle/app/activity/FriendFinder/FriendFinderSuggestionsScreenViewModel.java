package com.microsoft.xbox.xle.app.activity.FriendFinder;

import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderSuggestionModel;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.model.sls.FavoriteListRequest;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.adapter.FriendFinderSuggestionsScreenAdapter;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderSuggestionsScreenViewModel extends ViewModelBase {
    private AddSuggestionsAsyncTask addSuggestionsAsyncTask;
    private ArrayList<IPeopleHubResult.PeopleHubPersonSummary> foundPeople;
    private FriendFinderType friendFinderType;
    private GetPeopleHubRecommendationsAsyncTask getPeopleHubRecommendationsAsyncTask;
    private boolean isAddingSuggestions;
    private boolean isLoadingRecommendations;
    private ProfileModel meProfileModel;

    public FriendFinderSuggestionsScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        this.foundPeople = new ArrayList<>(0);
        this.adapter = new FriendFinderSuggestionsScreenAdapter(this);
    }

    public String getTitle() {
        switch (this.foundPeople.size()) {
            case 0:
                String titleText = XboxTcuiSdk.getResources().getText(R.string.FriendFinder_Facebook_Upsell_Title_NoFriends).toString();
                return titleText;
            case 1:
                String titleText2 = String.format(XboxTcuiSdk.getResources().getText(R.string.FriendFinder_Facebook_Upsell_Title_OneFriend_Android).toString(), getNameOrGamertagAtIndex(0));
                return titleText2;
            case 2:
                String titleText3 = String.format(XboxTcuiSdk.getResources().getText(R.string.FriendFinder_Facebook_Upsell_Title_TwoFriends_Android).toString(), getNameOrGamertagAtIndex(0), getNameOrGamertagAtIndex(1));
                return titleText3;
            case 3:
                String titleText4 = String.format(XboxTcuiSdk.getResources().getText(R.string.FriendFinder_Facebook_Upsell_Title_ThreeFriends_Android).toString(), getNameOrGamertagAtIndex(0), getNameOrGamertagAtIndex(1), getNameOrGamertagAtIndex(2));
                return titleText4;
            default:
                String titleText5 = String.format(XboxTcuiSdk.getResources().getText(R.string.FriendFinder_Facebook_Upsell_Title_ManyFriends_Android).toString(), getNameOrGamertagAtIndex(0), getNameOrGamertagAtIndex(1), Integer.valueOf(this.foundPeople.size() - 2));
                return titleText5;
        }
    }

    private String getNameOrGamertagAtIndex(int index) {
        if (index >= this.foundPeople.size()) {
            return "";
        }
        IPeopleHubResult.PeopleHubPersonSummary person = this.foundPeople.get(index);
        String result = person.getRealNameFromRecommendationOrDefault();
        if (JavaUtil.isNullOrEmpty(result)) {
            return person.gamertag;
        }
        return result;
    }

    public String getSubtitle() {
        if (this.foundPeople.size() == 0) {
            String subtitle = XboxTcuiSdk.getResources().getString(R.string.FriendFinder_Facebook_Upsell_Description_NoFriends_LineOne);
            if (this.friendFinderType == FriendFinderType.FACEBOOK) {
                return subtitle + "\n\n" + XboxTcuiSdk.getResources().getString(R.string.FriendFinder_Facebook_Upsell_Description_Default_LineTwo);
            }
            return subtitle;
        }
        return XboxTcuiSdk.getResources().getString(R.string.FriendFinder_Found_Subtitle);
    }

    public ArrayList<FriendFinderSuggestionModel> getSuggestions() {
        ArrayList<FriendFinderSuggestionModel> suggestions = new ArrayList<>(this.foundPeople.size());
        for (IPeopleHubResult.PeopleHubPersonSummary person : this.foundPeople) {
            suggestions.add(FriendFinderSuggestionModel.fromPeopleHubSummary(person));
        }
        return suggestions;
    }

    public void addSuggestions(ArrayList<Integer> suggestionsToAdd) {
        cancelActiveTasks();
        ArrayList<String> xuids = new ArrayList<>(suggestionsToAdd.size());
        for (Integer i : suggestionsToAdd) {
            XLEAssert.assertTrue(i.intValue() < this.foundPeople.size());
            if (i.intValue() < this.foundPeople.size()) {
                xuids.add(this.foundPeople.get(i.intValue()).xuid);
            }
        }
        switch (this.friendFinderType) {
            case PHONE:
                UTCFriendFinder.trackPhoneContactsAddFriends(getScreen().getName(), (String[]) xuids.toArray(new String[xuids.size()]));
                break;
            case FACEBOOK:
                UTCFriendFinder.trackAddFacebookFriend(getScreen().getName(), (String[]) xuids.toArray(new String[xuids.size()]));
                break;
        }
        this.addSuggestionsAsyncTask = new AddSuggestionsAsyncTask(xuids);
        this.addSuggestionsAsyncTask.load(true);
    }

    public void navigateToSkip() {
        switch (this.friendFinderType) {
            case PHONE:
                UTCFriendFinder.trackPhoneContactsSkipAddFriends(getScreen().getName());
                break;
            case FACEBOOK:
                UTCFriendFinder.trackAddFacebookFriendCancel(getScreen().getName());
                break;
        }
        navigateToInvite();
    }

    private void navigateToInvite() {
        if (this.friendFinderType == FriendFinderType.FACEBOOK) {
            navigateToFacebookInvite();
        } else {
            navigateToPhoneInvite();
        }
    }

    private void navigateToFacebookInvite() {
        ActivityParameters params = new ActivityParameters();
        params.putFriendFinderType(FriendFinderType.FACEBOOK);
        try {
            NavigationManager.getInstance().PushScreen(FriendFinderInviteScreen.class, params);
        } catch (XLEException e) {
        }
    }

    private void navigateToPhoneInvite() {
        ActivityParameters params = new ActivityParameters();
        params.putFriendFinderDone(true);
        try {
            NavigationManager.getInstance().PushScreen(FriendFinderHomeScreen.class, params);
        } catch (XLEException e) {
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
        this.friendFinderType = NavigationManager.getInstance().getActivityParameters().getFriendFinderType();
        XLEAssert.assertTrue(this.friendFinderType != FriendFinderType.UNKNOWN);
        this.meProfileModel = ProfileModel.getMeProfileModel();
        XLEAssert.assertNotNull(this.meProfileModel);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new FriendFinderSuggestionsScreenAdapter(this);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStopOverride() {
        cancelActiveTasks();
    }

    private void cancelActiveTasks() {
        if (this.getPeopleHubRecommendationsAsyncTask != null) {
            this.getPeopleHubRecommendationsAsyncTask.cancel();
        }
        if (this.addSuggestionsAsyncTask != null) {
            this.addSuggestionsAsyncTask.cancel();
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isLoadingRecommendations || this.isAddingSuggestions;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
        cancelActiveTasks();
        this.getPeopleHubRecommendationsAsyncTask = new GetPeopleHubRecommendationsAsyncTask();
        this.getPeopleHubRecommendationsAsyncTask.load(true);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getScreen().getName(), this.friendFinderType);
        return super.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetPeopleHubRecommendationsAsyncTaskCompleted(AsyncActionStatus status) {
        this.isLoadingRecommendations = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                updateFoundPeople();
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Service_ErrorText);
                break;
        }
        updateAdapter();
    }

    private void updateFoundPeople() {
        IPeopleHubResult.RecommendationType recommendationType = this.friendFinderType == FriendFinderType.FACEBOOK ? IPeopleHubResult.RecommendationType.FacebookFriend : IPeopleHubResult.RecommendationType.PhoneContact;
        IPeopleHubResult.PeopleHubPeopleSummary recommendations = this.meProfileModel.getPeopleHubRecommendationsRawData();
        this.foundPeople = new ArrayList<>();
        if (recommendations != null) {
            for (IPeopleHubResult.PeopleHubPersonSummary person : recommendations.people) {
                if (person.recommendation.getRecommendationType() == recommendationType) {
                    this.foundPeople.add(person);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddSuggestionsCompleted(AsyncActionStatus status) {
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                navigateToInvite();
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Service_ErrorText);
                break;
        }
    }

    private class GetPeopleHubRecommendationsAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private GetPeopleHubRecommendationsAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return false;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            FriendFinderSuggestionsScreenViewModel.this.meProfileModel.loadSync(true);
            return FriendFinderSuggestionsScreenViewModel.this.meProfileModel.loadPeopleHubRecommendations(true).getStatus();
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderSuggestionsScreenViewModel.this.isLoadingRecommendations = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            FriendFinderSuggestionsScreenViewModel.this.onGetPeopleHubRecommendationsAsyncTaskCompleted(status);
        }
    }

    private class AddSuggestionsAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ArrayList<String> xuids;

        public AddSuggestionsAsyncTask(ArrayList<String> xuids) {
            this.xuids = xuids;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.xuids.size() > 0;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            FriendFinderSuggestionsScreenViewModel.this.onAddSuggestionsCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            FriendFinderSuggestionsScreenViewModel.this.isAddingSuggestions = true;
            FriendFinderSuggestionsScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            FriendFinderSuggestionsScreenViewModel.this.isAddingSuggestions = false;
            FriendFinderSuggestionsScreenViewModel.this.onAddSuggestionsCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            try {
                AddFollowingUserResponseContainer.AddFollowingUserResponse response = ServiceManagerFactory.getInstance().getSLSServiceManager().addUserToFollowingList(FavoriteListRequest.getFavoriteListRequestBody(new FavoriteListRequest(this.xuids)));
                return response.getAddFollowingRequestStatus() ? AsyncActionStatus.SUCCESS : AsyncActionStatus.FAIL;
            } catch (XLEException e) {
                return AsyncActionStatus.FAIL;
            }
        }
    }
}
