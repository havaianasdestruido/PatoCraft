package com.microsoft.xbox.service.model;

import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.xle.app.XLEUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RecommendationsPeopleData extends FollowersData {
    private IPeopleHubResult.PeopleHubRecommendation recommendationInfo;

    public RecommendationsPeopleData(IPeopleHubResult.PeopleHubPersonSummary person) {
        super(person);
        XLEAssert.assertNotNull(person.recommendation);
        this.recommendationInfo = person.recommendation;
    }

    public RecommendationsPeopleData(boolean isDummy, FollowersData.DummyType type) {
        super(isDummy, type);
    }

    public String getRecommendationFirstReason() {
        return XLEUtil.isNullOrEmpty(this.recommendationInfo.Reasons) ? "" : this.recommendationInfo.Reasons.get(0);
    }

    public boolean getIsFacebookFriend() {
        return this.recommendationInfo.getRecommendationType() == IPeopleHubResult.RecommendationType.FacebookFriend;
    }

    public IPeopleHubResult.RecommendationType getRecommendationType() {
        return this.recommendationInfo.getRecommendationType();
    }
}
