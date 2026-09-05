.class public Lcom/googleplay/iab/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field private final mCurrencyCode:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mItemType:Ljava/lang/String;

.field private final mJson:Ljava/lang/String;

.field private final mPrice:Ljava/lang/String;

.field private final mPriceAmountMicros:J

.field private final mPriceCurrencyCode:Ljava/lang/String;

.field private final mSku:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mUnformattedPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/googleplay/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const v8, 0xf4240

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/googleplay/iab/SkuDetails;->mItemType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/googleplay/iab/SkuDetails;->mJson:Ljava/lang/String;

    .line 44
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "o":Lorg/json/JSONObject;
    const-string v5, "productId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mSku:Ljava/lang/String;

    .line 46
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mType:Ljava/lang/String;

    .line 47
    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mPrice:Ljava/lang/String;

    .line 48
    const-string v5, "price_amount_micros"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/googleplay/iab/SkuDetails;->mPriceAmountMicros:J

    .line 49
    const-string v5, "price_currency_code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    .line 50
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mTitle:Ljava/lang/String;

    .line 51
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mDescription:Ljava/lang/String;

    .line 52
    const-string v5, "price_currency_code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v4, "unformattedCurrency":Ljava/lang/StringBuilder;
    const-string v5, "price_amount_micros"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 56
    .local v2, "microUnits":I
    if-eqz v2, :cond_0

    .line 57
    div-int v0, v2, v8

    .line 58
    .local v0, "amount":I
    mul-int v5, v0, v8

    sub-int v1, v2, v5

    .line 60
    .local v1, "decimalAmount":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-ltz v1, :cond_0

    .line 62
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v0    # "amount":I
    .end local v1    # "decimalAmount":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/googleplay/iab/SkuDetails;->mUnformattedPrice:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/googleplay/iab/SkuDetails;->mPriceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnformattedPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googleplay/iab/SkuDetails;->mUnformattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googleplay/iab/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
