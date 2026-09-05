.class public Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;
.super Ljava/lang/Object;
.source "PhoneContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    }
.end annotation


# static fields
.field public static final MinimumPhoneLength:I = 0x7

.field private static instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodes:[[Ljava/lang/String;

.field private isXboxContactsUpdated:Z

.field private phoneNumberFromSim:Ljava/lang/String;

.field private profilePhoneNumber:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private userEnteredNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/16 v3, 0xce

    new-array v3, v3, [[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "93"

    aput-object v5, v4, v9

    const-string v5, "AF"

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "355"

    aput-object v5, v4, v9

    const-string v5, "AL"

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "213"

    aput-object v5, v4, v9

    const-string v5, "DZ"

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    aput-object v4, v3, v8

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "376"

    aput-object v5, v4, v9

    const-string v5, "AD"

    aput-object v5, v4, v7

    const-string v5, ""

    aput-object v5, v4, v8

    aput-object v4, v3, v10

    const/4 v4, 0x4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "244"

    aput-object v6, v5, v9

    const-string v6, "AO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "672"

    aput-object v6, v5, v9

    const-string v6, "AQ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "54"

    aput-object v6, v5, v9

    const-string v6, "AR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "374"

    aput-object v6, v5, v9

    const-string v6, "AM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "297"

    aput-object v6, v5, v9

    const-string v6, "AW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "61"

    aput-object v6, v5, v9

    const-string v6, "AU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "43"

    aput-object v6, v5, v9

    const-string v6, "AT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "994"

    aput-object v6, v5, v9

    const-string v6, "AZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "973"

    aput-object v6, v5, v9

    const-string v6, "BH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "880"

    aput-object v6, v5, v9

    const-string v6, "BD"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "375"

    aput-object v6, v5, v9

    const-string v6, "BY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "32"

    aput-object v6, v5, v9

    const-string v6, "BE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "501"

    aput-object v6, v5, v9

    const-string v6, "BZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "229"

    aput-object v6, v5, v9

    const-string v6, "BJ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x12

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "975"

    aput-object v6, v5, v9

    const-string v6, "BT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x13

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "591"

    aput-object v6, v5, v9

    const-string v6, "BO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x14

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "387"

    aput-object v6, v5, v9

    const-string v6, "BA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x15

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "267"

    aput-object v6, v5, v9

    const-string v6, "BW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x16

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "55"

    aput-object v6, v5, v9

    const-string v6, "BR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x17

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "673"

    aput-object v6, v5, v9

    const-string v6, "BN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x18

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "359"

    aput-object v6, v5, v9

    const-string v6, "BG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x19

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "226"

    aput-object v6, v5, v9

    const-string v6, "BF"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "95"

    aput-object v6, v5, v9

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "257"

    aput-object v6, v5, v9

    const-string v6, "BI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "855"

    aput-object v6, v5, v9

    const-string v6, "KH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "237"

    aput-object v6, v5, v9

    const-string v6, "CM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v9

    const-string v6, "CA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "238"

    aput-object v6, v5, v9

    const-string v6, "CV"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x20

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "236"

    aput-object v6, v5, v9

    const-string v6, "CF"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x21

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "235"

    aput-object v6, v5, v9

    const-string v6, "TD"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x22

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "56"

    aput-object v6, v5, v9

    const-string v6, "CL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x23

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "86"

    aput-object v6, v5, v9

    const-string v6, "CN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x24

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "61"

    aput-object v6, v5, v9

    const-string v6, "CX"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x25

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "61"

    aput-object v6, v5, v9

    const-string v6, "CC"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x26

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "57"

    aput-object v6, v5, v9

    const-string v6, "CO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x27

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "269"

    aput-object v6, v5, v9

    const-string v6, "KM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x28

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "242"

    aput-object v6, v5, v9

    const-string v6, "CG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x29

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "243"

    aput-object v6, v5, v9

    const-string v6, "CD"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "682"

    aput-object v6, v5, v9

    const-string v6, "CK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "506"

    aput-object v6, v5, v9

    const-string v6, "CR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "385"

    aput-object v6, v5, v9

    const-string v6, "HR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "53"

    aput-object v6, v5, v9

    const-string v6, "CU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "357"

    aput-object v6, v5, v9

    const-string v6, "CY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "420"

    aput-object v6, v5, v9

    const-string v6, "CZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x30

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "45"

    aput-object v6, v5, v9

    const-string v6, "DK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x31

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "253"

    aput-object v6, v5, v9

    const-string v6, "DJ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x32

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "670"

    aput-object v6, v5, v9

    const-string v6, "TL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x33

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "593"

    aput-object v6, v5, v9

    const-string v6, "EC"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x34

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "20"

    aput-object v6, v5, v9

    const-string v6, "EG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x35

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "503"

    aput-object v6, v5, v9

    const-string v6, "SV"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x36

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "240"

    aput-object v6, v5, v9

    const-string v6, "GQ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x37

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "291"

    aput-object v6, v5, v9

    const-string v6, "ER"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x38

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "372"

    aput-object v6, v5, v9

    const-string v6, "EE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x39

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "251"

    aput-object v6, v5, v9

    const-string v6, "ET"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "500"

    aput-object v6, v5, v9

    const-string v6, "FK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "298"

    aput-object v6, v5, v9

    const-string v6, "FO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "679"

    aput-object v6, v5, v9

    const-string v6, "FJ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "358"

    aput-object v6, v5, v9

    const-string v6, "FI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "33"

    aput-object v6, v5, v9

    const-string v6, "FR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "689"

    aput-object v6, v5, v9

    const-string v6, "PF"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x40

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "241"

    aput-object v6, v5, v9

    const-string v6, "GA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x41

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "220"

    aput-object v6, v5, v9

    const-string v6, "GM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x42

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "995"

    aput-object v6, v5, v9

    const-string v6, "GE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x43

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "49"

    aput-object v6, v5, v9

    const-string v6, "DE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x44

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "233"

    aput-object v6, v5, v9

    const-string v6, "GH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x45

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "350"

    aput-object v6, v5, v9

    const-string v6, "GI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x46

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "30"

    aput-object v6, v5, v9

    const-string v6, "GR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x47

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "299"

    aput-object v6, v5, v9

    const-string v6, "GL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x48

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "502"

    aput-object v6, v5, v9

    const-string v6, "GT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x49

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "224"

    aput-object v6, v5, v9

    const-string v6, "GN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "245"

    aput-object v6, v5, v9

    const-string v6, "GW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "592"

    aput-object v6, v5, v9

    const-string v6, "GY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "509"

    aput-object v6, v5, v9

    const-string v6, "HT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "504"

    aput-object v6, v5, v9

    const-string v6, "HN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "852"

    aput-object v6, v5, v9

    const-string v6, "HK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "36"

    aput-object v6, v5, v9

    const-string v6, "HU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x50

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "91"

    aput-object v6, v5, v9

    const-string v6, "IN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x51

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "62"

    aput-object v6, v5, v9

    const-string v6, "ID"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x52

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "98"

    aput-object v6, v5, v9

    const-string v6, "IR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x53

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "964"

    aput-object v6, v5, v9

    const-string v6, "IQ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x54

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "353"

    aput-object v6, v5, v9

    const-string v6, "IE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x55

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "44"

    aput-object v6, v5, v9

    const-string v6, "IM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x56

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "972"

    aput-object v6, v5, v9

    const-string v6, "IL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x57

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "39"

    aput-object v6, v5, v9

    const-string v6, "IT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x58

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "225"

    aput-object v6, v5, v9

    const-string v6, "CI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x59

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "81"

    aput-object v6, v5, v9

    const-string v6, "JP"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "962"

    aput-object v6, v5, v9

    const-string v6, "JO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "7"

    aput-object v6, v5, v9

    const-string v6, "KZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "254"

    aput-object v6, v5, v9

    const-string v6, "KE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "686"

    aput-object v6, v5, v9

    const-string v6, "KI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "965"

    aput-object v6, v5, v9

    const-string v6, "KW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "996"

    aput-object v6, v5, v9

    const-string v6, "KG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x60

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "856"

    aput-object v6, v5, v9

    const-string v6, "LA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x61

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "371"

    aput-object v6, v5, v9

    const-string v6, "LV"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x62

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "961"

    aput-object v6, v5, v9

    const-string v6, "LB"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x63

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "266"

    aput-object v6, v5, v9

    const-string v6, "LS"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x64

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "231"

    aput-object v6, v5, v9

    const-string v6, "LR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x65

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "218"

    aput-object v6, v5, v9

    const-string v6, "LY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x66

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "423"

    aput-object v6, v5, v9

    const-string v6, "LI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x67

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "370"

    aput-object v6, v5, v9

    const-string v6, "LT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x68

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "352"

    aput-object v6, v5, v9

    const-string v6, "LU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x69

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "853"

    aput-object v6, v5, v9

    const-string v6, "MO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "389"

    aput-object v6, v5, v9

    const-string v6, "MK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "261"

    aput-object v6, v5, v9

    const-string v6, "MG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "265"

    aput-object v6, v5, v9

    const-string v6, "MW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "60"

    aput-object v6, v5, v9

    const-string v6, "MY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "960"

    aput-object v6, v5, v9

    const-string v6, "MV"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "223"

    aput-object v6, v5, v9

    const-string v6, "ML"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x70

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "356"

    aput-object v6, v5, v9

    const-string v6, "MT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x71

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "692"

    aput-object v6, v5, v9

    const-string v6, "MH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x72

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "222"

    aput-object v6, v5, v9

    const-string v6, "MR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x73

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "230"

    aput-object v6, v5, v9

    const-string v6, "MU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x74

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "262"

    aput-object v6, v5, v9

    const-string v6, "YT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x75

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "52"

    aput-object v6, v5, v9

    const-string v6, "MX"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x76

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "691"

    aput-object v6, v5, v9

    const-string v6, "FM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x77

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "373"

    aput-object v6, v5, v9

    const-string v6, "MD"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x78

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "377"

    aput-object v6, v5, v9

    const-string v6, "MC"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x79

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "976"

    aput-object v6, v5, v9

    const-string v6, "MN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "382"

    aput-object v6, v5, v9

    const-string v6, "ME"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "212"

    aput-object v6, v5, v9

    const-string v6, "MA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "258"

    aput-object v6, v5, v9

    const-string v6, "MZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "264"

    aput-object v6, v5, v9

    const-string v6, "NA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "674"

    aput-object v6, v5, v9

    const-string v6, "NR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "977"

    aput-object v6, v5, v9

    const-string v6, "NP"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x80

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "31"

    aput-object v6, v5, v9

    const-string v6, "NL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x81

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "599"

    aput-object v6, v5, v9

    const-string v6, "AN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x82

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "687"

    aput-object v6, v5, v9

    const-string v6, "NC"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x83

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "64"

    aput-object v6, v5, v9

    const-string v6, "NZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x84

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "505"

    aput-object v6, v5, v9

    const-string v6, "NI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x85

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "227"

    aput-object v6, v5, v9

    const-string v6, "NE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x86

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "234"

    aput-object v6, v5, v9

    const-string v6, "NG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x87

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "683"

    aput-object v6, v5, v9

    const-string v6, "NU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x88

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "850"

    aput-object v6, v5, v9

    const-string v6, "KP"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x89

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "47"

    aput-object v6, v5, v9

    const-string v6, "NO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "968"

    aput-object v6, v5, v9

    const-string v6, "OM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "92"

    aput-object v6, v5, v9

    const-string v6, "PK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "680"

    aput-object v6, v5, v9

    const-string v6, "PW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "507"

    aput-object v6, v5, v9

    const-string v6, "PA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "675"

    aput-object v6, v5, v9

    const-string v6, "PG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "595"

    aput-object v6, v5, v9

    const-string v6, "PY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x90

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "51"

    aput-object v6, v5, v9

    const-string v6, "PE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x91

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "63"

    aput-object v6, v5, v9

    const-string v6, "PH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x92

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "870"

    aput-object v6, v5, v9

    const-string v6, "PN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x93

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "48"

    aput-object v6, v5, v9

    const-string v6, "PL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x94

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "351"

    aput-object v6, v5, v9

    const-string v6, "PT"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x95

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v9

    const-string v6, "PR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x96

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "974"

    aput-object v6, v5, v9

    const-string v6, "QA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x97

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "40"

    aput-object v6, v5, v9

    const-string v6, "RO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x98

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "7"

    aput-object v6, v5, v9

    const-string v6, "RU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x99

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "250"

    aput-object v6, v5, v9

    const-string v6, "RW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9a

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "590"

    aput-object v6, v5, v9

    const-string v6, "BL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9b

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "685"

    aput-object v6, v5, v9

    const-string v6, "WS"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9c

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "378"

    aput-object v6, v5, v9

    const-string v6, "SM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9d

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "239"

    aput-object v6, v5, v9

    const-string v6, "ST"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9e

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "966"

    aput-object v6, v5, v9

    const-string v6, "SA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0x9f

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "221"

    aput-object v6, v5, v9

    const-string v6, "SN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "381"

    aput-object v6, v5, v9

    const-string v6, "RS"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "248"

    aput-object v6, v5, v9

    const-string v6, "SC"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "232"

    aput-object v6, v5, v9

    const-string v6, "SL"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "65"

    aput-object v6, v5, v9

    const-string v6, "SG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "421"

    aput-object v6, v5, v9

    const-string v6, "SK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "386"

    aput-object v6, v5, v9

    const-string v6, "SI"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "677"

    aput-object v6, v5, v9

    const-string v6, "SB"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "252"

    aput-object v6, v5, v9

    const-string v6, "SO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "27"

    aput-object v6, v5, v9

    const-string v6, "ZA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xa9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "82"

    aput-object v6, v5, v9

    const-string v6, "KR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xaa

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "34"

    aput-object v6, v5, v9

    const-string v6, "ES"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xab

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "94"

    aput-object v6, v5, v9

    const-string v6, "LK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xac

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "290"

    aput-object v6, v5, v9

    const-string v6, "SH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xad

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "508"

    aput-object v6, v5, v9

    const-string v6, "PM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xae

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "249"

    aput-object v6, v5, v9

    const-string v6, "SD"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xaf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "597"

    aput-object v6, v5, v9

    const-string v6, "SR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "268"

    aput-object v6, v5, v9

    const-string v6, "SZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "46"

    aput-object v6, v5, v9

    const-string v6, "SE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "41"

    aput-object v6, v5, v9

    const-string v6, "CH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "963"

    aput-object v6, v5, v9

    const-string v6, "SY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "886"

    aput-object v6, v5, v9

    const-string v6, "TW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "992"

    aput-object v6, v5, v9

    const-string v6, "TJ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "255"

    aput-object v6, v5, v9

    const-string v6, "TZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "66"

    aput-object v6, v5, v9

    const-string v6, "TH"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "228"

    aput-object v6, v5, v9

    const-string v6, "TG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xb9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "690"

    aput-object v6, v5, v9

    const-string v6, "TK"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xba

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "676"

    aput-object v6, v5, v9

    const-string v6, "TO"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xbb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "216"

    aput-object v6, v5, v9

    const-string v6, "TN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xbc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "90"

    aput-object v6, v5, v9

    const-string v6, "TR"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xbd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "993"

    aput-object v6, v5, v9

    const-string v6, "TM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xbe

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "688"

    aput-object v6, v5, v9

    const-string v6, "TV"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xbf

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "971"

    aput-object v6, v5, v9

    const-string v6, "AE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc0

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "256"

    aput-object v6, v5, v9

    const-string v6, "UG"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc1

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "44"

    aput-object v6, v5, v9

    const-string v6, "GB"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc2

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "380"

    aput-object v6, v5, v9

    const-string v6, "UA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc3

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "598"

    aput-object v6, v5, v9

    const-string v6, "UY"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc4

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v9

    const-string v6, "US"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc5

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "998"

    aput-object v6, v5, v9

    const-string v6, "UZ"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc6

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "678"

    aput-object v6, v5, v9

    const-string v6, "VU"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc7

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "39"

    aput-object v6, v5, v9

    const-string v6, "VA"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "58"

    aput-object v6, v5, v9

    const-string v6, "VE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xc9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "84"

    aput-object v6, v5, v9

    const-string v6, "VN"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xca

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "681"

    aput-object v6, v5, v9

    const-string v6, "WF"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xcb

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "967"

    aput-object v6, v5, v9

    const-string v6, "YE"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xcc

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "260"

    aput-object v6, v5, v9

    const-string v6, "ZM"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    const/16 v4, 0xcd

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "263"

    aput-object v6, v5, v9

    const-string v6, "ZW"

    aput-object v6, v5, v7

    const-string v6, ""

    aput-object v6, v5, v8

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 58
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    iget-object v4, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v7

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v2, "local":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "countryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get country name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 61
    iget-object v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v0, v3, v8

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "countryName":Ljava/lang/String;
    .end local v2    # "local":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->instance:Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    return-object v0
.end method

.method public static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v3

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 85
    const-string v4, "ext"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    const-string v4, "x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 90
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static sha2Encryption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 110
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 111
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 112
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 114
    .local v0, "byteData":[B
    const/4 v2, 0x0

    array-length v3, v0

    const/16 v4, 0xa

    invoke-static {v0, v2, v3, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 116
    .end local v0    # "byteData":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 119
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 190
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 192
    :try_start_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    .local v7, "contactCuror":Landroid/database/Cursor;
    if-nez v7, :cond_3

    move-object v1, v14

    .line 246
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "contactCuror":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 230
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .local v6, "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .restart local v7    # "contactCuror":Landroid/database/Cursor;
    .local v8, "countryCode":Ljava/lang/String;
    .local v10, "id":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    .local v12, "phoneCursor":Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_2

    iget-object v1, v6, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v6    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .end local v8    # "countryCode":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "phoneCursor":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 200
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .restart local v10    # "id":Ljava/lang/String;
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .restart local v11    # "name":Ljava/lang/String;
    const-string v1, "has_phone_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 204
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 210
    .restart local v12    # "phoneCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 211
    .restart local v6    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 212
    .restart local v8    # "countryCode":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "data1"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, "phoneNumber":Ljava/lang/String;
    invoke-static {v13}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    invoke-static {v13}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    invoke-static {v13}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 218
    if-nez v6, :cond_5

    .line 219
    new-instance v6, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    .end local v6    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    invoke-direct {v6, p0, v10, v11}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;-><init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local v6    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    :cond_5
    invoke-virtual {v6, v13}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->addPhoneNumber(Ljava/lang/String;)V

    .line 223
    invoke-static {v8}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->addPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 241
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .end local v7    # "contactCuror":Landroid/database/Cursor;
    .end local v8    # "countryCode":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "phoneCursor":Landroid/database/Cursor;
    .end local v13    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/SecurityException;
    move-object v1, v14

    .line 242
    goto/16 :goto_0

    .line 240
    .end local v9    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "contactCuror":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "contactCuror":Landroid/database/Cursor;
    :cond_7
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public getContryCodeFromRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 288
    :goto_1
    return-object v1

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getContryCodeFromRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountryNameFromRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 297
    :goto_1
    return-object v1

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCountryNames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 270
    return-object v0
.end method

.method public getPhoneNumberFromSim()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    iget-object v5, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 130
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 131
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "region":Ljava/lang/String;
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    iput-object v4, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v2    # "manager":Landroid/telephony/TelephonyManager;
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v4    # "region":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    return-object v5

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v5, ""

    iput-object v5, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->phoneNumberFromSim:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProfileNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->profilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 177
    const-string v1, "phone"

    invoke-static {v1}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 179
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    .line 182
    .end local v0    # "manager":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->region:Ljava/lang/String;

    return-object v1
.end method

.method public getRegionFromCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->countryCodes:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 279
    :goto_1
    return-object v1

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRegionWithCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "region":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "code":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    :cond_0
    const/4 v2, 0x0

    .line 172
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getUserEnteredNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->userEnteredNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isXboxContactsUpdated()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->isXboxContactsUpdated:Z

    return v0
.end method

.method public setProfileNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->profilePhoneNumber:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setUserEnteredNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->userEnteredNumber:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public updateXboxContacts(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 250
    iput-boolean v3, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->isXboxContactsUpdated:Z

    .line 251
    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo;->contacts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    .line 253
    .local v1, "iter":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    .line 255
    .local v0, "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->id:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 257
    iput-boolean v3, v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->isOnXbox:Z

    goto :goto_0

    .line 261
    .end local v0    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .end local v1    # "iter":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method
