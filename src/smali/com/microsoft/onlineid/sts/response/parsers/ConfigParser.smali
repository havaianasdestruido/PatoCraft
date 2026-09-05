.class public Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "ConfigParser.java"


# static fields
.field static final CfgNamespace:Ljava/lang/String; = "http://schemas.microsoft.com/Passport/PPCRL"

.field static final DefaultNamespace:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#"


# instance fields
.field private final _editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

.field private final _endpointSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final _intSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _stringSetSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final _stringSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ServerConfig$Editor;)V
    .locals 6
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "editor"    # Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    const-string v3, "Signature"

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSettings:Ljava/util/Map;

    .line 51
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSettings:Ljava/util/Map;

    sget-object v3, Lcom/microsoft/onlineid/sts/ServerConfig;->Version:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig$Int;->values()[Lcom/microsoft/onlineid/sts/ServerConfig$Int;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 56
    .local v0, "setting":Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    invoke-virtual {p0, v5, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "setting":Lcom/microsoft/onlineid/sts/ServerConfig$Int;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    .line 60
    invoke-static {}, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;->values()[Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    .local v0, "setting":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    invoke-virtual {p0, v4, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "setting":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSetSettings:Ljava/util/Map;

    .line 66
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSetSettings:Ljava/util/Map;

    sget-object v2, Lcom/microsoft/onlineid/sts/ServerConfig;->AndroidSsoCertificates:Lcom/microsoft/onlineid/internal/configuration/Setting;

    invoke-virtual {p0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected addSetting(Ljava/util/Map;Lcom/microsoft/onlineid/internal/configuration/ISetting;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T::",
            "Lcom/microsoft/onlineid/internal/configuration/ISetting",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .local p2, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "TT;"
    invoke-interface {p2}, Lcom/microsoft/onlineid/internal/configuration/ISetting;->getSettingName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method protected onParse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v2, "cfg:Configuration"

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->nextStartTag(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    .line 91
    .local v0, "configScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    const-string v2, "cfg:Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cfg:ServiceURIs"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cfg:ServiceURIs1"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->parseSettings()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    .line 108
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected parseSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    .line 117
    .local v1, "settingsScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "elementName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseStringSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseIntSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseEndpointSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->tryParseStringSetSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    .line 129
    .end local v0    # "elementName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected tryParseEndpointSetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_endpointSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;

    .line 182
    .local v0, "setting":Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setUrl(Lcom/microsoft/onlineid/sts/ServerConfig$Endpoint;Ljava/net/URL;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 185
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected tryParseIntSetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_intSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    .line 162
    .local v0, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setInt(Lcom/microsoft/onlineid/internal/configuration/ISetting;I)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected tryParseStringSetSetting(Ljava/lang/String;)Z
    .locals 7
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSetSettings:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    .line 202
    .local v1, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 209
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "element":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {v5, v1, v4}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setStringSet(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/util/Set;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 216
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x1

    .line 219
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected tryParseStringSetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_stringSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/ISetting;

    .line 142
    .local v0, "setting":Lcom/microsoft/onlineid/internal/configuration/ISetting;, "Lcom/microsoft/onlineid/internal/configuration/ISetting<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->_editor:Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ConfigParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/onlineid/sts/ServerConfig$Editor;->setString(Lcom/microsoft/onlineid/internal/configuration/ISetting;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$Editor;

    .line 145
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
