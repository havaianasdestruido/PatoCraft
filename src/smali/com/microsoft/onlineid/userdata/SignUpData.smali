.class public Lcom/microsoft/onlineid/userdata/SignUpData;
.super Ljava/lang/Object;
.source "SignUpData.java"


# instance fields
.field private final _fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

.field private final _meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

.field private final _telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-direct {v1, p1}, Lcom/microsoft/onlineid/userdata/MeContactReader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/onlineid/userdata/SignUpData;-><init>(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Lcom/microsoft/onlineid/userdata/MeContactReader;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;Lcom/microsoft/onlineid/userdata/MeContactReader;)V
    .locals 1
    .param p1, "telephonyManagerReader"    # Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;
    .param p2, "meContactReader"    # Lcom/microsoft/onlineid/userdata/MeContactReader;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    .line 44
    iput-object p2, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader;->getFullName()Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    .line 47
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_fullName:Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_telephonyManagerReader:Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/TelephonyManagerReader;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/onlineid/userdata/SignUpData;->_meContactReader:Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/MeContactReader;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
