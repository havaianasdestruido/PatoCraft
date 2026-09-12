package com.googleplay.iab;

import com.facebook.share.internal.ShareConstants;
import com.microsoft.xbox.toolkit.XLEConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SkuDetails {
    private final String mCurrencyCode;
    private final String mDescription;
    private final String mItemType;
    private final String mJson;
    private final String mPrice;
    private final long mPriceAmountMicros;
    private final String mPriceCurrencyCode;
    private final String mSku;
    private final String mTitle;
    private final String mType;
    private final String mUnformattedPrice;

    public SkuDetails(String jsonSkuDetails) throws JSONException {
        this(IabHelper.ITEM_TYPE_INAPP, jsonSkuDetails);
    }

    public SkuDetails(String itemType, String jsonSkuDetails) throws JSONException {
        this.mItemType = itemType;
        this.mJson = jsonSkuDetails;
        JSONObject o = new JSONObject(this.mJson);
        this.mSku = o.optString("productId");
        this.mType = o.optString(ShareConstants.MEDIA_TYPE);
        this.mPrice = o.optString("price");
        this.mPriceAmountMicros = o.optLong("price_amount_micros");
        this.mPriceCurrencyCode = o.optString("price_currency_code");
        this.mTitle = o.optString(ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.mDescription = o.optString("description");
        this.mCurrencyCode = o.optString("price_currency_code");
        StringBuilder unformattedCurrency = new StringBuilder();
        int microUnits = o.optInt("price_amount_micros");
        if (microUnits != 0) {
            int amount = microUnits / XLEConstants.TICKS_IN_MILLISECOND;
            int decimalAmount = microUnits - (amount * XLEConstants.TICKS_IN_MILLISECOND);
            unformattedCurrency.append(Integer.toString(amount));
            if (decimalAmount >= 0) {
                unformattedCurrency.append(".");
                unformattedCurrency.append(Integer.toString(decimalAmount));
            }
        }
        this.mUnformattedPrice = unformattedCurrency.toString();
    }

    public String getSku() {
        return this.mSku;
    }

    public String getType() {
        return this.mType;
    }

    public String getPrice() {
        return this.mPrice;
    }

    public long getPriceAmountMicros() {
        return this.mPriceAmountMicros;
    }

    public String getPriceCurrencyCode() {
        return this.mPriceCurrencyCode;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getCurrencyCode() {
        return this.mCurrencyCode;
    }

    public String getUnformattedPrice() {
        return this.mUnformattedPrice;
    }

    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}
