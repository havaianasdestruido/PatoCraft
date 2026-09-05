.class public Lcom/microsoft/onlineid/internal/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# instance fields
.field private final _appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/Resources;->_appContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/Resources;->_appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/Resources;->_appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s resource with name %s not found"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/Resources;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/microsoft/onlineid/internal/Resources;

    invoke-direct {v0, p0}, Lcom/microsoft/onlineid/internal/Resources;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDimensionPixelSize(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/onlineid/internal/Resources;->_appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dimen"

    invoke-direct {p0, p1, v3}, Lcom/microsoft/onlineid/internal/Resources;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Dimen resource with name %s not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_0
    const-string v2, "id"

    invoke-direct {p0, p1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Id resource with name %s not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public getLayout(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    const-string v2, "layout"

    invoke-direct {p0, p1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Layout resource with name %s not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public getMenu(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    :try_start_0
    const-string v2, "menu"

    invoke-direct {p0, p1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Menu resource with name %s not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "sdk_version_name"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/internal/Resources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/Resources;->_appContext:Landroid/content/Context;

    const-string v2, "string"

    invoke-direct {p0, p1, v2}, Lcom/microsoft/onlineid/internal/Resources;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "String resource with name %s not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method
