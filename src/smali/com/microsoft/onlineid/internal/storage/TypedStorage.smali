.class public Lcom/microsoft/onlineid/internal/storage/TypedStorage;
.super Ljava/lang/Object;
.source "TypedStorage.java"


# static fields
.field protected static final AccountKeyToken:Ljava/lang/String; = "Account"

.field protected static final AccountsCollectionKey:Ljava/lang/String; = "Accounts"

.field protected static final ClockSkewKey:Ljava/lang/String; = "ClockSkew"

.field protected static final CollectionLock:Ljava/lang/Object;

.field protected static final ConfigLastDownloadedTimeKey:Ljava/lang/String; = "ConfigLastDownloadedTime"

.field protected static final DeviceBasedFlightsKey:Ljava/lang/String; = "DeviceBasedFlights"

.field protected static final DeviceFlightOverrideKey:Ljava/lang/String; = "DeviceFlightOverride"

.field protected static final DeviceIdentityKey:Ljava/lang/String; = "Device"

.field protected static final FormatSeparator:Ljava/lang/String; = "|"

.field protected static final LastBackupPushedTimeKey:Ljava/lang/String; = "LastBackupPushedTime"

.field protected static final LastBackupReceivedTimeKey:Ljava/lang/String; = "LastBackupReceivedTime"

.field protected static final SdkVersionKey:Ljava/lang/String; = "SdkVersion"

.field protected static final TicketCollectionKeyToken:Ljava/lang/String; = "Tickets"

.field protected static final TicketKeyToken:Ljava/lang/String; = "Ticket"


# instance fields
.field protected final _storage:Lcom/microsoft/onlineid/internal/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    .line 129
    return-void
.end method

.method protected constructor <init>(Lcom/microsoft/onlineid/internal/storage/Storage;)V
    .locals 0
    .param p1, "storage"    # Lcom/microsoft/onlineid/internal/storage/Storage;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    .line 139
    return-void
.end method

.method protected static constructAccountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 951
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 949
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs constructKey([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 938
    const-string v0, "|"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 983
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tickets"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 985
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 983
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructTicketCollectionKeyFromAccountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "accountKey"    # Ljava/lang/String;

    .prologue
    .line 996
    const-string v0, "Account"

    const-string v1, "Tickets"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;
    .locals 4
    .param p0, "accountPuid"    # Ljava/lang/String;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "securityScope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 964
    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ticket target"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ticket policy"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Ticket"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 969
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 970
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 971
    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 972
    invoke-interface {p2}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructKey([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasTickets(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountID"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasCollection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V
    .locals 5
    .param p1, "collectionKey"    # Ljava/lang/String;
    .param p3, "editor"    # Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 848
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v2, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_0

    .line 853
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 856
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 858
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_1

    .line 862
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    .line 868
    :goto_2
    return-void

    .line 866
    :cond_2
    invoke-virtual {p3, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_2
.end method


# virtual methods
.method public blockForCommit()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->blockForCommit()V

    .line 896
    return-void
.end method

.method public clearSynchronous()Z
    .locals 2

    .prologue
    .line 308
    sget-object v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->clear()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->commit()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteDeviceIdentity()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "Device"

    .line 169
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 171
    return-void
.end method

.method public dumpContents()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->dumpContents()V

    .line 904
    return-void
.end method

.method protected getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 911
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method protected getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<",
            "Lcom/microsoft/onlineid/sts/DeviceIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method protected getTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Lcom/microsoft/onlineid/Ticket;
    .locals 3
    .param p1, "accountID"    # Ljava/lang/String;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "securityScope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 235
    .line 236
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    .line 235
    invoke-virtual {p0, v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method protected getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<",
            "Lcom/microsoft/onlineid/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/storage/ObjectStreamSerializer;-><init>()V

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .prologue
    .line 368
    const-string v0, "Accounts"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasCollection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasCollection(Ljava/lang/String;)Z
    .locals 2
    .param p1, "collectionKey"    # Ljava/lang/String;

    .prologue
    .line 740
    sget-object v1, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 3
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v0, "Accounts"

    .line 326
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    .line 324
    invoke-virtual {p0, v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    return-object v0
.end method

.method public readAllAccounts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    const-string v0, "Accounts"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readCollection(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public readClockSkew()J
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "ClockSkew"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readCollection(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/util/Set;
    .locals 13
    .param p1, "collectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 756
    .local v6, "serializedValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v9, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 758
    :try_start_0
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v8, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 759
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 760
    .local v5, "retainedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    .local v2, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v10, v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 766
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 789
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "retainedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 770
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "retainedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "value":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    const-string v11, "Stored collection value was null."

    invoke-static {v10, v11}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 771
    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v10

    if-eq v8, v10, :cond_2

    .line 778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key set was out of sync for collection: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 781
    const-string v8, "|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 782
    .local v1, "index":I
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v10

    const-string v11, "Storage"

    const-string v12, "Collection consistency error"

    if-lez v1, :cond_3

    const/4 v8, 0x0

    .line 785
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 782
    :goto_1
    invoke-interface {v10, v11, v12, v8}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 787
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 789
    .end local v1    # "index":I
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 794
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :try_start_2
    invoke-interface {p2, v6}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserializeAll(Ljava/util/Map;)Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 801
    :goto_2
    return-object v4

    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .restart local v1    # "index":I
    :cond_3
    move-object v8, p1

    .line 785
    goto :goto_1

    .line 796
    .end local v1    # "index":I
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Unable to deserialize indexed collection."

    invoke-static {v8, v0}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public readConfigLastDownloadedTime()J
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "ConfigLastDownloadedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readDeviceBasedFlights()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v4, "DeviceBasedFlights"

    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 590
    .local v2, "deviceFlightsString":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 591
    .local v1, "deviceFlights":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 593
    .local v0, "deviceFlight":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    .end local v0    # "deviceFlight":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public readDeviceFlightOverrideEnabled()Z
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "DeviceFlightOverride"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "Device"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readObject(Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    return-object v0
.end method

.method protected readFromCollection(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Ljava/lang/Object;
    .locals 9
    .param p1, "collectionKey"    # Ljava/lang/String;
    .param p2, "valueKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p3, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 256
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v3, p2}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 259
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    invoke-interface {p3, v0}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 271
    if-nez v2, :cond_0

    .line 273
    new-array v3, v8, [Ljava/lang/String;

    aput-object p2, v3, v7

    invoke-virtual {p0, p1, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    .line 278
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v2

    .line 265
    .restart local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Value in storage at \'%s\' was corrupt."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    if-nez v2, :cond_0

    .line 273
    new-array v3, v8, [Ljava/lang/String;

    aput-object p2, v3, v7

    invoke-virtual {p0, p1, v3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 273
    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v7

    invoke-virtual {p0, p1, v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public readLastBackupPushedTime()J
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "LastBackupPushedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLastBackupReceivedTime()J
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "LastBackupReceivedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    const-string v1, "SdkVersion"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "Accounts"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 356
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeTickets(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method protected removeCollection(Ljava/lang/String;)V
    .locals 3
    .param p1, "collectionKey"    # Ljava/lang/String;

    .prologue
    .line 878
    sget-object v2, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 882
    .local v0, "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    .line 884
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 885
    monitor-exit v2

    .line 886
    return-void

    .line 885
    .end local v0    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removeFromCollection(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .param p1, "collectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "valueKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 705
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 706
    .local v0, "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_0

    .line 712
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 714
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v4, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 715
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 716
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 718
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 720
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    .line 726
    :goto_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 727
    monitor-exit v5

    .line 729
    .end local v0    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 724
    .restart local v0    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0, p1, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    goto :goto_1

    .line 727
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected varargs removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "collectionKey"    # Ljava/lang/String;
    .param p2, "valueKeys"    # [Ljava/lang/String;

    .prologue
    .line 689
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 690
    return-void
.end method

.method protected removeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)V
    .locals 4
    .param p1, "accountID"    # Ljava/lang/String;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 198
    .line 199
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 200
    invoke-static {p1, p2, p3}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeFromCollection(Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected removeTickets(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountID"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->removeCollection(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V
    .locals 5
    .param p1, "collectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .local p3, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    const/4 v2, 0x0

    .line 816
    .local v2, "encoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p3, p2}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serializeAll(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 824
    sget-object v4, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 826
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    .line 828
    .local v1, "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    invoke-direct {p0, p1, v2, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    .line 830
    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 831
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    return-void

    .line 818
    .end local v1    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v3, v0}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 831
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public retrieveBackup()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 389
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v2, "backup":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceIdentity()Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v3

    .line 392
    .local v3, "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    if-eqz v3, :cond_0

    .line 394
    const-string v4, "com.microsoft.onlineid.backup_device"

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->deviceAccountToBundle(Lcom/microsoft/onlineid/sts/DeviceIdentity;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, "accountsBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAllAccounts()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 400
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userAccountToBundle(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    if-nez v3, :cond_1

    .line 404
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasTickets(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 408
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 410
    const-string v4, "com.microsoft.onlineid.backup_users"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 413
    :cond_4
    return-object v2
.end method

.method public storeBackup(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "backup"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
        }
    .end annotation

    .prologue
    .line 432
    const-string v16, "com.microsoft.onlineid.backup_device"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 433
    .local v9, "deviceBundle":Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 434
    .local v15, "serializedDeviceIdentity":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 436
    invoke-static {v9}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->deviceAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/DeviceIdentity;

    move-result-object v10

    .line 440
    .local v10, "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 448
    .end local v10    # "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :cond_0
    const-string v16, "com.microsoft.onlineid.backup_users"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 449
    .local v8, "accountsBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v14, "serializedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v7

    .line 451
    .local v7, "accountSerializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    if-eqz v8, :cond_1

    .line 453
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 457
    .local v5, "accountBundle":Landroid/os/Bundle;
    :try_start_1
    invoke-static {v5}, Lcom/microsoft/onlineid/internal/sso/BundleMarshaller;->userAccountFromBundle(Landroid/os/Bundle;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :try_end_1
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 461
    .local v4, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    :try_start_2
    invoke-interface {v7, v4}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    .line 468
    .local v13, "encoded":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 470
    .end local v4    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v13    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 474
    .local v11, "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    const-string v17, "Encountered an error while trying to unbundle accounts."

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0

    .line 442
    .end local v5    # "accountBundle":Landroid/os/Bundle;
    .end local v7    # "accountSerializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    .end local v8    # "accountsBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v11    # "e":Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException;
    .end local v14    # "serializedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :catch_1
    move-exception v11

    .line 444
    .local v11, "e":Ljava/io/IOException;
    new-instance v16, Lcom/microsoft/onlineid/internal/storage/StorageException;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 463
    .end local v10    # "deviceIdentity":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v4    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .restart local v5    # "accountBundle":Landroid/os/Bundle;
    .restart local v7    # "accountSerializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;>;"
    .restart local v8    # "accountsBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v14    # "serializedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    .line 465
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_4
    new-instance v17, Lcom/microsoft/onlineid/internal/storage/StorageException;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_4
    .catch Lcom/microsoft/onlineid/internal/sso/BundleMarshallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 480
    .end local v4    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v5    # "accountBundle":Landroid/os/Bundle;
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1
    sget-object v17, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v17

    .line 482
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v12

    .line 485
    .local v12, "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    if-eqz v15, :cond_2

    .line 487
    const-string v16, "Device"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    .line 491
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    move-object/from16 v16, v0

    const-string v18, "Accounts"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 493
    .local v6, "accountKey":Ljava/lang/String;
    invoke-static {v6}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKeyFromAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v12}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    goto :goto_1

    .line 503
    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v12    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v16

    .line 497
    .restart local v12    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    :cond_3
    :try_start_6
    const-string v16, "Accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v12}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->replaceCollection(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/onlineid/internal/storage/Storage$Editor;)V

    .line 500
    const-string v16, "LastBackupReceivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    .line 502
    invoke-virtual {v12}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 503
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 504
    return-void
.end method

.method protected storeTicket(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/Ticket;)V
    .locals 3
    .param p1, "accountID"    # Ljava/lang/String;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "ticket"    # Lcom/microsoft/onlineid/Ticket;

    .prologue
    .line 182
    .line 183
    invoke-static {p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketCollectionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p3}, Lcom/microsoft/onlineid/Ticket;->getScope()Lcom/microsoft/onlineid/ISecurityScope;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructTicketKey(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getTicketSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    .line 182
    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V

    .line 187
    return-void
.end method

.method public writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    .locals 3
    .param p1, "account"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account.PUID"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "Accounts"

    .line 341
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->constructAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getAccountSerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    .line 339
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V

    .line 344
    return-void
.end method

.method public writeClockSkew(J)V
    .locals 3
    .param p1, "skew"    # J

    .prologue
    .line 288
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "ClockSkew"

    .line 289
    invoke-virtual {v0, v1, p1, p2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 291
    return-void
.end method

.method public writeConfigLastDownloadedTime()V
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "ConfigLastDownloadedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 553
    return-void
.end method

.method public writeDeviceBasedFlights(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "deviceFlights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 574
    .local v1, "deviceFlightsString":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 576
    .local v0, "deviceFlight":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    .end local v0    # "deviceFlight":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v2

    const-string v3, "DeviceBasedFlights"

    invoke-virtual {v2, v3, v1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 580
    return-void
.end method

.method public writeDeviceFlightOverrideEnabled(Z)V
    .locals 2
    .param p1, "shouldOverride"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "DeviceFlightOverride"

    .line 607
    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeBoolean(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 609
    return-void
.end method

.method public writeDeviceIdentity(Lcom/microsoft/onlineid/sts/DeviceIdentity;)V
    .locals 3
    .param p1, "identity"    # Lcom/microsoft/onlineid/sts/DeviceIdentity;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "Device"

    .line 159
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->getDeviceIdentitySerializer()Lcom/microsoft/onlineid/internal/storage/ISerializer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 161
    return-void
.end method

.method public writeLastBackupPushedTime()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "LastBackupPushedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 513
    return-void
.end method

.method public writeLastBackupReceivedTime()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "LastBackupReceivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 533
    return-void
.end method

.method public writeSdkVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    const-string v1, "SdkVersion"

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 629
    return-void
.end method

.method protected writeToCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)V
    .locals 7
    .param p1, "collectionKey"    # Ljava/lang/String;
    .param p2, "valueKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    if-eqz p3, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string v6, "Attempted to write null value to collection."

    invoke-static {v5, v6}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 658
    :try_start_0
    invoke-interface {p4, p3}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 665
    .local v2, "encoded":Ljava/lang/String;
    sget-object v6, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->CollectionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 667
    :try_start_1
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v5, p1}, Lcom/microsoft/onlineid/internal/storage/Storage;->readStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 669
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->_storage:Lcom/microsoft/onlineid/internal/storage/Storage;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/storage/Storage;->edit()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v1

    .line 670
    .local v1, "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 673
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 674
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v1, p1, v4}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-object v3, v4

    .line 677
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1, p2, v2}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->apply()V

    .line 678
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    return-void

    .line 651
    .end local v1    # "editor":Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v5, v0}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 678
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "encoded":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
