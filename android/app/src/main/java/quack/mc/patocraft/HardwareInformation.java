package quack.mc.patocraft;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import quack.mc.patocraft.platforms.Platform;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@SuppressLint({"DefaultLocale"})
public class HardwareInformation {
    private static final CPUInfo cpuInfo = getCPUInfo();

    public static String getDeviceModelName() {
        String manufacturer = Build.MANUFACTURER;
        String model = Build.MODEL;
        if (model.startsWith(manufacturer)) {
            String returnString = model.toUpperCase();
            return returnString;
        }
        String returnString2 = manufacturer.toUpperCase() + " " + model;
        return returnString2;
    }

    public static String getAndroidVersion() {
        return "Android " + Build.VERSION.RELEASE;
    }

    public static String getLocale() {
        return Locale.getDefault().toString();
    }

    public static String getCPUType() {
        Platform pf = Platform.createPlatform(false);
        return pf.getABIS();
    }

    public static String getCPUName() {
        return cpuInfo.getCPULine("Hardware");
    }

    public static String getCPUFeatures() {
        return cpuInfo.getCPULine("Features");
    }

    public static int getNumCores() {
        return cpuInfo.getNumberCPUCores();
    }

    public static CPUInfo getCPUInfo() {
        new StringBuffer();
        Map<String, String> list = new HashMap<>();
        int processorCount = 0;
        if (new File("/proc/cpuinfo").exists()) {
            try {
                BufferedReader br = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                Pattern pattern = Pattern.compile("(\\w*)\\s*:\\s([^\\n]*)");
                while (true) {
                    String line = br.readLine();
                    if (line == null) {
                        break;
                    }
                    Matcher matcher = pattern.matcher(line);
                    if (matcher.find() && matcher.groupCount() == 2) {
                        if (!list.containsKey(matcher.group(1))) {
                            list.put(matcher.group(1), matcher.group(2));
                        }
                        if (matcher.group(1).contentEquals("processor")) {
                            processorCount++;
                        }
                    }
                }
                if (br != null) {
                    br.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new CPUInfo(list, processorCount);
    }

    private static class CPUInfo {
        private final Map<String, String> cpuLines;
        private final int numberCPUCores;

        public CPUInfo(Map<String, String> cpuLines, int numberCPUCores) {
            this.cpuLines = cpuLines;
            this.numberCPUCores = numberCPUCores;
        }

        String getCPULine(String line) {
            return this.cpuLines.containsKey(line) ? this.cpuLines.get(line) : "";
        }

        int getNumberCPUCores() {
            return this.numberCPUCores;
        }
    }
}
