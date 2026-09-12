package com.microsoft.xbox.service.network.managers;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class MutedListResultContainer {

    public static class MutedListResult {
        public ArrayList<MutedUser> users = new ArrayList<>();

        public void add(String xuid) {
            this.users.add(new MutedUser(xuid));
        }

        public MutedUser remove(String xuid) {
            for (MutedUser user : this.users) {
                if (user.xuid.equalsIgnoreCase(xuid)) {
                    this.users.remove(user);
                    return user;
                }
            }
            return null;
        }

        public boolean contains(String xuid) {
            for (MutedUser user : this.users) {
                if (user.xuid.equalsIgnoreCase(xuid)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class MutedUser {
        public String xuid;

        public MutedUser(String xuid) {
            this.xuid = xuid;
        }
    }
}
