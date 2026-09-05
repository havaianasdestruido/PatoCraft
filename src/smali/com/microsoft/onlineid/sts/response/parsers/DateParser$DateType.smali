.class abstract enum Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
.super Ljava/lang/Enum;
.source "DateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/response/parsers/DateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

.field public static final enum Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

.field public static final enum SecondsSinceEpoch:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;

    const-string v1, "SecondsSinceEpoch"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->SecondsSinceEpoch:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    .line 83
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$2;

    const-string v1, "Iso8601DateTimeIgnoreTimeZone"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    sget-object v1, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->SecondsSinceEpoch:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->Iso8601DateTimeIgnoreTimeZone:Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/microsoft/onlineid/sts/response/parsers/DateParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/microsoft/onlineid/sts/response/parsers/DateParser$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->$VALUES:[Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/response/parsers/DateParser$DateType;

    return-object v0
.end method


# virtual methods
.method public abstract parse(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation
.end method
