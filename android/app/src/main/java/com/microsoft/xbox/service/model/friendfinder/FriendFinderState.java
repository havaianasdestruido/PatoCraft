package com.microsoft.xbox.service.model.friendfinder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderState {

    public enum LinkedAccountOptInStatus {
        Unknown,
        Unset,
        Excluded,
        NotShown,
        ShowPrompt,
        OptedIn,
        OptedOut;

        public static LinkedAccountOptInStatus getOptedInStatus(String optInStatusString) {
            for (LinkedAccountOptInStatus status : values()) {
                if (status.name().equalsIgnoreCase(optInStatusString)) {
                    return status;
                }
            }
            throw new IllegalArgumentException();
        }
    }

    public enum LinkedAccountTokenStatus {
        Unknown,
        Unset,
        OK,
        TokenRenewalRequired;

        public static LinkedAccountTokenStatus getTokenStatus(String tokenStatusString) {
            for (LinkedAccountTokenStatus status : values()) {
                if (status.name().equalsIgnoreCase(tokenStatusString)) {
                    return status;
                }
            }
            throw new IllegalArgumentException();
        }
    }

    public static class FriendsFinderStateResult {
        public String facebookOptInStatus;
        public String facebookTokenStatus;
        public String phoneOptInStatus;

        public LinkedAccountOptInStatus getLinkedAccountOptInStatus() {
            try {
                return LinkedAccountOptInStatus.getOptedInStatus(this.facebookOptInStatus);
            } catch (IllegalArgumentException e) {
                return LinkedAccountOptInStatus.Unknown;
            }
        }

        public LinkedAccountTokenStatus getLinkedAccountTokenStatus() {
            try {
                return LinkedAccountTokenStatus.getTokenStatus(this.facebookTokenStatus);
            } catch (IllegalArgumentException e) {
                return LinkedAccountTokenStatus.Unknown;
            }
        }

        public boolean isFacebookStateChanged(FriendsFinderStateResult newResult) {
            return (getLinkedAccountOptInStatus() == newResult.getLinkedAccountOptInStatus() && getLinkedAccountTokenStatus() == newResult.getLinkedAccountTokenStatus()) ? false : true;
        }

        public LinkedAccountOptInStatus getPhoneAccountOptInStatus() {
            try {
                return LinkedAccountOptInStatus.getOptedInStatus(this.phoneOptInStatus);
            } catch (IllegalArgumentException e) {
                return LinkedAccountOptInStatus.Unknown;
            }
        }

        public boolean isPhoneStateChanged(FriendsFinderStateResult newResult) {
            return getPhoneAccountOptInStatus() != newResult.getPhoneAccountOptInStatus();
        }
    }
}
