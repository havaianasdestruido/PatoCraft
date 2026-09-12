package com.microsoft.cll.android;

import java.util.EnumSet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class EventEnums {
    public static final double SampleRate_0_percent = 0.0d;
    public static final double SampleRate_10_percent = 10.0d;
    public static final double SampleRate_Epsilon = 1.0E-5d;
    public static final double SampleRate_NoSampling = 100.0d;
    public static final double SampleRate_Unspecified = -1.0d;

    private EventEnums() {
        throw new AssertionError();
    }

    public enum Latency {
        LatencyUnspecified(0),
        LatencyNormal(256),
        LatencyRealtime(512);

        public final int id;

        Latency(int id) {
            this.id = id;
        }

        static Latency FromString(String s) {
            return s == "REALTIME" ? LatencyRealtime : LatencyNormal;
        }
    }

    public enum Persistence {
        PersistenceUnspecified(0),
        PersistenceNormal(1),
        PersistenceCritical(2);

        public final int id;

        Persistence(int id) {
            this.id = id;
        }

        static Persistence FromString(String s) {
            return s == "CRITICAL" ? PersistenceCritical : PersistenceNormal;
        }
    }

    public enum Sensitivity {
        SensitivityUnspecified(1),
        SensitivityNone(0),
        SensitivityMark(524288),
        SensitivityHash(1048576),
        SensitivityDrop(2097152);

        public final int id;

        Sensitivity(int id) {
            this.id = id;
        }

        static EnumSet<Sensitivity> FromString(String s) {
            EnumSet<Sensitivity> sensitivity = EnumSet.noneOf(Sensitivity.class);
            if (s != null) {
                if (s.contains("MARK") || s.toUpperCase().contains("USERSENSITIVE")) {
                    sensitivity.add(SensitivityMark);
                }
                if (s.contains("DROP")) {
                    sensitivity.add(SensitivityDrop);
                }
                if (s.contains("HASH")) {
                    sensitivity.add(SensitivityHash);
                }
            }
            return sensitivity;
        }
    }

    static double SampleRateFromString(String s) {
        try {
            double d = Double.parseDouble(s);
            return d;
        } catch (NumberFormatException e) {
            return 100.0d;
        }
    }
}
