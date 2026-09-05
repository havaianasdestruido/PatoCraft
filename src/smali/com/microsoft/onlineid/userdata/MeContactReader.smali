.class public Lcom/microsoft/onlineid/userdata/MeContactReader;
.super Ljava/lang/Object;
.source "MeContactReader.java"

# interfaces
.implements Lcom/microsoft/onlineid/userdata/IPhoneNumberReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    }
.end annotation


# instance fields
.field private final _applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/MeContactReader;->_applicationContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method protected createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "singleSelection"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/MeContactReader;->_applicationContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    .line 189
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "mimetype = ?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    const/4 v5, 0x0

    move-object v2, p1

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Failed to retrieve user profile from device"

    invoke-static {v0, v6}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 202
    goto :goto_0
.end method

.method public getFullName()Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "data2"

    aput-object v5, v4, v3

    const-string v5, "data3"

    aput-object v5, v4, v2

    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/userdata/MeContactReader;->createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    new-instance v1, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    const-string v4, "data2"

    .line 78
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data3"

    .line 79
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;-><init>(Lcom/microsoft/onlineid/userdata/MeContactReader;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, "fullName":Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 88
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_0
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "User data"

    const-string v5, "First name"

    .line 96
    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Does not exist in Me Contact"

    .line 93
    :goto_2
    invoke-interface {v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 100
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v3

    const-string v4, "User data"

    const-string v5, "Last name"

    .line 103
    invoke-virtual {v1}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Does not exist in Me Contact"

    .line 100
    :goto_3
    invoke-interface {v3, v4, v5, v2}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 107
    return-object v1

    .line 83
    .end local v1    # "fullName":Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    :cond_1
    new-instance v1, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, p0, v4, v5}, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;-><init>(Lcom/microsoft/onlineid/userdata/MeContactReader;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "fullName":Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
    goto :goto_0

    :cond_2
    move v2, v3

    .line 86
    goto :goto_1

    .line 96
    :cond_3
    const-string v2, "Exists in Me Contact"

    goto :goto_2

    .line 103
    :cond_4
    const-string v2, "Exists in Me Contact"

    goto :goto_3
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 118
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data2"

    aput-object v6, v4, v5

    const-string v5, "data1"

    aput-object v5, v4, v7

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v4, v5}, Lcom/microsoft/onlineid/userdata/MeContactReader;->createCursorForProfile([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 129
    .local v2, "mobile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, "home":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    const-string v4, "data2"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 136
    .local v3, "phoneType":I
    if-ne v3, v8, :cond_1

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 143
    :cond_1
    if-ne v3, v7, :cond_0

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    .end local v3    # "phoneType":I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_3
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    const-string v6, "User data"

    const-string v7, "Mobile phone number"

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Does not exist in Me Contact"

    .line 155
    :goto_1
    invoke-interface {v5, v6, v7, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 162
    invoke-static {}, Lcom/microsoft/onlineid/analytics/ClientAnalytics;->get()Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    move-result-object v5

    const-string v6, "User data"

    const-string v7, "Home phone number"

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Does not exist in Me Contact"

    .line 162
    :goto_2
    invoke-interface {v5, v6, v7, v4}, Lcom/microsoft/onlineid/analytics/IClientAnalytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/analytics/IClientAnalytics;

    .line 170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .end local v1    # "home":Ljava/lang/String;
    :goto_3
    return-object v1

    .line 158
    .restart local v1    # "home":Ljava/lang/String;
    :cond_4
    const-string v4, "Exists in Me Contact"

    goto :goto_1

    .line 165
    :cond_5
    const-string v4, "Exists in Me Contact"

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 170
    goto :goto_3
.end method
