.class synthetic Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;
.super Ljava/lang/Object;
.source "TokenParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->values()[Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;->$SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I

    :try_start_0
    sget-object v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;->$SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;->$SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I

    sget-object v1, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->NgcAuthentication:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
