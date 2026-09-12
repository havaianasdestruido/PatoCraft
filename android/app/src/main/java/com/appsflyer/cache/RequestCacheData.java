package com.appsflyer.cache;

import java.util.Scanner;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RequestCacheData {
    private String cacheKey;
    private String postData;
    private String requestURL;
    private String version;

    public RequestCacheData(String urlString, String postData, String sdkBuildNumber) {
        this.requestURL = urlString;
        this.postData = postData;
        this.version = sdkBuildNumber;
    }

    public RequestCacheData(char[] chars) {
        Scanner scanner = new Scanner(new String(chars));
        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            if (line.startsWith("url=")) {
                this.requestURL = line.substring("url=".length()).trim();
            } else if (line.startsWith("version=")) {
                this.version = line.substring("version=".length()).trim();
            } else if (line.startsWith("data=")) {
                this.postData = line.substring("data=".length()).trim();
            }
        }
        scanner.close();
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getPostData() {
        return this.postData;
    }

    public void setPostData(String postData) {
        this.postData = postData;
    }

    public String getRequestURL() {
        return this.requestURL;
    }

    public void setRequestURL(String requestURL) {
        this.requestURL = requestURL;
    }

    public void setCacheKey(String cacheKey) {
        this.cacheKey = cacheKey;
    }

    public String getCacheKey() {
        return this.cacheKey;
    }
}
