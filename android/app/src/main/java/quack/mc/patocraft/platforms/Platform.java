package quack.mc.patocraft.platforms;

import android.os.Build;
import android.view.View;

public abstract class Platform {
    public abstract void onAppStart(View view);

    public abstract void onVolumePressed();

    public abstract void onViewFocusChanged(boolean hasFocus);

    public abstract String getABIS();

    public static Platform createPlatform(boolean useVR) {
        return new PlatformAndroid();
    }

    private static class PlatformAndroid extends Platform {
        @Override
        public void onAppStart(View view) {
        }

        @Override
        public void onVolumePressed() {
        }

        @Override
        public void onViewFocusChanged(boolean hasFocus) {
        }

        @Override
        public String getABIS() {
            if (Build.VERSION.SDK_INT >= 21 && Build.SUPPORTED_ABIS != null && Build.SUPPORTED_ABIS.length > 0) {
                return Build.SUPPORTED_ABIS[0];
            }
            return Build.CPU_ABI;
        }
    }
}