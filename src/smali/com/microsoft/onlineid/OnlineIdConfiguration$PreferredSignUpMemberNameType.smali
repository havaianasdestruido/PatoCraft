.class public final enum Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
.super Ljava/lang/Enum;
.source "OnlineIdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/OnlineIdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferredSignUpMemberNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum EasiOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Outlook:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum Telephone:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum TelephoneEvenIfBlank:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

.field public static final enum TelephoneOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;


# instance fields
.field private final _qsValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 34
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "EasiOnly"

    const-string v2, "easi"

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->EasiOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 39
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "Email"

    const-string v2, "easi2"

    invoke-direct {v0, v1, v6, v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 44
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "Outlook"

    const-string v2, "wld2"

    invoke-direct {v0, v1, v7, v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Outlook:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 57
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "Telephone"

    const-string v2, "phone2"

    invoke-direct {v0, v1, v8, v2}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Telephone:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 65
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "TelephoneOnly"

    const/4 v2, 0x5

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 74
    new-instance v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    const-string v1, "TelephoneEvenIfBlank"

    const/4 v2, 0x6

    const-string v3, "phone3"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneEvenIfBlank:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->EasiOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Email:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Outlook:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->Telephone:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneOnly:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->TelephoneEvenIfBlank:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->$VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "qsValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->_qsValue:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    move-result-object v0

    return-object v0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->values()[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 100
    .local v0, "type":Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    .end local v0    # "type":Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    :goto_1
    return-object v0

    .line 98
    .restart local v0    # "type":Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "type":Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    :cond_1
    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->None:Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->$VALUES:[Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/microsoft/onlineid/OnlineIdConfiguration$PreferredSignUpMemberNameType;->_qsValue:Ljava/lang/String;

    return-object v0
.end method
