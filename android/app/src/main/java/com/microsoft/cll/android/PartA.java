package com.microsoft.cll.android;

import com.microsoft.cll.android.Internal.BuildConfig;
import com.microsoft.onlineid.ui.AddAccountActivity;
import com.microsoft.telemetry.Base;
import com.microsoft.telemetry.Data;
import com.microsoft.telemetry.Extension;
import com.microsoft.telemetry.cs2.Envelope;
import com.microsoft.telemetry.extensions.android;
import com.microsoft.telemetry.extensions.app;
import com.microsoft.telemetry.extensions.device;
import com.microsoft.telemetry.extensions.os;
import com.microsoft.telemetry.extensions.user;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class PartA {
    protected String appId;
    protected String appVer;
    private CorrelationVector correlationVector;
    private long flags;
    protected final String iKey;
    protected final ILogger logger;
    protected String osName;
    protected String osVer;
    private EventSerializer serializer;
    protected String uniqueId;
    private final String csVer = "2.1";
    private final String TAG = "AndroidCll-PartA";
    private final String salt = "oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n";
    private final char[] hexArray = "0123456789ABCDEF".toCharArray();
    private boolean useLegacyCS = false;
    protected final AtomicLong seqCounter = new AtomicLong(0);
    protected final user userExt = new user();
    protected final device deviceExt = new device();
    protected final os osExt = new os();
    protected final app appExt = new app();
    private Random random = new Random();
    private long epoch = this.random.nextLong();

    protected abstract void PopulateConstantValues();

    protected abstract void setAppInfo();

    protected abstract void setDeviceInfo();

    protected abstract void setOs();

    protected abstract void setUserId();

    public PartA(ILogger logger, String iKey, CorrelationVector correlationVector) {
        this.logger = logger;
        this.iKey = iKey;
        this.correlationVector = correlationVector;
        this.serializer = new EventSerializer(logger);
    }

    public SerializedEvent populate(Base base, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        EventEnums.Latency eventLatency = SettingsStore.getLatencyForEvent(base, latency);
        EventEnums.Persistence eventPersistence = SettingsStore.getPersistenceForEvent(base, persistence);
        EnumSet<EventEnums.Sensitivity> eventSensitivity = SettingsStore.getSensitivityForEvent(base, sensitivity);
        double eventSampleRate = SettingsStore.getSampleRateForEvent(base, sampleRate);
        if (this.useLegacyCS) {
            Envelope envelope = populateLegacyEnvelope(base, this.correlationVector.GetValue(), eventLatency, eventPersistence, eventSensitivity, eventSampleRate, ids);
            return populateSerializedEvent(this.serializer.serialize(envelope), eventLatency, eventPersistence, eventSampleRate, envelope.getDeviceId());
        }
        return populateSerializedEvent(this.serializer.serialize(populateEnvelope(base, this.correlationVector.GetValue(), eventLatency, eventPersistence, eventSensitivity, eventSampleRate, ids)), eventLatency, eventPersistence, eventSampleRate, this.deviceExt.getLocalId());
    }

    public com.microsoft.telemetry.Envelope populateEnvelope(Base base, String cV, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        com.microsoft.telemetry.Envelope envelope = new com.microsoft.telemetry.Envelope();
        setBaseType(base);
        envelope.setVer("2.1");
        envelope.setTime(getDateTime());
        envelope.setName(base.QualifiedName);
        envelope.setPopSample(sampleRate);
        envelope.setEpoch(String.valueOf(this.epoch));
        envelope.setSeqNum(getSeqNum(sensitivity));
        envelope.setOs(this.osName);
        envelope.setOsVer(this.osVer);
        envelope.setData(base);
        envelope.setAppId(this.appId);
        envelope.setAppVer(this.appVer);
        if (this.correlationVector.isInitialized) {
            envelope.setCV(cV);
        }
        envelope.setFlags(getFlags(latency, persistence, sensitivity));
        envelope.setIKey(this.iKey);
        envelope.setExt(createExtensions(ids));
        scrubPII(envelope, sensitivity);
        return envelope;
    }

    public Envelope populateLegacyEnvelope(Base base, String cV, EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity, double sampleRate, List<String> ids) {
        Map<String, String> tags = new HashMap<>();
        if (this.correlationVector.isInitialized) {
            tags.put("cV", cV);
        }
        Envelope envelope = new Envelope();
        envelope.setVer(1);
        envelope.setTime(getDateTime());
        envelope.setName(base.QualifiedName);
        envelope.setSampleRate(sampleRate);
        envelope.setSeq(String.valueOf(this.epoch) + ":" + String.valueOf(getSeqNum(sensitivity)));
        envelope.setOs(this.osName);
        envelope.setOsVer(this.osVer);
        envelope.setData(base);
        envelope.setAppId(this.appId);
        envelope.setAppVer(this.appVer);
        envelope.setTags(tags);
        envelope.setFlags(getFlags(latency, persistence, sensitivity));
        envelope.setIKey(this.iKey);
        envelope.setUserId(this.userExt.getLocalId());
        envelope.setDeviceId(this.deviceExt.getLocalId());
        return envelope;
    }

    void setAppUserId(String userId) {
        if (userId == null) {
            this.appExt.setUserId(null);
            return;
        }
        Pattern pattern = Pattern.compile("^((c:)|(i:)|(w:)).*");
        Matcher matcher = pattern.matcher(userId);
        if (!matcher.find()) {
            this.appExt.setUserId(null);
            this.logger.warn("AndroidCll-PartA", "The userId supplied does not match the required format which requires the appId to start with 'c:', 'i:', or 'w:'.");
        } else {
            this.appExt.setUserId(userId);
        }
    }

    String getAppUserId() {
        return this.appExt.getUserId();
    }

    void useLegacyCS(boolean value) {
        this.useLegacyCS = value;
    }

    protected String HashStringSha256(String str) {
        if (str == null) {
            return "";
        }
        try {
            MessageDigest hash = MessageDigest.getInstance("SHA-256");
            hash.reset();
            hash.update(str.getBytes());
            hash.update("oRq=MAHHHC~6CCe|JfEqRZ+gc0ESI||g2Jlb^PYjc5UYN2P 27z_+21xxd2n".getBytes());
            byte[] hashed = hash.digest();
            return bytesToHex(hashed);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    protected void setExpId(String id) {
        this.appExt.setExpId(id);
    }

    private String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = this.hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = this.hexArray[v & 15];
        }
        return new String(hexChars);
    }

    private LinkedHashMap<String, Extension> createExtensions(List<String> ids) {
        LinkedHashMap<String, Extension> extensions = new LinkedHashMap<>();
        extensions.put("user", this.userExt);
        extensions.put("os", this.osExt);
        extensions.put("device", this.deviceExt);
        android androidExt = new android();
        androidExt.setLibVer(BuildConfig.VERSION_NAME);
        if (ids != null && ids.size() > 0) {
            androidExt.setTickets(ids);
        }
        extensions.put(AddAccountActivity.PlatformName, androidExt);
        if (this.appExt.getExpId() != null || this.appExt.getUserId() != null) {
            extensions.put("app", this.appExt);
        }
        return extensions;
    }

    private void scrubPII(com.microsoft.telemetry.Envelope envelope, EnumSet<EventEnums.Sensitivity> sensitivity) {
        EventEnums.Sensitivity level;
        if (sensitivity != null && (level = getHighestSensitivityLevel(sensitivity)) != EventEnums.Sensitivity.SensitivityNone) {
            user userExtensionFromEnvelope = (user) envelope.getExt().get("user");
            user newUserExtension = new user();
            newUserExtension.setLocalId(userExtensionFromEnvelope.getLocalId());
            newUserExtension.setAuthId(userExtensionFromEnvelope.getAuthId());
            newUserExtension.setId(userExtensionFromEnvelope.getId());
            newUserExtension.setVer(userExtensionFromEnvelope.getVer());
            envelope.getExt().put("user", newUserExtension);
            device deviceExtensionFromEnvelope = (device) envelope.getExt().get("device");
            device newDeviceExtension = new device();
            newDeviceExtension.setLocalId(deviceExtensionFromEnvelope.getLocalId());
            newDeviceExtension.setVer(deviceExtensionFromEnvelope.getVer());
            newDeviceExtension.setId(deviceExtensionFromEnvelope.getId());
            newDeviceExtension.setAuthId(deviceExtensionFromEnvelope.getAuthId());
            newDeviceExtension.setAuthSecId(deviceExtensionFromEnvelope.getAuthSecId());
            newDeviceExtension.setDeviceClass(deviceExtensionFromEnvelope.getDeviceClass());
            envelope.getExt().put("device", newDeviceExtension);
            if (envelope.getExt().containsKey("app")) {
                app appExtensionFromEnvelope = (app) envelope.getExt().get("app");
                app newAppExtension = new app();
                newAppExtension.setExpId(appExtensionFromEnvelope.getExpId());
                newAppExtension.setUserId(appExtensionFromEnvelope.getUserId());
                envelope.getExt().put("app", newAppExtension);
            }
            if (level == EventEnums.Sensitivity.SensitivityDrop) {
                ((user) envelope.getExt().get("user")).setLocalId(null);
                ((device) envelope.getExt().get("device")).setLocalId("r:" + String.valueOf(Math.abs(this.random.nextInt())));
                if (envelope.getExt().containsKey("app")) {
                    ((app) envelope.getExt().get("app")).setUserId(null);
                }
                if (this.correlationVector.isInitialized) {
                    envelope.setCV(null);
                }
                envelope.setEpoch(null);
                envelope.setSeqNum(0L);
                return;
            }
            if (level == EventEnums.Sensitivity.SensitivityHash) {
                ((user) envelope.getExt().get("user")).setLocalId("d:" + HashStringSha256(((user) envelope.getExt().get("user")).getLocalId()));
                ((device) envelope.getExt().get("device")).setLocalId("d:" + HashStringSha256(((device) envelope.getExt().get("device")).getLocalId()));
                if (envelope.getExt().containsKey("app")) {
                    ((app) envelope.getExt().get("app")).setUserId("d:" + HashStringSha256(((app) envelope.getExt().get("app")).getUserId()));
                }
                if (this.correlationVector.isInitialized) {
                    envelope.setCV(HashStringSha256(envelope.getCV()));
                }
                envelope.setEpoch(HashStringSha256(envelope.getEpoch()));
            }
        }
    }

    private EventEnums.Sensitivity getHighestSensitivityLevel(EnumSet<EventEnums.Sensitivity> sensitivity) {
        EventEnums.Sensitivity level = EventEnums.Sensitivity.SensitivityNone;
        if (sensitivity.contains(EventEnums.Sensitivity.SensitivityDrop)) {
            EventEnums.Sensitivity level2 = EventEnums.Sensitivity.SensitivityDrop;
            return level2;
        }
        if (sensitivity.contains(EventEnums.Sensitivity.SensitivityHash)) {
            EventEnums.Sensitivity level3 = EventEnums.Sensitivity.SensitivityHash;
            return level3;
        }
        return level;
    }

    private String getDateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return dateFormat.format(new Date()).toString();
    }

    private void setBaseType(Base base) {
        try {
            String baseType = ((Data) base).getBaseData().QualifiedName;
            base.setBaseType(baseType);
        } catch (ClassCastException e) {
            this.logger.error("AndroidCll-PartA", "This event doesn't extend data");
        }
    }

    private long getFlags(EventEnums.Latency latency, EventEnums.Persistence persistence, EnumSet<EventEnums.Sensitivity> sensitivity) {
        long flags = 0;
        if (sensitivity != null) {
            for (EventEnums.Sensitivity curSensitivity : sensitivity) {
                if (curSensitivity != EventEnums.Sensitivity.SensitivityUnspecified) {
                    flags |= (long) curSensitivity.id;
                }
            }
        }
        return flags | ((long) latency.id) | ((long) persistence.id);
    }

    private long getSeqNum(EnumSet<EventEnums.Sensitivity> sensitivity) {
        if (sensitivity.contains(EventEnums.Sensitivity.SensitivityDrop)) {
            return 0L;
        }
        return this.seqCounter.incrementAndGet();
    }

    private SerializedEvent populateSerializedEvent(String eventData, EventEnums.Latency latency, EventEnums.Persistence persistence, double sampleRate, String deviceId) {
        SerializedEvent event = new SerializedEvent();
        event.setSerializedData(eventData);
        event.setSampleRate(sampleRate);
        event.setDeviceId(this.deviceExt.getLocalId());
        event.setPersistence(persistence);
        event.setLatency(latency);
        return event;
    }
}
