.class public Lcom/microsoft/onlineid/internal/AppProperties;
.super Ljava/lang/Object;
.source "AppProperties.java"


# static fields
.field public static final BooleanTrueValue:Ljava/lang/String; = "1"

.field public static final ClientFlightKey:Ljava/lang/String; = "client_flight"

.field public static final ClientIdKey:Ljava/lang/String; = "client_id"

.field public static final ClientWebTelemetryPrecachingEnabledKey:Ljava/lang/String; = "client_web_telemetry_precaching_enabled"

.field public static final ClientWebTelemetryRequestedKey:Ljava/lang/String; = "client_web_telemetry_requested"

.field public static final CobrandIdKey:Ljava/lang/String; = "cobrandid"

.field private static LegacyQueryStringKeys:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NoPasswordKey:Ljava/lang/String; = "nopa"

.field public static final PaginatedSignInKey:Ljava/lang/String; = "psi"

.field public static final PreferredMembernameTypeKey:Ljava/lang/String; = "fl"

.field public static final UnauthenticatedSessionIdKey:Ljava/lang/String; = "uaid"

.field public static final UsernameKey:Ljava/lang/String; = "username"


# instance fields
.field private final _values:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "client_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "client_flight"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "cobrandid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "email"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "psi"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "fl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "nopa"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "uaid"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "username"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/AppProperties;->LegacyQueryStringKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/AppProperties;-><init>(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    .line 73
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setLegacyBooleanValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "appPropertiesKey"    # Ljava/lang/String;
    .param p2, "requestParameters"    # Landroid/os/Bundle;
    .param p3, "legacyKey"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 236
    .local v0, "legacyValue":Z
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/AppProperties;->is(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 238
    const-string v1, "1"

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method private setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "appPropertiesKey"    # Ljava/lang/String;
    .param p2, "requestParameters"    # Landroid/os/Bundle;
    .param p3, "legacyKey"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "legacyValue":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/AppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/AppProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerQueryStringValues()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v1, "queryStringValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/AppProperties;->getServerValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/microsoft/onlineid/internal/AppProperties;->LegacyQueryStringKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method public getServerValues()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "value":Ljava/lang/String;
    const-string v5, "client_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "client_id"

    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "client_flight"

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 145
    .local v0, "isClientOnly":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v0    # "isClientOnly":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public is(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "1"

    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/AppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setLegacyParameters(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "requestParameters"    # Landroid/os/Bundle;

    .prologue
    .line 189
    const-string v0, "cobrandid"

    const-string v1, "com.microsoft.onlineid.cobranding_id"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 190
    const-string v0, "fl"

    const-string v1, "com.microsoft.onlineid.preferred_membername_type"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 191
    const-string v0, "client_web_telemetry_requested"

    const-string v1, "com.microsoft.onlineid.web_telemetry_requested"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyBooleanValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 194
    const-string v0, "client_flight"

    const-string v1, "com.microsoft.onlineid.client_flights"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 195
    const-string v0, "uaid"

    const-string v1, "com.microsoft.onlineid.unauth_session_id"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 196
    const-string v0, "username"

    const-string v1, "com.microsoft.onlineid.prefill_username"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyStringValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 197
    const-string v0, "client_web_telemetry_precaching_enabled"

    const-string v1, "com.microsoft.onlineid.web_telemetry_precaching_enabled"

    invoke-direct {p0, v0, p1, v1}, Lcom/microsoft/onlineid/internal/AppProperties;->setLegacyBooleanValue(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/AppProperties;->_values:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
