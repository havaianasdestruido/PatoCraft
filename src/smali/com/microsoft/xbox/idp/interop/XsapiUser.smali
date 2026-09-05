.class public final Lcom/microsoft/xbox/idp/interop/XsapiUser;
.super Ljava/lang/Object;
.source "XsapiUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInStatus;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$VoidCallback;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;,
        Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

.field private static final instanceLock:Ljava/lang/Object;


# instance fields
.field private final id:J

.field private final userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instanceLock:Ljava/lang/Object;

    .line 16
    const-class v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    .line 35
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    iget-wide v2, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getUserImpl(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;-><init>(J)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    .line 36
    return-void
.end method

.method public static convertPrivileges(Ljava/lang/String;)[I
    .locals 12
    .param p0, "privileges"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v3, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v5, v7, v6

    .line 237
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v9, Lcom/microsoft/xbox/idp/interop/XsapiUser;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot convert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to integer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 243
    .local v0, "buf":[I
    const/4 v2, -0x1

    .line 244
    .local v2, "idx":I
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 245
    .local v4, "priv":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v2

    goto :goto_2

    .line 247
    .end local v4    # "priv":Ljava/lang/Integer;
    :cond_1
    return-object v0
.end method

.method private static native create()J
.end method

.method private static native delete(J)V
.end method

.method private static native finishSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;ILjava/lang/String;)V
.end method

.method public static getInstance()Lcom/microsoft/xbox/idp/interop/XsapiUser;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->instance:Lcom/microsoft/xbox/idp/interop/XsapiUser;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native getPrivileges(J)Ljava/lang/String;
.end method

.method private static native getTokenAndSignature(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;)V
.end method

.method private static native getUserImpl(J)J
.end method

.method private static native getXuid(J)Ljava/lang/String;
.end method

.method private static native isProd(J)Z
.end method

.method private static native isSignedIn(J)Z
.end method

.method private static native signInSilently(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;)V
.end method

.method private static native signOut(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V
.end method

.method private static native startSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->delete(J)V

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 231
    return-void
.end method

.method public finishSignIn(Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;
    .param p2, "authStatus"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->getId()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p3}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->finishSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$FinishSignInCallback;ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public getPrivileges()[I
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getPrivileges(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->convertPrivileges(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .locals 6
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    .prologue
    .line 95
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    .line 96
    return-void
.end method

.method public getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V
    .locals 7
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "requestBody"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    new-instance v6, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;

    invoke-direct {v6, p0, p5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$2;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$LongCallback;)V

    .line 119
    return-void
.end method

.method public getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .locals 1
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAndSignatureSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/TokenAndSignature;
    .locals 8
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/lang/String;
    .param p4, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 142
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;

    invoke-direct {v5, p0, v7}, Lcom/microsoft/xbox/idp/interop/XsapiUser$3;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Ljava/util/concurrent/CountDownLatch;)V

    .local v5, "callback":Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getTokenAndSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallback;)V

    .line 159
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    invoke-virtual {v5}, Lcom/microsoft/xbox/idp/interop/XsapiUser$TokenAndSignatureCallbackWithResult;->getTokenAndSignature()Lcom/microsoft/xbox/idp/interop/TokenAndSignature;

    move-result-object v0

    return-object v0

    .line 160
    :catch_0
    move-exception v6

    .line 161
    .local v6, "e":Ljava/lang/InterruptedException;
    sget-object v0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserImpl()Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->userImpl:Lcom/microsoft/xbox/idp/interop/XsapiUser$UserImpl;

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->getXuid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isProd()Z
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->isProd(J)Z

    move-result v0

    return v0
.end method

.method public isSignedIn()Z
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->isSignedIn(J)Z

    move-result v0

    return v0
.end method

.method public signInSilently(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    new-instance v2, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser$1;-><init>(Lcom/microsoft/xbox/idp/interop/XsapiUser;Lcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallback;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->signInSilently(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignInSilentlyCallbackInternal;)V

    .line 76
    return-void
.end method

.method public signOut(Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->signOut(JLcom/microsoft/xbox/idp/interop/XsapiUser$SignOutCallback;)V

    .line 84
    return-void
.end method

.method public startSignIn(Lcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XsapiUser;->id:J

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/idp/interop/XsapiUser;->startSignIn(JLcom/microsoft/xbox/idp/interop/XsapiUser$StartSignInCallback;)V

    .line 48
    return-void
.end method
