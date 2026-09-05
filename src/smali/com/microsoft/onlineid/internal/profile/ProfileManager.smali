.class public Lcom/microsoft/onlineid/internal/profile/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;
    }
.end annotation


# static fields
.field protected static final AppIdRequestProperty:Ljava/lang/String; = "PS-ApplicationId"

.field protected static final AuthTicketRequestProperty:Ljava/lang/String; = "PS-MSAAuthTicket"

.field protected static final ClientVersion:Ljava/lang/String; = "MSA Android"

.field protected static final ClientVersionRequestProperty:Ljava/lang/String; = "X-ClientVersion"

.field protected static final OrderedBasicNameAttributeName:Ljava/lang/String; = "PublicProfile.OrderedBasicName"

.field protected static final ProfileAppId:Ljava/lang/String; = "F5EF4246-47B3-403A-885B-023BBAE0F547"

.field protected static final ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

.field protected static final ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

.field protected static final ProfileServiceUrlInt:Ljava/lang/String; = "https://directory.services.live-int.com/profile/mine/WLX.Profiles.IC.json"

.field protected static final ProfileServiceUrlProduction:Ljava/lang/String; = "https://pf.directory.live.com/profile/mine/WLX.Profiles.IC.json"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private final _jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

.field private final _serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

.field private final _ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

.field private final _transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "ssl.live.com"

    const-string v2, "mbi_ssl"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

    .line 51
    new-instance v0, Lcom/microsoft/onlineid/SecurityScope;

    const-string v1, "ssl.live-int.com"

    const-string v2, "mbi_ssl"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 77
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    .line 78
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 79
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 80
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    .line 81
    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ClockSkewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 93
    new-instance v0, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    .line 94
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/ServerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    .line 95
    new-instance v0, Lcom/microsoft/onlineid/internal/sts/TicketManager;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/sts/TicketManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    .line 96
    new-instance v0, Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    .line 97
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 98
    return-void
.end method


# virtual methods
.method public createUpdateProfileRequest(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;
    .locals 5
    .param p1, "accountPuid"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.microsoft.onlineid.internal.UPDATE_PROFILE"

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 114
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "accountPuid"    # Ljava/lang/String;
    .param p2, "flowToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/exception/NetworkException;,
            Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;,
            Lcom/microsoft/onlineid/internal/exception/PromptNeededException;,
            Lcom/microsoft/onlineid/sts/exception/InvalidResponseException;,
            Lcom/microsoft/onlineid/sts/exception/StsException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_serverConfig:Lcom/microsoft/onlineid/sts/ServerConfig;

    invoke-virtual {v9}, Lcom/microsoft/onlineid/sts/ServerConfig;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v9

    sget-object v10, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    .line 135
    invoke-virtual {v10}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;

    move-result-object v10

    .line 134
    invoke-virtual {v9, v10}, Lcom/microsoft/onlineid/internal/configuration/Environment;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 137
    .local v2, "isProduction":Z
    if-eqz v2, :cond_1

    sget-object v5, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeProduction:Lcom/microsoft/onlineid/ISecurityScope;

    .line 142
    .local v5, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    :goto_0
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_ticketManager:Lcom/microsoft/onlineid/internal/sts/TicketManager;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v5, p2, v10}, Lcom/microsoft/onlineid/internal/sts/TicketManager;->getTicket(Ljava/lang/String;Lcom/microsoft/onlineid/ISecurityScope;Ljava/lang/String;Z)Lcom/microsoft/onlineid/Ticket;

    move-result-object v6

    .line 144
    .local v6, "ticket":Lcom/microsoft/onlineid/Ticket;
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_transportFactory:Lcom/microsoft/onlineid/internal/transport/TransportFactory;

    invoke-virtual {v9}, Lcom/microsoft/onlineid/internal/transport/TransportFactory;->createTransport()Lcom/microsoft/onlineid/internal/transport/Transport;

    move-result-object v7

    .line 145
    .local v7, "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    const/4 v4, 0x0

    .line 147
    .local v4, "responseStream":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    const-string v8, "https://pf.directory.live.com/profile/mine/WLX.Profiles.IC.json"

    .line 153
    .local v8, "url":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/microsoft/onlineid/internal/transport/Transport;->openGetRequest(Ljava/net/URL;)V

    .line 154
    const-string v9, "PS-ApplicationId"

    const-string v10, "F5EF4246-47B3-403A-885B-023BBAE0F547"

    invoke-virtual {v7, v9, v10}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v9, "PS-MSAAuthTicket"

    invoke-virtual {v6}, Lcom/microsoft/onlineid/Ticket;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v9, "X-ClientVersion"

    const-string v10, "MSA Android"

    invoke-virtual {v7, v9, v10}, Lcom/microsoft/onlineid/internal/transport/Transport;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/transport/Transport;->getResponseStream()Ljava/io/InputStream;

    move-result-object v4

    .line 164
    new-instance v3, Landroid/util/JsonReader;

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v3, v9}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v3, "reader":Landroid/util/JsonReader;
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_jsonParser:Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;

    invoke-virtual {v9, v3}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;->parseDisplayName(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "displayName":Ljava/lang/String;
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v9, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readAccount(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 167
    .local v0, "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-nez v0, :cond_3

    .line 169
    new-instance v9, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;

    const-string v10, "Account was deleted before operation could be completed."

    invoke-direct {v9, v10}, Lcom/microsoft/onlineid/internal/exception/AccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "reader":Landroid/util/JsonReader;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 181
    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v9

    .line 137
    .end local v4    # "responseStream":Ljava/io/InputStream;
    .end local v5    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    .end local v6    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .end local v7    # "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->ProfileServiceScopeInt:Lcom/microsoft/onlineid/ISecurityScope;

    goto :goto_0

    .line 147
    .restart local v4    # "responseStream":Ljava/io/InputStream;
    .restart local v5    # "scope":Lcom/microsoft/onlineid/ISecurityScope;
    .restart local v6    # "ticket":Lcom/microsoft/onlineid/Ticket;
    .restart local v7    # "transport":Lcom/microsoft/onlineid/internal/transport/Transport;
    :cond_2
    const-string v8, "https://directory.services.live-int.com/profile/mine/WLX.Profiles.IC.json"

    goto :goto_1

    .line 173
    .restart local v0    # "account":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .restart local v1    # "displayName":Ljava/lang/String;
    .restart local v3    # "reader":Landroid/util/JsonReader;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setDisplayName(Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v9}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setTimeOfLastProfileUpdate(J)V

    .line 175
    iget-object v9, p0, Lcom/microsoft/onlineid/internal/profile/ProfileManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v9, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v7}, Lcom/microsoft/onlineid/internal/transport/Transport;->closeConnection()V

    .line 181
    if-eqz v4, :cond_4

    .line 183
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 186
    :cond_4
    return-void
.end method
