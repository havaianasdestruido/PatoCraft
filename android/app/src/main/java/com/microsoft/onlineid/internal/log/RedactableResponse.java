package com.microsoft.onlineid.internal.log;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class RedactableResponse extends RedactableXml {
    private static final String[] TagsToKeep = {"ErrorSubcode", "ServerInfo", "S:Text", "S:Value", "ps:DisplaySessionID", "ps:ExpirationTime", "ps:RequestTime", "ps:SessionID", "ps:State", "psf:authstate", "psf:code", "psf:configVersion", "psf:reqstatus", "psf:serverInfo", "psf:text", "psf:value", "wsa:Address", "wst:TokenType", "wsu:Created", "wsu:Expires"};

    public RedactableResponse(String response) {
        super(response, TagsToKeep);
    }
}
