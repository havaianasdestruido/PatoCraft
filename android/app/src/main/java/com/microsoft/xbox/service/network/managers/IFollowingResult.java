package com.microsoft.xbox.service.network.managers;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface IFollowingResult {

    public static class FollowingResult {
        public ArrayList<People> people;
        public int totalCount;
    }

    public static class People {
        public boolean isFavorite;
        public String xuid;
    }
}
