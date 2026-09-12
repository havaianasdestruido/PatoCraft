package quack.mc.patocraft;

import android.content.res.Configuration;
import java.util.Locale;
import java.lang.Runnable;

class MainActivity$8 implements Runnable {
    private final MainActivity this$0;
    private final String lang;
    private final String region;

    MainActivity$8(MainActivity mainActivity, String lang, String region) {
        this.this$0 = mainActivity;
        this.lang = lang;
        this.region = region;
    }

    @Override
    public void run() {
        Locale locale = new Locale(lang, region);
        Locale.setDefault(locale);
        Configuration config = new Configuration();
        config.locale = locale;
        this.this$0.getResources().updateConfiguration(config, this.this$0.getResources().getDisplayMetrics());
    }
}
