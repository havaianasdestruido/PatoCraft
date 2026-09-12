package com.microsoft.xbox.xle.viewmodel;

import com.microsoft.xbox.service.model.FollowersData;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.model.UserProfileData;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class FriendSelectorItem extends FollowersData {
    private static final long serialVersionUID = 5799344980951867134L;
    private boolean selected;

    public FriendSelectorItem(FollowersData friend) {
        super(friend);
        this.selected = false;
    }

    public FriendSelectorItem(ProfileModel profileModel) {
        this.xuid = profileModel.getXuid();
        this.userProfileData = new UserProfileData();
        this.userProfileData.gamerTag = profileModel.getGamerTag();
        this.userProfileData.xuid = profileModel.getXuid();
        this.userProfileData.profileImageUrl = profileModel.getGamerPicImageUrl();
        this.userProfileData.gamerScore = profileModel.getGamerScore();
        this.userProfileData.appDisplayName = profileModel.getAppDisplayName();
        this.userProfileData.accountTier = profileModel.getAccountTier();
        this.userProfileData.gamerRealName = profileModel.getRealName();
    }

    public void toggleSelection() {
        this.selected = !this.selected;
    }

    public boolean getIsSelected() {
        return this.selected;
    }

    public void setSelected(boolean value) {
        this.selected = value;
    }

    public int hashCode() {
        int result = ((this.userProfileData == null || this.userProfileData.gamerTag == null) ? 0 : this.userProfileData.gamerTag.hashCode()) + 31;
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FriendSelectorItem other = (FriendSelectorItem) obj;
            if (this.userProfileData == null || this.userProfileData.gamerTag == null) {
                return other.userProfileData == null && other.userProfileData.gamerTag == null;
            }
            return this.userProfileData.gamerTag.equals(other.userProfileData.gamerTag);
        }
        return false;
    }
}
