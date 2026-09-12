package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class AdvertisingIdObject {
    private static final String SEPARATOR = ",";
    private String advertisingId;
    private boolean limitAdTracking;
    private IdType type;

    AdvertisingIdObject(IdType type, String advertisingId, boolean limitAdTracking) {
        this.type = type;
        this.advertisingId = advertisingId;
        this.limitAdTracking = limitAdTracking;
    }

    AdvertisingIdObject(String fromString) {
        if (fromString != null) {
            String[] aidData = fromString.split(SEPARATOR);
            if (aidData.length >= 3) {
                this.type = IdType.fromString(aidData[0]);
                this.advertisingId = aidData[1];
                this.limitAdTracking = Boolean.valueOf(aidData[2]).booleanValue();
            }
        }
    }

    String getAdvertisingId() {
        return this.advertisingId;
    }

    void setAdvertisingId(String advertisingId) {
        this.advertisingId = advertisingId;
    }

    boolean isLimitAdTracking() {
        return this.limitAdTracking;
    }

    void setLimitAdTracking(boolean limitAdTracking) {
        this.limitAdTracking = limitAdTracking;
    }

    IdType getType() {
        return this.type;
    }

    void setType(IdType type) {
        this.type = type;
    }

    public String toString() {
        return String.format("%s,%s", this.advertisingId, Boolean.valueOf(this.limitAdTracking));
    }

    boolean isValid(IdType type) {
        return type.intValue == this.type.intValue && this.advertisingId != null && this.advertisingId.length() > 0;
    }

    enum IdType {
        GOOGLE(0),
        AMAZON(1);

        private int intValue;

        IdType(int intValue) {
            this.intValue = intValue;
        }

        public static IdType fromString(String text) {
            if (text != null) {
                for (IdType idType : values()) {
                    if (Integer.valueOf(text).intValue() == idType.intValue) {
                        return idType;
                    }
                }
            }
            return null;
        }

        @Override // java.lang.Enum
        public String toString() {
            return String.valueOf(this.intValue);
        }
    }
}
