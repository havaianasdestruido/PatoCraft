package com.microsoft.xbox.service.network.managers;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class NeverListResultContainer {

    public static class NeverListResult {
        public ArrayList<NeverUser> users = new ArrayList<>();

        public void add(String xuid) {
            this.users.add(new NeverUser(xuid));
        }

        public NeverUser remove(String xuid) {
            for (NeverUser user : this.users) {
                if (user.xuid.equalsIgnoreCase(xuid)) {
                    this.users.remove(user);
                    return user;
                }
            }
            return null;
        }

        public boolean contains(String xuid) {
            for (NeverUser user : this.users) {
                if (user.xuid.equalsIgnoreCase(xuid)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class NeverUser {
        public String xuid;

        public NeverUser(String xuid) {
            this.xuid = xuid;
        }
    }
}
