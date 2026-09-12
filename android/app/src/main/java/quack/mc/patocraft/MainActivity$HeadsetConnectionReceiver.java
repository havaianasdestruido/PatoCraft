package quack.mc.patocraft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.facebook.internal.ServerProtocol;

class MainActivity$HeadsetConnectionReceiver extends BroadcastReceiver {
    MainActivity$HeadsetConnectionReceiver() {
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
            int state = intent.getIntExtra(ServerProtocol.DIALOG_PARAM_STATE, -1);
            switch (state) {
                case 0:
                    Log.d("MCPE", "Headset unplugged");
                    MainActivity.mInstance.nativeSetHeadphonesConnected(false);
                    break;
                case 1:
                    Log.d("MCPE", "Headset plugged in");
                    MainActivity.mInstance.nativeSetHeadphonesConnected(true);
                    break;
            }
        }
    }
}
