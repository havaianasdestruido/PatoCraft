.class public Lcom/microsoft/onlineid/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field public static final OneTimeCodePattern:Ljava/util/regex/Pattern;

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private final _javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "\\s*(\\d+).+\\Qhttp://aka.ms/smscode\\E"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/sms/SmsReceiver;->OneTimeCodePattern:Ljava/util/regex/Pattern;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;)V
    .locals 1
    .param p1, "javaScriptBridge"    # Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-string v0, "javaScriptBridge"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/microsoft/onlineid/sms/SmsReceiver;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    .line 55
    return-void
.end method

.method static parseOneTimeCodeFromBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "messageBody"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 116
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    sget-object v2, Lcom/microsoft/onlineid/sms/SmsReceiver;->OneTimeCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 122
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected abortBroadcastWrapper()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sms/SmsReceiver;->abortBroadcast()V

    .line 105
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v4, "pdus"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 73
    .local v3, "protocolDescriptionUnits":[Ljava/lang/Object;
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 79
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 83
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/sms/SmsReceiver;->parseOneTimeCodeFromBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v4

    const-string v5, "SMS verification"

    const-string v6, "Successfully verified"

    invoke-interface {v4, v5, v6}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 91
    iget-object v4, p0, Lcom/microsoft/onlineid/sms/SmsReceiver;->_javaScriptBridge:Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;

    sget-object v5, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->SmsCode:Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/internal/ui/PropertyBag$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/microsoft/onlineid/internal/ui/JavaScriptBridge;->Property(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sms/SmsReceiver;->abortBroadcastWrapper()V

    goto :goto_0
.end method
