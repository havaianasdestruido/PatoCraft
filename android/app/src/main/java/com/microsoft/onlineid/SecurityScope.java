package com.microsoft.onlineid;

import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Scopes;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.Uris;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SecurityScope implements ISecurityScope {
    private static final long serialVersionUID = 1;
    private final String _address;
    private final String _policy;

    public SecurityScope(String target, String policy) {
        Strings.verifyArgumentNotNullOrEmpty(target, "target");
        if (policy == null || !policy.equalsIgnoreCase(Scopes.TokenBrokerPolicyString)) {
            Map<String, String> parameters = Collections.singletonMap("scope", Scopes.buildOffer(target, policy));
            target = Uris.mapToSortedQueryString(parameters);
            policy = Scopes.TokenBrokerPolicyString;
        }
        this._address = target;
        this._policy = policy;
    }

    public SecurityScope(String target, String policy, Map<String, String> parameters) {
        if (policy != null && policy.equalsIgnoreCase(Scopes.TokenBrokerPolicyString) && parameters != null) {
            throw new IllegalArgumentException("The parameters map cannot be applied to a scope already in TOKEN_BROKER format.");
        }
        if (parameters.containsKey("scope")) {
            throw new IllegalArgumentException("The parameters map cannot contain a 'scope' key.");
        }
        Map<String, String> parametersCopy = new HashMap<>(parameters);
        parametersCopy.put("scope", Scopes.buildOffer(target, policy));
        this._address = Uris.mapToSortedQueryString(parametersCopy);
        this._policy = Scopes.TokenBrokerPolicyString;
    }

    @Override // com.microsoft.onlineid.ISecurityScope
    public String getTarget() {
        return this._address;
    }

    @Override // com.microsoft.onlineid.ISecurityScope
    public String getPolicy() {
        return this._policy;
    }

    public int hashCode() {
        return Objects.hashCode(toString());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ISecurityScope)) {
            return false;
        }
        ISecurityScope scope = (ISecurityScope) other;
        return getTarget().equalsIgnoreCase(scope.getTarget()) && Strings.equalsIgnoreCase(getPolicy(), scope.getPolicy());
    }

    public String toString() {
        return this._address + " / " + this._policy;
    }
}
