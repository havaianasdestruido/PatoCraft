package quack.mc.patocraft;

import android.content.DialogInterface;

class MainActivity$12 implements DialogInterface.OnCancelListener {
    private final MainActivity this$0;

    MainActivity$12(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override
    public void onCancel(DialogInterface dialog) {
        this.this$0.onDialogCanceled();
    }
}
