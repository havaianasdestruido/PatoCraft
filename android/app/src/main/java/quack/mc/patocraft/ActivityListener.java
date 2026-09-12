package quack.mc.patocraft;

import android.content.Intent;

public interface ActivityListener {
    void onActivityResult(int i, int i2, Intent intent);

    void onDestroy();
}
