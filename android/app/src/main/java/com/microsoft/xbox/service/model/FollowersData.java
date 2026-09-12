package com.microsoft.xbox.service.model;

import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FollowersData implements Serializable {
    private static final long serialVersionUID = 6714889261254600161L;
    private String followerText;
    public boolean isCurrentlyPlaying;
    protected boolean isDummy;
    public boolean isFavorite;
    public transient boolean isNew;
    protected DummyType itemDummyType;
    private Date lastPlayedWithDateTime;
    private IPeopleHubResult.PeopleHubPersonSummary personSummary;
    public String presenceString;
    private String recentPlayerText;
    private SearchResultPerson searchResultPerson;
    public UserStatus status;
    private Date timeStamp;
    public long titleId;
    public UserProfileData userProfileData;
    public String xuid;

    public enum DummyType {
        NOT_SET,
        DUMMY_HEADER,
        DUMMY_FRIENDS_HEADER,
        DUMMY_LINK_TO_FACEBOOK,
        DUMMY_FRIENDS_WHO_PLAY,
        DUMMY_VIPS,
        DUMMY_ERROR,
        DUMMY_NO_DATA,
        DUMMY_LOADING
    }

    public FollowersData() {
        this.personSummary = null;
        this.isCurrentlyPlaying = false;
        this.isDummy = false;
        this.isNew = false;
    }

    public FollowersData(boolean isDummy) {
        this(isDummy, DummyType.NOT_SET);
    }

    public FollowersData(boolean isDummy, DummyType type) {
        this.personSummary = null;
        this.isCurrentlyPlaying = false;
        this.isDummy = false;
        this.isNew = false;
        this.isDummy = isDummy;
        this.itemDummyType = type;
    }

    public FollowersData(IPeopleHubResult.PeopleHubPersonSummary person) {
        this.personSummary = null;
        this.isCurrentlyPlaying = false;
        this.isDummy = false;
        this.isNew = false;
        XLEAssert.assertNotNull(person);
        this.personSummary = person;
        this.xuid = person.xuid;
        this.userProfileData = new UserProfileData(person);
        this.isFavorite = person.isFavorite;
        this.status = UserStatus.getStatusFromString(person.presenceState);
        this.presenceString = person.presenceText;
        if (person.titleHistory != null) {
            this.titleId = person.titleHistory.TitleId;
            this.timeStamp = person.titleHistory.LastTimePlayed;
        }
        if (person.recentPlayer != null) {
            this.recentPlayerText = person.recentPlayer.text;
            if (!XLEUtil.isNullOrEmpty(person.recentPlayer.titles)) {
                this.lastPlayedWithDateTime = person.recentPlayer.titles.get(0).lastPlayedWithDateTime;
            }
        }
        if (person.follower != null) {
            this.followerText = person.follower.text;
        }
        if (person.titlePresence != null) {
            this.isCurrentlyPlaying = person.titlePresence.IsCurrentlyPlaying;
            this.presenceString = person.titlePresence.PresenceText;
        }
    }

    public FollowersData(FollowersData follower) {
        this.personSummary = null;
        this.isCurrentlyPlaying = false;
        this.isDummy = false;
        this.isNew = false;
        this.xuid = follower.xuid;
        this.isFavorite = follower.isFavorite;
        this.status = follower.status;
        this.presenceString = follower.presenceString;
        this.titleId = follower.titleId;
        this.userProfileData = follower.userProfileData;
        this.isCurrentlyPlaying = follower.isCurrentlyPlaying;
        this.timeStamp = follower.timeStamp;
        this.isDummy = follower.isDummy;
    }

    public void setItemDummyType(DummyType type) {
        this.isDummy = true;
        this.itemDummyType = type;
    }

    public DummyType getItemDummyType() {
        return this.itemDummyType;
    }

    public IPeopleHubResult.PeopleHubPersonSummary getPersonSummary() {
        return this.personSummary;
    }

    public int getGameScore() {
        if (this.userProfileData != null) {
            return Integer.parseInt(this.userProfileData.gamerScore);
        }
        return 0;
    }

    public String getGamertag() {
        return this.userProfileData != null ? this.userProfileData.gamerTag : "";
    }

    public String getGamerPicUrl() {
        if (this.userProfileData != null) {
            return this.userProfileData.profileImageUrl;
        }
        return null;
    }

    public String getGamerName() {
        return this.userProfileData != null ? this.userProfileData.appDisplayName : "";
    }

    public String getGamerRealName() {
        if (this.userProfileData == null) {
            return null;
        }
        return this.userProfileData.gamerRealName;
    }

    public boolean getIsOnline() {
        return this.status == UserStatus.Online;
    }

    public Date getTimeStamp() {
        return this.timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public boolean getIsDummy() {
        return this.isDummy;
    }

    public Date getLastPlayedWithDateTime() {
        return this.lastPlayedWithDateTime;
    }

    public String getRecentPlayerTitleText() {
        return this.recentPlayerText;
    }

    public String getFollowersTitleText() {
        return this.followerText;
    }

    public SearchResultPerson getSearchResultPerson() {
        return this.searchResultPerson;
    }

    public void setSearchResultPerson(SearchResultPerson srp) {
        this.searchResultPerson = srp;
    }
}
