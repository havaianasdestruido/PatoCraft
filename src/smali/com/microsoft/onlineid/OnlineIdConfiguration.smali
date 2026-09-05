.class public Lcom/microsoft/onlineid/OnlineIdConfiguration;
.super Ljava/lang/Object;
.source "OnlineIdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    }
.end annotation


# instance fields
.field private _values:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;-><init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)V
    .locals 1
    .param p1, "preferredSignUpMemberNameType"    # Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_values:Landroid/os/Bundle;

    .line 137
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->setPreferredSignUpMemberNameType(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 138
    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_values:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCobrandingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "cobrandid"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSignUpMemberNameType()Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 1

    .prologue
    .line 195
    const-string v0, "fl"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->access$000(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    move-result-object v0

    return-object v0
.end method

.method public getShouldGatherWebTelemetry()Z
    .locals 2

    .prologue
    .line 261
    const-string v0, "1"

    const-string v1, "client_web_telemetry_requested"

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-object p0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCobrandingId(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 1
    .param p1, "cobrandingId"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "cobrandid"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 234
    return-object p0
.end method

.method public setPreferredSignUpMemberNameType(Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 2
    .param p1, "type"    # Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string v1, "fl"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 212
    return-object p0

    .line 210
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShouldGatherWebTelemetry(Z)Lcom/microsoft/onlineid/OnlineIdConfiguration;
    .locals 2
    .param p1, "requestWebTelemetry"    # Z

    .prologue
    .line 250
    const-string v1, "client_web_telemetry_requested"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration;

    .line 251
    return-object p0

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
