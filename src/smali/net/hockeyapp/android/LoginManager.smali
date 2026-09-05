.class public Lnet/hockeyapp/android/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/LoginManager$LoginHandler;
    }
.end annotation


# static fields
.field static final LOGIN_EXIT_KEY:Ljava/lang/String; = "net.hockeyapp.android.EXIT"

.field public static final LOGIN_MODE_ANONYMOUS:I = 0x0

.field public static final LOGIN_MODE_EMAIL_ONLY:I = 0x1

.field public static final LOGIN_MODE_EMAIL_PASSWORD:I = 0x2

.field public static final LOGIN_MODE_VALIDATE:I = 0x3

.field private static identifier:Ljava/lang/String;

.field static listener:Lnet/hockeyapp/android/LoginManagerListener;

.field static mainActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mode:I

.field private static secret:Ljava/lang/String;

.field private static urlString:Ljava/lang/String;

.field private static validateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    .line 70
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    .line 75
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    .line 80
    sput-object v0, Lnet/hockeyapp/android/LoginManager;->urlString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static getLoginEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string v1, "net.hockeyapp.android.login"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getURLString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 265
    const-string v0, ""

    .line 266
    .local v0, "suffix":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 267
    const-string v0, "authorize"

    .line 274
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "api/3/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/identity/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 269
    const-string v0, "check"

    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 271
    const-string v0, "validate"

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 97
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appIdentifier":Ljava/lang/String;
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 99
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;ILnet/hockeyapp/android/LoginManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "listener"    # Lnet/hockeyapp/android/LoginManagerListener;

    .prologue
    .line 112
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "appIdentifier":Ljava/lang/String;
    invoke-static {p0, v0, p1, p2, p3}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILnet/hockeyapp/android/LoginManagerListener;)V

    .line 114
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p4, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "https://sdk.hockeyapp.net/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 141
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILnet/hockeyapp/android/LoginManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "listener"    # Lnet/hockeyapp/android/LoginManagerListener;

    .prologue
    .line 126
    sput-object p4, Lnet/hockeyapp/android/LoginManager;->listener:Lnet/hockeyapp/android/LoginManagerListener;

    .line 127
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 128
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "urlString"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p5, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 155
    invoke-static {p1}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/LoginManager;->identifier:Ljava/lang/String;

    .line 156
    sput-object p2, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    .line 157
    sput-object p3, Lnet/hockeyapp/android/LoginManager;->urlString:Ljava/lang/String;

    .line 158
    sput p4, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 159
    sput-object p5, Lnet/hockeyapp/android/LoginManager;->mainActivity:Ljava/lang/Class;

    .line 161
    sget-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lnet/hockeyapp/android/LoginManager$LoginHandler;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/LoginManager$LoginHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    .line 165
    :cond_0
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 167
    :cond_1
    return-void
.end method

.method private static startLoginActivity(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    sget v3, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 255
    .local v1, "isLoginModeValidate":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    .line 256
    .local v2, "tempMode":I
    :goto_1
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    const-class v3, Lnet/hockeyapp/android/LoginActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    const-string v3, "url"

    invoke-static {v2}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v3, "secret"

    sget-object v4, Lnet/hockeyapp/android/LoginManager;->secret:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void

    .line 254
    .end local v1    # "isLoginModeValidate":Ljava/lang/Boolean;
    .end local v2    # "tempMode":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 255
    .restart local v1    # "isLoginModeValidate":Ljava/lang/Boolean;
    :cond_1
    sget v2, Lnet/hockeyapp/android/LoginManager;->mode:I

    goto :goto_1
.end method

.method public static verifyLogin(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    if-eqz p1, :cond_1

    .line 181
    const-string v1, "net.hockeyapp.android.EXIT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p0, :cond_0

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "net.hockeyapp.android.login"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 195
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 196
    .local v8, "currentMode":I
    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    if-eq v8, v1, :cond_2

    .line 197
    const-string v1, "HockeyAuth"

    const-string v2, "Mode has changed, require re-auth."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "auid"

    .line 199
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "iuid"

    .line 200
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode"

    sget v3, Lnet/hockeyapp/android/LoginManager;->mode:I

    .line 201
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_2
    const-string v1, "auid"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "auid":Ljava/lang/String;
    const-string v1, "iuid"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "iuid":Ljava/lang/String;
    if-nez v6, :cond_5

    if-nez v9, :cond_5

    const/4 v11, 0x1

    .line 210
    .local v11, "notAuthenticated":Z
    :goto_1
    if-nez v6, :cond_6

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_3
    const/4 v7, 0x1

    .line 211
    .local v7, "auidMissing":Z
    :goto_2
    if-nez v9, :cond_7

    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v10, 0x1

    .line 213
    .local v10, "iuidMissing":Z
    :goto_3
    if-nez v11, :cond_4

    if-nez v7, :cond_4

    if-eqz v10, :cond_8

    .line 214
    :cond_4
    const-string v1, "HockeyAuth"

    const-string v2, "Not authenticated or correct ID missing, re-authenticate."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lnet/hockeyapp/android/LoginManager;->startLoginActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 209
    .end local v7    # "auidMissing":Z
    .end local v10    # "iuidMissing":Z
    .end local v11    # "notAuthenticated":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 210
    .restart local v11    # "notAuthenticated":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 211
    .restart local v7    # "auidMissing":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 220
    .restart local v10    # "iuidMissing":Z
    :cond_8
    sget v1, Lnet/hockeyapp/android/LoginManager;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 221
    const-string v1, "HockeyAuth"

    const-string v2, "LOGIN_MODE_VALIDATE, Validate the user\'s info!"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_a

    .line 225
    const-string v1, "type"

    const-string v2, "auid"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "id"

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_9
    :goto_4
    new-instance v0, Lnet/hockeyapp/android/tasks/LoginTask;

    sget-object v2, Lnet/hockeyapp/android/LoginManager;->validateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v1}, Lnet/hockeyapp/android/LoginManager;->getURLString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/LoginTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    .line 233
    .local v0, "verifyTask":Lnet/hockeyapp/android/tasks/LoginTask;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/LoginTask;->setShowProgressDialog(Z)V

    .line 234
    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    .line 227
    .end local v0    # "verifyTask":Lnet/hockeyapp/android/tasks/LoginTask;
    :cond_a
    if-eqz v9, :cond_9

    .line 228
    const-string v1, "type"

    const-string v2, "iuid"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "id"

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
