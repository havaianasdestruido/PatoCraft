.class public Lcom/microsoft/onlineid/analytics/ClientAnalytics;
.super Ljava/lang/Object;
.source "ClientAnalytics.java"

# interfaces
.implements Lcom/microsoft/onlineid/analytics/IClientAnalytics;


# static fields
.field public static final AboutScreen:Ljava/lang/String; = "About screen"

.field public static final AccountAddPendingScreen:Ljava/lang/String; = "Account add pending screen"

.field public static final AccountAddedScreen:Ljava/lang/String; = "Account add done screen"

.field public static final AccountPickerScreen:Ljava/lang/String; = "Account picker"

.field public static final AccountsScreen:Ljava/lang/String; = "Accounts screen"

.field public static final AddAccount:Ljava/lang/String; = "Add account"

.field public static final AppAccountsCategory:Ljava/lang/String; = "Authenticator accounts"

.field public static final AppCertificatesCategory:Ljava/lang/String; = "Application certificates"

.field public static final ApproveSession:Ljava/lang/String; = "Approve session"

.field public static final AtStartOfWebFlow:Ljava/lang/String; = "At start of web flow"

.field public static final AvailableCertificates:Ljava/lang/String; = "Available certificates"

.field public static final CloudRegistrationCategory:Ljava/lang/String; = "Notification registration"

.field public static final CollectionConsistencyError:Ljava/lang/String; = "Collection consistency error"

.field public static final CountryCode:Ljava/lang/String; = "Country code"

.field public static final DenySession:Ljava/lang/String; = "Deny session"

.field public static final DisableSessionApproval:Ljava/lang/String; = "Disable session approval"

.field public static final DismissSession:Ljava/lang/String; = "Dismiss session"

.field private static final DispatchPeriodSeconds:I = 0xa

.field public static final DoesntExistInAccountManager:Ljava/lang/String; = "Does not exist in Account Manager"

.field public static final DoesntExistInMeContact:Ljava/lang/String; = "Does not exist in Me Contact"

.field public static final DoesntExistInTelephonyManager:Ljava/lang/String; = "Does not exist in Telephony Manager"

.field public static final DuringWebFlow:Ljava/lang/String; = "During web flow"

.field public static final EnableSessionApproval:Ljava/lang/String; = "Enable session approval"

.field public static final EnableSessionApprovalWithoutRegistrationID:Ljava/lang/String; = "Enable session approval without GCM registration ID"

.field public static final ExistsInAccountManager:Ljava/lang/String; = "Exists in Account Manager"

.field public static final ExistsInMeContact:Ljava/lang/String; = "Exists in Me Contact"

.field public static final ExistsInTelephonyManager:Ljava/lang/String; = "Exists in Telephony Manager"

.field public static final FailedLabel:Ljava/lang/String; = "Failed"

.field public static final FailedToCheckUnlockProcedure:Ljava/lang/String; = "The check for an unlock procedure failed"

.field public static final FailedToGetMarketizedName:Ljava/lang/String; = "Failed to get marketized name"

.field public static final FirstName:Ljava/lang/String; = "First name"

.field public static final FirstRunScreen:Ljava/lang/String; = "First run screen"

.field public static final GcmIDAddedToAccount:Ljava/lang/String; = "GCM ID added to account on MSA server after registration"

.field public static final GcmIDInGoodState:Ljava/lang/String; = "with GCM ID in good state"

.field public static final GcmIDMismatch:Ljava/lang/String; = "with account GCM ID != app GCM ID"

.field public static final GcmRegistrationEvent:Ljava/lang/String; = "GCM registration"

.field private static final GoogleAnalyticsPropertyID:Ljava/lang/String; = "UA-50206275-2"

.field public static final GoogleEmail:Ljava/lang/String; = "Google email"

.field public static final GoogleEmailCount:Ljava/lang/String; = "Google email count"

.field public static final HasUnlockProcedure:Ljava/lang/String; = "User has an unlock procedure"

.field public static final HomePhoneNumber:Ljava/lang/String; = "Home phone number"

.field public static final ImplicitDisable:Ljava/lang/String; = "implicit (removed account)"

.field public static final InitiateAccountAdd:Ljava/lang/String; = "Initiate account add"

.field private static Instance:Lcom/microsoft/onlineid/analytics/IClientAnalytics; = null

.field public static final LastName:Ljava/lang/String; = "Last name"

.field public static final LoadProfileImage:Ljava/lang/String; = "Load profile image"

.field public static final LoginCloudPinCollectionPendingScreen:Ljava/lang/String; = "Login cloud pin pending screen"

.field public static final LoginCloudPinCollectionVerificationScreen:Ljava/lang/String; = "Login cloud pin collection screen"

.field public static final MigrationAttempts:Ljava/lang/String; = "Migration attempts"

.field public static final MigrationCategory:Ljava/lang/String; = "Migration and Upgrade"

.field public static final MobilePhoneNumber:Ljava/lang/String; = "Mobile phone number"

.field public static final NavigationCategory:Ljava/lang/String; = "Navigation"

.field public static final NgcApproveSession:Ljava/lang/String; = "Approve NGC session"

.field public static final NgcAttemptingToApproveSession:Ljava/lang/String; = "Attempting to approve NGC session"

.field public static final NgcCategory:Ljava/lang/String; = "NGC"

.field public static final NgcRegistrationCloudPinMismatch:Ljava/lang/String; = "Entered cloud PINs did not match"

.field public static final NgcRegistrationFailed:Ljava/lang/String; = "Device registration failed"

.field public static final NgcRegistrationSucceeded:Ljava/lang/String; = "Device registration succeeded"

.field public static final NgcSessionApproved:Ljava/lang/String; = "Session Approved"

.field public static final NoAccountGcmID:Ljava/lang/String; = "with no GCM ID for account"

.field public static final NoAppGcmID:Ljava/lang/String; = "with no GCM ID for current app version"

.field public static final NoNetworkConnectivity:Ljava/lang/String; = "No network connectivity"

.field public static final NoUnlockProcedure:Ljava/lang/String; = "User has no unlock procedure"

.field public static final NotificationErrorTap:Ljava/lang/String; = "Tapped session error notification"

.field public static final NotificationExpired:Ljava/lang/String; = "Session notification expired"

.field public static final NotificationScreen:Ljava/lang/String; = "Notification drawer"

.field public static final NotificationTap:Ljava/lang/String; = "Tapped session notification"

.field public static final PerformanceCategory:Ljava/lang/String; = "Performance"

.field public static final PickAccount:Ljava/lang/String; = "Pick an account"

.field public static final QRCodeAuthenticationCategory:Ljava/lang/String; = "QR code authentication"

.field public static final QRCodeScannerScreen:Ljava/lang/String; = "QR code scanner screen"

.field public static final RefreshSessionList:Ljava/lang/String; = "Refresh sessions list"

.field public static final RegistrationCloudPinCollectionPendingScreen:Ljava/lang/String; = "Registration cloud pin collection pending screen"

.field public static final RegistrationCloudPinCollectionSetupScreen:Ljava/lang/String; = "Registration cloud pin collection setup screen"

.field public static final RegistrationCloudPinCollectionVerificationScreen:Ljava/lang/String; = "Registration cloud pin collection verification screen"

.field public static final RemoveAccount:Ljava/lang/String; = "Remove account"

.field public static final RenderingCategory:Ljava/lang/String; = "Rendering"

.field public static final ScanMsaQRCode:Ljava/lang/String; = "Scanned Msa QR code"

.field public static final ScanNonMsaQRCode:Ljava/lang/String; = "Scanned non-Msa QR code"

.field public static final ScreenNameParam:Ljava/lang/String; = "&cd"

.field public static final SdkCategory:Ljava/lang/String; = "SDK"

.field public static final SessionApprovalCategory:Ljava/lang/String; = "Session approval"

.field public static final SessionSeenWithoutNotification:Ljava/lang/String; = "Session seen without notification"

.field private static final SessionTimeoutSeconds:I = 0x5

.field public static final SessionsCategory:Ljava/lang/String; = "Sessions"

.field public static final SessionsScreen:Ljava/lang/String; = "Sessions screen"

.field public static final SignUp:Ljava/lang/String; = "Sign up success"

.field public static final SmsVerificationCategory:Ljava/lang/String; = "SMS verification"

.field public static final SsoError:Ljava/lang/String; = "SSO error"

.field public static final SsoFallback:Ljava/lang/String; = "SSO fallback"

.field public static final StorageCategory:Ljava/lang/String; = "Storage"

.field public static final StsRequestCategory:Ljava/lang/String; = "STS requests"

.field public static final SucceededLabel:Ljava/lang/String; = "Succeeded"

.field public static final TapQRCodeImageButton:Ljava/lang/String; = "Tap QR code image button to open scanner"

.field public static final TapQRCodeTextLink:Ljava/lang/String; = "Tap QR code text link to open scanner"

.field public static final TotalAccounts:Ljava/lang/String; = "Total accounts"

.field public static final TotalAppAccountsCategory:Ljava/lang/String; = "Total authenticator accounts"

.field public static final TotalPotentialSsoServices:Ljava/lang/String; = "Total potential SSO services"

.field public static final TotalSAAccountsCategory:Ljava/lang/String; = "Total session approval accounts"

.field public static final TotalTrustedSsoServices:Ljava/lang/String; = "Total trusted SSO services"

.field public static final UniqueEmailCount:Ljava/lang/String; = "Unique email count"

.field public static final UnlockProcedureCategory:Ljava/lang/String; = "Device unlock procedure"

.field public static final UserDataCategory:Ljava/lang/String; = "User data"

.field public static final Verified:Ljava/lang/String; = "Successfully verified"

.field public static final ViaAccountPicker:Ljava/lang/String; = "via account picker"

.field public static final ViaAccountsScreen:Ljava/lang/String; = "via accounts screen"

.field public static final ViaAddAccountInApp:Ljava/lang/String; = "via add account in app"

.field public static final ViaAddButton:Ljava/lang/String; = "via add button"

.field public static final ViaFirstRun:Ljava/lang/String; = "via first run"

.field public static final ViaFirstTimeUser:Ljava/lang/String; = "via first time user"

.field public static final ViaMenu:Ljava/lang/String; = "via menu"

.field public static final ViaNotification:Ljava/lang/String; = "via notification drawer"

.field public static final ViaReturningUser:Ljava/lang/String; = "via returning user"

.field public static final ViaSessionsScreen:Ljava/lang/String; = "via sessions screen"

.field public static final WebWizardScreen:Ljava/lang/String; = "Web wizard"


# instance fields
.field private final _applicationContext:Landroid/content/Context;

.field private _clockSkewLogged:Z

.field private final _tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_clockSkewLogged:Z

    .line 238
    iput-object v1, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_applicationContext:Landroid/content/Context;

    .line 239
    iput-object v1, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 240
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_clockSkewLogged:Z

    .line 210
    iput-object p1, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_applicationContext:Landroid/content/Context;

    .line 213
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 214
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 217
    const-string v2, "UA-50206275-2"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 218
    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v3, "Authenticator"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setAppName(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    .line 222
    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 224
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 226
    .local v1, "reporter":Lcom/google/android/gms/analytics/ExceptionReporter;
    new-instance v2, Lcom/microsoft/onlineid/analytics/MsaExceptionParser;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/microsoft/onlineid/analytics/MsaExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ExceptionReporter;->setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V

    .line 227
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 230
    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    const-string v3, "&cd1"

    invoke-static {p1}, Lcom/microsoft/onlineid/internal/NetworkConnectivity;->getNetworkTypeForAnalytics(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static declared-synchronized get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 2

    .prologue
    .line 270
    const-class v1, Lcom/microsoft/onlineid/analytics/ClientAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->Instance:Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/microsoft/onlineid/analytics/NopClientAnalytics;

    invoke-direct {v0}, Lcom/microsoft/onlineid/analytics/NopClientAnalytics;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->Instance:Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 254
    const-class v1, Lcom/microsoft/onlineid/analytics/ClientAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->Instance:Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    if-nez v0, :cond_0

    .line 257
    invoke-static {p0}, Lcom/microsoft/onlineid/internal/PackageInfoHelper;->isRunningInAuthenticatorApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->Instance:Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit v1

    return-void

    .line 257
    :cond_1
    :try_start_1
    new-instance v0, Lcom/microsoft/onlineid/analytics/NopClientAnalytics;

    invoke-direct {v0}, Lcom/microsoft/onlineid/analytics/NopClientAnalytics;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/ITimedAnalyticsEvent;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public createTimedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;

    iget-object v1, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/microsoft/onlineid/analytics/TimedAnalyticsEvent;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public logCertificates(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "signatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 405
    .local v0, "signature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/microsoft/onlineid/sts/Cryptography;->encodeBase32([B)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "signatureBase32":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    .end local v0    # "signature":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v1    # "signatureBase32":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v4, "Application certificates"

    .line 415
    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Available certificates"

    .line 416
    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 414
    invoke-virtual {p0, v3}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 420
    return-object p0
.end method

.method public logClockSkew(J)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 5
    .param p1, "skew"    # J

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_clockSkewLogged:Z

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    const-string v1, "Clock skew"

    .line 388
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    const-string v1, "Clock skew adjusted"

    .line 389
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const-string v0, "Server ahead"

    .line 390
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    .line 391
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 387
    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_clockSkewLogged:Z

    .line 395
    :cond_0
    return-object p0

    .line 389
    :cond_1
    const-string v0, "Client ahead"

    goto :goto_0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Long;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    const-string v1, "At least category and action must be specified to log an event."

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/log/Logger;->error(Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 342
    :goto_0
    return-object p0

    .line 327
    :cond_1
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 329
    .local v0, "builder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 330
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 332
    if-eqz p3, :cond_2

    .line 334
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 336
    :cond_2
    if-eqz p4, :cond_3

    .line 338
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 341
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    goto :goto_0
.end method

.method public logException(Ljava/lang/Throwable;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 369
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 371
    new-instance v1, Lcom/microsoft/onlineid/analytics/MsaExceptionParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_applicationContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/microsoft/onlineid/analytics/MsaExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 372
    .local v1, "parser":Lcom/microsoft/onlineid/analytics/MsaExceptionParser;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/microsoft/onlineid/analytics/MsaExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 375
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    .line 376
    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 374
    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 379
    return-object p0

    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "parser":Lcom/microsoft/onlineid/analytics/MsaExceptionParser;
    :cond_0
    move v2, v3

    .line 369
    goto :goto_0
.end method

.method public logScreenView(Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->setScreenName(Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 302
    return-object p0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logTotalAccountsEvent(Ljava/lang/String;II)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "oldAccountCount"    # I
    .param p3, "newAccountCount"    # I

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p2

    const-string v4, "account"

    const-string v5, "accounts"

    .line 349
    invoke-static {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/Strings;->pluralize(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p3

    const-string v4, "account"

    const-string v5, "accounts"

    .line 350
    invoke-static {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/Strings;->pluralize(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v1

    return-object v1
.end method

.method public send(Ljava/util/Map;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/analytics/IClientAnalytics;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 288
    return-object p0
.end method

.method protected setScreenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_tracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setTestMode()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->_applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 282
    return-void
.end method
