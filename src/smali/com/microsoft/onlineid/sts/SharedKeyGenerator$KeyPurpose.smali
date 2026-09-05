.class public final enum Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
.super Ljava/lang/Enum;
.source "SharedKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/SharedKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

.field public static final enum CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

.field public static final enum STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;


# instance fields
.field private final _keyLengthBytes:I

.field private final _label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    const-string v1, "CredentialSignature"

    const-string v2, "WS-SecureConversation"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    .line 53
    new-instance v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    const-string v1, "STSDigest"

    const-string v2, "WS-SecureConversationWS-SecureConversation"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    sget-object v1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->$VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "keyLengthBytes"    # I
    .param p4, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_keyLengthBytes:I

    .line 69
    iput-object p4, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_label:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->$VALUES:[Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    return-object v0
.end method


# virtual methods
.method getKeyLengthBytes()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_keyLengthBytes:I

    return v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->_label:Ljava/lang/String;

    return-object v0
.end method
