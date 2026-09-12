package quack.mc.patocraft.input;

import android.app.Activity;

public class InputDeviceManager {
    private final Activity activity;

    private InputDeviceManager(Activity activity) {
        this.activity = activity;
    }

    public static InputDeviceManager create(Activity activity) {
        return new InputDeviceManager(activity);
    }

    public void register() {
    }

    public void unregister() {
    }
}