package com.microsoft.xbox.toolkit.ui;

import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ActivityParameters extends HashMap<String, Object> {
    private static final String FF_DONE = "FriendFinderDone";
    private static final String FF_INFO_TYPE = "InfoType";
    private static final String FORCE_RELOAD = "ForceReload";
    private static final String FROM_SCREEN = "FromScreen";
    private static final String ME_XUID = "MeXuid";
    private static final String ORIGINATING_PAGE = "OriginatingPage";
    private static final String PRIVILEGES = "Privileges";
    private static final String SELECTED_PROFILE = "SelectedProfile";

    public String getMeXuid() {
        return (String) get(ME_XUID);
    }

    public void putMeXuid(String xuid) {
        put(ME_XUID, xuid);
    }

    public String getSelectedProfile() {
        return (String) get(SELECTED_PROFILE);
    }

    public void putSelectedProfile(String profileXuid) {
        put(SELECTED_PROFILE, profileXuid);
    }

    public String getPrivileges() {
        return (String) get(PRIVILEGES);
    }

    public void putPrivileges(String privileges) {
        put(PRIVILEGES, privileges);
    }

    public void putFromScreen(ScreenLayout screen) {
        put(FROM_SCREEN, screen);
    }

    public boolean isForceReload() {
        if (containsKey(FORCE_RELOAD)) {
            return ((Boolean) get(FORCE_RELOAD)).booleanValue();
        }
        return false;
    }

    public void putSourcePage(String pageName) {
        put(ORIGINATING_PAGE, pageName);
    }

    public FriendFinderType getFriendFinderType() {
        FriendFinderType type = (FriendFinderType) get(FF_INFO_TYPE);
        return type == null ? FriendFinderType.UNKNOWN : type;
    }

    public void putFriendFinderType(FriendFinderType type) {
        put(FF_INFO_TYPE, type);
    }

    public boolean getFriendFinderDone() {
        Boolean done = (Boolean) get(FF_DONE);
        return done != null && done.booleanValue();
    }

    public void putFriendFinderDone(boolean done) {
        put(FF_DONE, Boolean.valueOf(done));
    }
}
