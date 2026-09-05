.class public Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
.super Ljava/lang/Object;
.source "ProfilePreferredColor.java"


# instance fields
.field private primary:I

.field private primaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryColor"
    .end annotation
.end field

.field private secondary:I

.field private secondaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secondaryColor"
    .end annotation
.end field

.field private tertiary:I

.field private tertiaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tertiaryColor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    .line 8
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    .line 9
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    return-void
.end method

.method public static convertColorFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    .line 46
    if-nez p0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_2
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "color":I
    shr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_0

    .line 55
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    if-gez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    .line 25
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    if-gez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    .line 33
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    return v0
.end method

.method public getTertiaryColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    if-gez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    .line 41
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    return v0
.end method
