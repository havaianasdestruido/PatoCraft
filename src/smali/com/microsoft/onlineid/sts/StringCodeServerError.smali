.class public Lcom/microsoft/onlineid/sts/StringCodeServerError;
.super Ljava/lang/Object;
.source "StringCodeServerError.java"


# instance fields
.field private final _error:Ljava/lang/String;

.field private final _subError:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "subError"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    .line 73
    .local v0, "error":Lcom/microsoft/onlineid/sts/StringCodeServerError;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    iget v4, v0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "error":Lcom/microsoft/onlineid/sts/StringCodeServerError;
    :cond_3
    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    return-object v0
.end method

.method public getSubError()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Server Error: %s SubError: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_error:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/microsoft/onlineid/sts/StringCodeServerError;->_subError:I

    .line 99
    invoke-static {v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 95
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
