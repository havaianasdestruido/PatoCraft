.class public Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "XleProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
    }
.end annotation


# static fields
.field private static final displayLocales:[[Ljava/lang/String;

.field private static instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;


# instance fields
.field private androidId:Ljava/lang/String;

.field private blockFeaturedChild:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gotSettings:Z

.field private isMeAdult:Z

.field private meXuid:Ljava/lang/String;

.field private musicBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privileges:Ljava/lang/String;

.field private promotionalRestrictedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scdRpsTicket:Ljava/lang/String;

.field private serviceLocaleMapTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceLocales:[[Ljava/lang/String;

.field private videoBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    .line 131
    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "zh_SG"

    aput-object v2, v1, v4

    const-string v2, "zh"

    aput-object v2, v1, v5

    const-string v2, "CN"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "zh_CN"

    aput-object v2, v1, v4

    const-string v2, "zh"

    aput-object v2, v1, v5

    const-string v2, "CN"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "zh_HK"

    aput-object v2, v1, v4

    const-string v2, "zh"

    aput-object v2, v1, v5

    const-string v2, "TW"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "zh_TW"

    aput-object v2, v1, v4

    const-string v2, "zh"

    aput-object v2, v1, v5

    const-string v2, "TW"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "da"

    aput-object v3, v2, v4

    const-string v3, "da"

    aput-object v3, v2, v5

    const-string v3, "DK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "nl"

    aput-object v3, v2, v4

    const-string v3, "nl"

    aput-object v3, v2, v5

    const-string v3, "NL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "en"

    aput-object v3, v2, v4

    const-string v3, "en"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "en_US"

    aput-object v3, v2, v4

    const-string v3, "en"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "fi"

    aput-object v3, v2, v4

    const-string v3, "fi"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "fr"

    aput-object v3, v2, v4

    const-string v3, "fr"

    aput-object v3, v2, v5

    const-string v3, "FR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "de"

    aput-object v3, v2, v4

    const-string v3, "de"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "it"

    aput-object v3, v2, v4

    const-string v3, "it"

    aput-object v3, v2, v5

    const-string v3, "IT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ja"

    aput-object v3, v2, v4

    const-string v3, "ja"

    aput-object v3, v2, v5

    const-string v3, "JP"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ko"

    aput-object v3, v2, v4

    const-string v3, "ko"

    aput-object v3, v2, v5

    const-string v3, "KR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "nb"

    aput-object v3, v2, v4

    const-string v3, "nb"

    aput-object v3, v2, v5

    const-string v3, "NO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "pl"

    aput-object v3, v2, v4

    const-string v3, "pl"

    aput-object v3, v2, v5

    const-string v3, "PL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "pt_PT"

    aput-object v3, v2, v4

    const-string v3, "pt"

    aput-object v3, v2, v5

    const-string v3, "PT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "pt"

    aput-object v3, v2, v4

    const-string v3, "pt"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ru"

    aput-object v3, v2, v4

    const-string v3, "ru"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "es_ES"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "es"

    aput-object v3, v2, v4

    const-string v3, "es"

    aput-object v3, v2, v5

    const-string v3, "MX"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sv"

    aput-object v3, v2, v4

    const-string v3, "sv"

    aput-object v3, v2, v5

    const-string v3, "SE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "tr"

    aput-object v3, v2, v4

    const-string v3, "tr"

    aput-object v3, v2, v5

    const-string v3, "TR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    .line 28
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    .line 30
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    .line 39
    const/16 v1, 0x59

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "es_AR"

    aput-object v3, v2, v5

    const-string v3, "es-AR"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AR"

    aput-object v3, v2, v5

    const-string v3, "es-AR"

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "en_AU"

    aput-object v3, v2, v5

    const-string v3, "en-AU"

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "AU"

    aput-object v4, v3, v5

    const-string v4, "en-AU"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "de_AT"

    aput-object v4, v3, v5

    const-string v4, "de-AT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "AT"

    aput-object v4, v3, v5

    const-string v4, "de-AT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fr_BE"

    aput-object v4, v3, v5

    const-string v4, "fr-BE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "nl_BE"

    aput-object v4, v3, v5

    const-string v4, "nl-BE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "BE"

    aput-object v4, v3, v5

    const-string v4, "fr-BE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "pt_BR"

    aput-object v4, v3, v5

    const-string v4, "pt-BR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "BR"

    aput-object v4, v3, v5

    const-string v4, "pt-BR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_CA"

    aput-object v4, v3, v5

    const-string v4, "en-CA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fr_CA"

    aput-object v4, v3, v5

    const-string v4, "fr-CA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CA"

    aput-object v4, v3, v5

    const-string v4, "en-CA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_CZ"

    aput-object v4, v3, v5

    const-string v4, "en-CZ"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CZ"

    aput-object v4, v3, v5

    const-string v4, "en-CZ"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "da_DK"

    aput-object v4, v3, v5

    const-string v4, "da-DK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DK"

    aput-object v4, v3, v5

    const-string v4, "da-DK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fi_FI"

    aput-object v4, v3, v5

    const-string v4, "fi-FI"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "FI"

    aput-object v4, v3, v5

    const-string v4, "fi-FI"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fr_FR"

    aput-object v4, v3, v5

    const-string v4, "fr-FR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "FR"

    aput-object v4, v3, v5

    const-string v4, "fr-FR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "de_DE"

    aput-object v4, v3, v5

    const-string v4, "de-DE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DE"

    aput-object v4, v3, v5

    const-string v4, "de-DE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_GR"

    aput-object v4, v3, v5

    const-string v4, "en-GR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "GR"

    aput-object v4, v3, v5

    const-string v4, "en-GR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_HK"

    aput-object v4, v3, v5

    const-string v4, "en-HK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zh_HK"

    aput-object v4, v3, v5

    const-string v4, "zh-HK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HK"

    aput-object v4, v3, v5

    const-string v4, "en-HK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_HU"

    aput-object v4, v3, v5

    const-string v4, "en-HU"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HU"

    aput-object v4, v3, v5

    const-string v4, "en-HU"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_IN"

    aput-object v4, v3, v5

    const-string v4, "en-IN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "IN"

    aput-object v4, v3, v5

    const-string v4, "en-IN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_GB"

    aput-object v4, v3, v5

    const-string v4, "en-GB"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "GB"

    aput-object v4, v3, v5

    const-string v4, "en-GB"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_IL"

    aput-object v4, v3, v5

    const-string v4, "en-IL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "IL"

    aput-object v4, v3, v5

    const-string v4, "en-IL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "it_IT"

    aput-object v4, v3, v5

    const-string v4, "it-IT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "IT"

    aput-object v4, v3, v5

    const-string v4, "it-IT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ja_JP"

    aput-object v4, v3, v5

    const-string v4, "ja-JP"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "JP"

    aput-object v4, v3, v5

    const-string v4, "ja-JP"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zh_CN"

    aput-object v4, v3, v5

    const-string v4, "zh-CN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CN"

    aput-object v4, v3, v5

    const-string v4, "zh-CN"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "es_MX"

    aput-object v4, v3, v5

    const-string v4, "es-MX"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "MX"

    aput-object v4, v3, v5

    const-string v4, "es-MX"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "es_CL"

    aput-object v4, v3, v5

    const-string v4, "es-CL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CL"

    aput-object v4, v3, v5

    const-string v4, "es-CL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "es_CO"

    aput-object v4, v3, v5

    const-string v4, "es-CO"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CO"

    aput-object v4, v3, v5

    const-string v4, "es-CO"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "nl_NL"

    aput-object v4, v3, v5

    const-string v4, "nl-NL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "NL"

    aput-object v4, v3, v5

    const-string v4, "nl-NL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_NZ"

    aput-object v4, v3, v5

    const-string v4, "en-NZ"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "NZ"

    aput-object v4, v3, v5

    const-string v4, "en-NZ"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "nb_NO"

    aput-object v4, v3, v5

    const-string v4, "nb-NO"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "NO"

    aput-object v4, v3, v5

    const-string v4, "nb-NO"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "pl_PL"

    aput-object v4, v3, v5

    const-string v4, "pl-PL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "PL"

    aput-object v4, v3, v5

    const-string v4, "pl-PL"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "pt_PT"

    aput-object v4, v3, v5

    const-string v4, "pt-PT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "PT"

    aput-object v4, v3, v5

    const-string v4, "pt-PT"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ru_RU"

    aput-object v4, v3, v5

    const-string v4, "ru-RU"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "RU"

    aput-object v4, v3, v5

    const-string v4, "ru-RU"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_SA"

    aput-object v4, v3, v5

    const-string v4, "en-SA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SA"

    aput-object v4, v3, v5

    const-string v4, "en-SA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_SG"

    aput-object v4, v3, v5

    const-string v4, "en-SG"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x40

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zh_SG"

    aput-object v4, v3, v5

    const-string v4, "zh-SG"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x41

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SG"

    aput-object v4, v3, v5

    const-string v4, "en-SG"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x42

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_SK"

    aput-object v4, v3, v5

    const-string v4, "en-SK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x43

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SK"

    aput-object v4, v3, v5

    const-string v4, "en-SK"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x44

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_ZA"

    aput-object v4, v3, v5

    const-string v4, "en-ZA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x45

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ZA"

    aput-object v4, v3, v5

    const-string v4, "en-ZA"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x46

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ko_KR"

    aput-object v4, v3, v5

    const-string v4, "ko-KR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x47

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "KR"

    aput-object v4, v3, v5

    const-string v4, "ko-KR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x48

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "es_ES"

    aput-object v4, v3, v5

    const-string v4, "es-ES"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x49

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "es"

    aput-object v4, v3, v5

    const-string v4, "es-ES"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "de_CH"

    aput-object v4, v3, v5

    const-string v4, "de-CH"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fr_CH"

    aput-object v4, v3, v5

    const-string v4, "fr-CH"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "CH"

    aput-object v4, v3, v5

    const-string v4, "fr-CH"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zh_TW"

    aput-object v4, v3, v5

    const-string v4, "zh-TW"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "TW"

    aput-object v4, v3, v5

    const-string v4, "zh-TW"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_AE"

    aput-object v4, v3, v5

    const-string v4, "en-AE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x50

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "AE"

    aput-object v4, v3, v5

    const-string v4, "en-AE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x51

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_US"

    aput-object v4, v3, v5

    const-string v4, "en-US"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x52

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "US"

    aput-object v4, v3, v5

    const-string v4, "en-US"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x53

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "sv_SE"

    aput-object v4, v3, v5

    const-string v4, "sv-SE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x54

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SE"

    aput-object v4, v3, v5

    const-string v4, "sv-SE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x55

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tr_Tr"

    aput-object v4, v3, v5

    const-string v4, "tr-TR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x56

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Tr"

    aput-object v4, v3, v5

    const-string v4, "tr-TR"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x57

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "en_IE"

    aput-object v4, v3, v5

    const-string v4, "en-IE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x58

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "IE"

    aput-object v4, v3, v5

    const-string v4, "en-IE"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    .line 163
    return-void
.end method

.method private addRegions(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "locales"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "blockSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    const-string v2, "[|]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "list":[Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 212
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 213
    .local v1, "region":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "list":[Ljava/lang/String;
    .end local v1    # "region":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getDeviceLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 402
    .local v0, "deviceLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "localeStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 412
    :goto_0
    return-object v3

    .line 406
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "region":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_1
    const-string v3, "en-US"

    goto :goto_0
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public ensureDisplayLocale()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "mapLocale":Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 172
    .local v1, "deviceLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "localeStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "region":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 178
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v12

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 179
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v10

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    new-instance v6, Ljava/util/Locale;

    .end local v6    # "mapLocale":Ljava/util/Locale;
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v10

    sget-object v9, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v9, v9, v11

    invoke-direct {v6, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .restart local v6    # "mapLocale":Ljava/util/Locale;
    :cond_2
    if-nez v6, :cond_3

    .line 190
    const/4 v3, 0x0

    :goto_2
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 191
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v12

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 192
    new-instance v6, Ljava/util/Locale;

    .end local v6    # "mapLocale":Ljava/util/Locale;
    sget-object v8, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v10

    sget-object v9, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    aget-object v9, v9, v3

    aget-object v9, v9, v11

    invoke-direct {v6, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .restart local v6    # "mapLocale":Ljava/util/Locale;
    :cond_3
    if-eqz v6, :cond_0

    .line 200
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 201
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 202
    .local v0, "conf":Landroid/content/res/Configuration;
    iput-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 203
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 177
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getAllowExplicitContent()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "bbxall2"

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const-string v0, ""

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getDeviceLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fromEdsCall"    # Z

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 6

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getMeMaturityLevel()I

    move-result v2

    .line 478
    .local v2, "maturityLevel":I
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xff

    if-eq v2, v4, :cond_0

    .line 479
    new-instance v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isPromotionalRestricted()Z

    move-result v4

    invoke-direct {v0, p0, v3, v2, v4}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;-><init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;Ljava/lang/String;IZ)V

    .line 480
    .local v0, "contentRestriction":Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 486
    .end local v0    # "contentRestriction":Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
    .end local v1    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string v0, "PROD"

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeMaturityLevel()I
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 244
    .local v0, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMaturityLevel()I

    move-result v1

    .line 247
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "Gold"

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 369
    :pswitch_0
    const-string v0, "http://www.rtm.vint.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion"

    .line 373
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "http://www.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion"

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 353
    :pswitch_0
    const-string v0, "0000000048093EE3"

    .line 358
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "0000000068036303"

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    return-object v0
.end method

.method public gotSettings()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    return v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 421
    .local v0, "deviceLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "localeStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v3

    .line 425
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "region":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isFeaturedBlocked()Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeAdult()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    return v0
.end method

.method public isMusicBlocked()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public isPromotionalRestricted()Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPurchaseBlocked()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoBlocked()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public processContentBlockedList(Lcom/microsoft/xbox/xle/app/SmartglassSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    .prologue
    .line 222
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->VIDEO_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 223
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->MUSIC_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 224
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PURCHASE_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 225
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->BLOCK_FEATURED_CHILD:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 226
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PROMOTIONAL_CONTENT_RESTRICTED_REGIONS:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    .line 228
    return-void
.end method

.method public resetModels(Z)V
    .locals 0
    .param p1, "clearEverything"    # Z

    .prologue
    .line 387
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->reset()V

    .line 388
    return-void
.end method

.method public setIsMeAdult(Z)V
    .locals 0
    .param p1, "isAdult"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    .line 236
    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 0
    .param p1, "privileges"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 0
    .param p1, "ticket"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 0
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    .line 285
    return-void
.end method
