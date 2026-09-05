.class public Lcom/microsoft/onlineid/sts/FlightManager;
.super Ljava/lang/Object;
.source "FlightManager.java"


# static fields
.field private static final PuidComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static ResultTooManyFlights:I


# instance fields
.field private _accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

.field private final _applicationContext:Landroid/content/Context;

.field private final _typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/microsoft/onlineid/sts/FlightManager;->ResultTooManyFlights:I

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/sts/FlightManager$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/FlightManager$1;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/sts/FlightManager;->PuidComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 41
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 42
    return-void
.end method

.method private getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->hasAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_accountManager:Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    .line 112
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/sts/FlightManager;->PuidComparator:Ljava/util/Comparator;

    .line 111
    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unenrollAllFlights()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public canShowNgc()Z
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isInNgcFlight()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/AuthenticatorAccountManager;->hasNgcSessionApprovalAccounts()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enrollInFlights()V
    .locals 5

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getFlights()Ljava/util/Set;

    move-result-object v1

    .line 141
    .local v1, "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enrolling in Flights"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->unenrollAllFlights()V

    .line 144
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "flightID":I
    sget-object v2, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/configuration/Flight;->getFlightID()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 151
    sget v2, Lcom/microsoft/onlineid/sts/FlightManager;->ResultTooManyFlights:I

    if-ne v0, v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This client is in too many flights!  They are currently enrolled in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    .line 154
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized flight number "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returned"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "flightID":I
    :cond_2
    return-void
.end method

.method public getFlights()Ljava/util/Set;
    .locals 3
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
    .line 67
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isDeviceFlightOverrideEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceBasedFlights()Ljava/util/Set;

    move-result-object v0

    .line 70
    .local v0, "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 75
    .end local v0    # "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 74
    .end local v0    # "flights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v1

    .line 75
    .local v1, "primeAccount":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getFlights()Ljava/util/Set;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1
.end method

.method public isDeviceFlightOverrideEnabled()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readDeviceFlightOverrideEnabled()Z

    move-result v0

    return v0
.end method

.method public isInNgcFlight()Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getFlights()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Flight;->QRCode:Lcom/microsoft/onlineid/internal/configuration/Flight;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/internal/configuration/Flight;->getFlightID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDeviceFlightOverrideEnabled(Z)V
    .locals 1
    .param p1, "shouldOverride"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceFlightOverrideEnabled(Z)V

    .line 133
    return-void
.end method

.method public setFlights(Ljava/util/Set;)V
    .locals 2
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
    .line 86
    .local p1, "newSelectedFlights":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->getPrimeAccount()Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    move-result-object v0

    .line 88
    .local v0, "primeAccount":Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/FlightManager;->isDeviceFlightOverrideEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeDeviceBasedFlights(Ljava/util/Set;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->setFlights(Ljava/util/Set;)V

    .line 95
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/FlightManager;->_typedStorage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v1, v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeAccount(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)V

    goto :goto_0
.end method
