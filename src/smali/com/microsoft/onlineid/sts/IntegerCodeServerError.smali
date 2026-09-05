.class public Lcom/microsoft/onlineid/sts/IntegerCodeServerError;
.super Ljava/lang/Object;
.source "IntegerCodeServerError.java"


# instance fields
.field private final _error:I

.field private final _message:Ljava/lang/String;

.field private final _subError:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "subError"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "subError"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    .line 39
    iput p2, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    .line 40
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_message:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    .line 97
    .local v0, "error":Lcom/microsoft/onlineid/sts/IntegerCodeServerError;
    iget v3, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    iget v4, v0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    iget v4, v0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "error":Lcom/microsoft/onlineid/sts/IntegerCodeServerError;
    :cond_3
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    return v0
.end method

.method public getSubError()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    iget v1, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Server Error: %s SubError: %s Message: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_error:I

    .line 124
    invoke-static {v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_subError:I

    .line 125
    invoke-static {v4}, Lcom/microsoft/onlineid/sts/StsErrorCode;->getFriendlyHRDescription(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;->_message:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 122
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
