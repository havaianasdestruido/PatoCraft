.class Lcom/appsflyer/AFValidateInAppPurchase;
.super Ljava/lang/Object;
.source "AFValidateInAppPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private additionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appsFlyerDevKey:Ljava/lang/String;

.field protected ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private googlePublicKey:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "aPublicKey"    # Ljava/lang/String;
    .param p4, "aSignature"    # Ljava/lang/String;
    .param p5, "aPurchaseData"    # Ljava/lang/String;
    .param p6, "aPrice"    # Ljava/lang/String;
    .param p7, "aCurrency"    # Ljava/lang/String;
    .param p9, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p8, "aAdditionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p2, p0, Lcom/appsflyer/AFValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/appsflyer/AFValidateInAppPurchase;->googlePublicKey:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/appsflyer/AFValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->price:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/appsflyer/AFValidateInAppPurchase;->currency:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/appsflyer/AFValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    .line 36
    iput-object p4, p0, Lcom/appsflyer/AFValidateInAppPurchase;->signature:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcom/appsflyer/AFValidateInAppPurchase;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/AFValidateInAppPurchase;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AFValidateInAppPurchase;->validateWHPurchaseEvent(Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private addValidateParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "validateWHParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "receipt_data"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "price"

    iget-object v1, p0, Lcom/appsflyer/AFValidateInAppPurchase;->price:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "currency"

    iget-object v1, p0, Lcom/appsflyer/AFValidateInAppPurchase;->currency:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method private getReferrer(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 169
    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "referrer":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 171
    :cond_0
    return-object v0
.end method

.method private sendDataToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    :try_start_0
    new-instance v1, Lcom/appsflyer/BackgroundHttpTask;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/appsflyer/BackgroundHttpTask;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "validateRequest":Lcom/appsflyer/BackgroundHttpTask;
    iput-object p1, v1, Lcom/appsflyer/BackgroundHttpTask;->bodyAsString:Ljava/lang/String;

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/appsflyer/BackgroundHttpTask;->setShouldReadResponse(Z)V

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main thread detected. Calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in a new thread."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Lcom/appsflyer/BackgroundHttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    :goto_0
    invoke-virtual {v1}, Lcom/appsflyer/BackgroundHttpTask;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 190
    .end local v1    # "validateRequest":Lcom/appsflyer/BackgroundHttpTask;
    :goto_1
    return-object v2

    .line 183
    .restart local v1    # "validateRequest":Lcom/appsflyer/BackgroundHttpTask;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (on current thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Lcom/appsflyer/BackgroundHttpTask;->onPreExecute()V

    .line 185
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Lcom/appsflyer/BackgroundHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appsflyer/BackgroundHttpTask;->onPostExecute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1    # "validateRequest":Lcom/appsflyer/BackgroundHttpTask;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Could not send callStats request"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "validated"    # Z
    .param p2, "purchaseData"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "currency"    # Ljava/lang/String;
    .param p6, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p5, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validate callback parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validate in app purchase success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {v0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    .line 206
    .end local p6    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local p6    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validate in app purchase failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p6, :cond_2

    const-string p6, "Failed validating"

    .end local p6    # "result":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, p6}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateWHPurchaseEvent(Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->VALIDATE_WH_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 120
    .local v20, "validateWhUrlString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "appsflyer-data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 121
    .local v10, "sharedPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/appsflyer/AFValidateInAppPurchase;->getReferrer(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "referrer":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    .line 125
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/appsflyer/AFValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    const-string v6, "af_purchase"

    const-string v7, ""

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 124
    invoke-virtual/range {v3 .. v11}, Lcom/appsflyer/AppsFlyerLib;->getEventParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/SharedPreferences;Z)Ljava/util/Map;

    move-result-object v18

    .line 128
    .local v18, "validateWHParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/AFValidateInAppPurchase;->addValidateParameters(Ljava/util/Map;Ljava/util/Map;)V

    .line 130
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 131
    .local v19, "validateWHParamsJSON":Lorg/json/JSONObject;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "postData":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v12}, Lcom/appsflyer/RemoteDebuggingManager;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v17, 0x0

    .line 136
    .local v17, "validatePurchaseConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/appsflyer/AFValidateInAppPurchase;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v17

    .line 138
    const/4 v13, -0x1

    .line 139
    .local v13, "responseCode":I
    if-eqz v17, :cond_2

    .line 140
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 142
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v15

    .line 143
    .local v15, "responseString":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v13, v15}, Lcom/appsflyer/RemoteDebuggingManager;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .local v14, "responseJsonObject":Lorg/json/JSONObject;
    const/16 v3, 0xc8

    if-ne v13, v3, :cond_3

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validate-WH response - 200: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_1
    if-eqz v17, :cond_0

    .line 156
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 150
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validate-WH response failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    .end local v13    # "responseCode":I
    .end local v14    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v15    # "responseString":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 153
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v17, :cond_0

    .line 156
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 155
    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_4

    .line 156
    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v3
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AFValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AFValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v12, 0x0

    .line 48
    .local v12, "legacyValidateConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AFValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v11, "context":Landroid/content/Context;
    if-nez v11, :cond_2

    .line 107
    if-eqz v12, :cond_0

    .line 108
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 52
    :cond_2
    :try_start_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v19, "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "public-key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AFValidateInAppPurchase;->googlePublicKey:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v2, "sig-data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AFValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "signature"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AFValidateInAppPurchase;->signature:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v20, "validateParamsForWH":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v16

    .line 60
    .local v16, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lcom/appsflyer/AFValidateInAppPurchase$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/appsflyer/AFValidateInAppPurchase$1;-><init>(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 67
    const-string v2, "dev_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AFValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "app_id"

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "uid"

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v2, "advertiserId"

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "advertiserId"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 72
    .local v21, "validateParamsJSON":Lorg/json/JSONObject;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "postData":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v2

    const-string v4, "https://sdk-services.appsflyer.com/validate-android-signature"

    invoke-virtual {v2, v4, v13}, Lcom/appsflyer/RemoteDebuggingManager;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "https://sdk-services.appsflyer.com/validate-android-signature"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/appsflyer/AFValidateInAppPurchase;->sendDataToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    .line 77
    const/4 v14, -0x1

    .line 78
    .local v14, "responseCode":I
    if-eqz v12, :cond_3

    .line 79
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 81
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, "str":Ljava/lang/String;
    invoke-static {}, Lcom/appsflyer/RemoteDebuggingManager;->getInstance()Lcom/appsflyer/RemoteDebuggingManager;

    move-result-object v2

    const-string v4, "https://sdk-services.appsflyer.com/validate-android-signature"

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v14, v0}, Lcom/appsflyer/RemoteDebuggingManager;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v15, "responseJsonObject":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v15, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const/16 v2, 0xc8

    if-ne v14, v2, :cond_6

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validate response 200 ok: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "validated":Z
    const-string v2, "result"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    const-string v2, "result"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 93
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AFValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/appsflyer/AFValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AFValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appsflyer/AFValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/appsflyer/AFValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v3    # "validated":Z
    :goto_1
    if-eqz v12, :cond_5

    .line 108
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    .end local v11    # "context":Landroid/content/Context;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "responseCode":I
    .end local v15    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v16    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "validateParamsForWH":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "validateParamsJSON":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AFValidateInAppPurchase;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 96
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v13    # "postData":Ljava/lang/String;
    .restart local v14    # "responseCode":I
    .restart local v15    # "responseJsonObject":Lorg/json/JSONObject;
    .restart local v16    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    .restart local v17    # "str":Ljava/lang/String;
    .restart local v19    # "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "validateParamsForWH":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "validateParamsJSON":Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string v2, "Failed Validate request"

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afLog(Ljava/lang/String;)V

    .line 97
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AFValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appsflyer/AFValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/appsflyer/AFValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/appsflyer/AFValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/appsflyer/AFValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 99
    .end local v11    # "context":Landroid/content/Context;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v14    # "responseCode":I
    .end local v15    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v16    # "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "validateParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "validateParamsForWH":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "validateParamsJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    .line 100
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v2, :cond_7

    .line 101
    const-string v2, "Failed Validate request + ex"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AFValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appsflyer/AFValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/appsflyer/AFValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/appsflyer/AFValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/appsflyer/AFValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 105
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    if-eqz v12, :cond_5

    .line 108
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 107
    .end local v18    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_8

    .line 108
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v2
.end method
