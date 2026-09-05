.class public Lcom/microsoft/onlineid/internal/log/RedactableResponse;
.super Lcom/microsoft/onlineid/internal/log/RedactableXml;
.source "RedactableResponse.java"


# static fields
.field private static final TagsToKeep:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ErrorSubcode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ServerInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "S:Text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "S:Value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ps:DisplaySessionID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ps:ExpirationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ps:RequestTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ps:SessionID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ps:State"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "psf:authstate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "psf:code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "psf:configVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "psf:reqstatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "psf:serverInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "psf:text"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "psf:value"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "wsa:Address"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wst:TokenType"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "wsu:Created"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "wsu:Expires"

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableResponse;->TagsToKeep:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/microsoft/onlineid/internal/log/RedactableResponse;->TagsToKeep:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/internal/log/RedactableXml;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    return-void
.end method
