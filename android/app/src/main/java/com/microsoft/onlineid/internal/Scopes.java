package com.microsoft.onlineid.internal;

import com.microsoft.onlineid.ISecurityScope;
import com.microsoft.onlineid.SecurityScope;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Scopes {
    public static final String ScopeParameterName = "scope";
    public static final String TokenBrokerPolicyString = "TOKEN_BROKER";

    public static ISecurityScope applyDefaultParametersToScope(ISecurityScope scope, Map<String, String> defaultParameters) {
        String target = scope.getTarget();
        String policy = scope.getPolicy();
        HashMap<String, String> parameters = new HashMap<>(defaultParameters);
        if (TokenBrokerPolicyString.equals(policy)) {
            Map<String, String> existingParameters = Uris.queryStringToMap(target);
            parameters.putAll(existingParameters);
        } else {
            parameters.put("scope", buildOffer(target, policy));
        }
        return new SecurityScope(Uris.mapToSortedQueryString(parameters), TokenBrokerPolicyString);
    }

    public static Map<String, String> extractParametersFromScope(ISecurityScope scope) {
        return Strings.equalsIgnoreCase(scope.getPolicy(), TokenBrokerPolicyString) ? Uris.queryStringToMap(scope.getTarget()) : Collections.emptyMap();
    }

    public static String buildOffer(String target, String policy) {
        StringBuilder builder = new StringBuilder();
        Strings.verifyArgumentNotNullOrEmpty(target, "target");
        builder.append("service::").append(target);
        if (policy != null && !policy.isEmpty()) {
            builder.append("::").append(policy);
        }
        return builder.toString();
    }
}
