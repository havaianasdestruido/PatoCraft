package quack.mc.patocraft;

import android.content.DialogInterface;

class MainActivity$14 implements DialogInterface.OnClickListener {
    private final MainActivity this$0;

    MainActivity$14(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        this.this$0.onDialogCanceled();
    }
}
