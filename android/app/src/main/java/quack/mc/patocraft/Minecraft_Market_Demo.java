package quack.mc.patocraft;

import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Minecraft_Market_Demo extends MainActivity {
    @Override // quack.mc.patocraft.MainActivity
    public void buyGame() {
        Uri buyLink = Uri.parse("market://details?id=quack.mc.patocraft");
        Intent marketIntent = new Intent("android.intent.action.VIEW", buyLink);
        startActivity(marketIntent);
    }

    @Override // quack.mc.patocraft.MainActivity
    protected boolean isDemo() {
        return true;
    }
}
