.class public final enum Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
.super Ljava/lang/Enum;
.source "SsoServiceError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/sso/SsoServiceError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field public static final enum UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

.field private static final _lookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/microsoft/onlineid/internal/sso/SsoServiceError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _code:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 18
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "Unknown"

    invoke-direct {v2, v3, v1, v6}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 24
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "ClientNotAuthorized"

    invoke-direct {v2, v3, v6, v7}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 30
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "UnsupportedClientVersion"

    invoke-direct {v2, v3, v7, v8}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 35
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "StorageException"

    invoke-direct {v2, v3, v8, v9}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 40
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "IllegalArgumentException"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v9, v4}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 45
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "AccountNotFound"

    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 50
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "NetworkException"

    const/4 v4, 0x6

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 55
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "StsException"

    const/4 v4, 0x7

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 61
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "InvalidResponseException"

    const/16 v4, 0x8

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 66
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "MasterRedirectException"

    const/16 v4, 0x9

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 72
    new-instance v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    const-string v3, "ClientConfigUpdateNeededException"

    const/16 v4, 0xa

    const/16 v5, 0xb

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 13
    const/16 v2, 0xb

    new-array v2, v2, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->Unknown:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v3, v2, v1

    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientNotAuthorized:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v3, v2, v6

    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->UnsupportedClientVersion:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v3, v2, v7

    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StorageException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v3, v2, v8

    sget-object v3, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->IllegalArgumentException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->AccountNotFound:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->NetworkException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->StsException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->InvalidResponseException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->MasterRedirectException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->ClientConfigUpdateNeededException:Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    aput-object v4, v2, v3

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->$VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    .line 74
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    .line 78
    invoke-static {}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->values()[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    move-result-object v2

    array-length v3, v2

    .local v0, "error":Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 80
    sget-object v4, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->getCode()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_code:I

    .line 94
    return-void
.end method

.method public static get(I)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_lookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->$VALUES:[Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/sso/SsoServiceError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/microsoft/onlineid/internal/sso/SsoServiceError;->_code:I

    return v0
.end method
