.class public Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;
.super Ljava/lang/Object;
.source "DeviceCredentialGenerator.java"


# static fields
.field static final LegalPasswordCharacters:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}/?;:\'\",.<>`~"

.field static final LegalUsernameCharacters:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field static final LogicalDevicePrefix:Ljava/lang/String; = "02"

.field static final PasswordLength:I = 0x10

.field static final UsernameLength:I = 0x14


# instance fields
.field private final _randomNumberGenerator:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    .line 38
    return-void
.end method

.method private generateRandomString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "legalCharacters"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 69
    new-array v2, p2, [C

    .line 70
    .local v2, "output":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, "legalCharCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->_randomNumberGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method


# virtual methods
.method public generate()Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .locals 5

    .prologue
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    const-string v4, "02"

    .line 50
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x14

    .line 48
    invoke-direct {p0, v3, v4}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generateRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "username":Ljava/lang/String;
    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}/?;:\'\",.<>`~"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/microsoft/onlineid/sts/DeviceCredentialGenerator;->generateRandomString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "password":Ljava/lang/String;
    new-instance v2, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-direct {v2, v1, v0}, Lcom/microsoft/onlineid/sts/DeviceCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
