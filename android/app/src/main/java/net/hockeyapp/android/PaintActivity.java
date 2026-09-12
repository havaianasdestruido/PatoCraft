package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import net.hockeyapp.android.utils.HockeyLog;
import net.hockeyapp.android.views.PaintView;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PaintActivity extends Activity {
    public static final String EXTRA_IMAGE_URI = "imageUri";
    private static final int MENU_CLEAR_ID = 3;
    private static final int MENU_SAVE_ID = 1;
    private static final int MENU_UNDO_ID = 2;
    private String mImageName;
    private PaintView mPaintView;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle extras = getIntent().getExtras();
        if (extras == null || extras.getParcelable(EXTRA_IMAGE_URI) == null) {
            HockeyLog.error("Can't set up PaintActivity as image extra was not provided!");
            return;
        }
        Uri imageUri = (Uri) extras.getParcelable(EXTRA_IMAGE_URI);
        this.mImageName = determineFilename(imageUri, imageUri.getLastPathSegment());
        int displayWidth = getResources().getDisplayMetrics().widthPixels;
        int displayHeight = getResources().getDisplayMetrics().heightPixels;
        int currentOrientation = displayWidth > displayHeight ? 0 : 1;
        int desiredOrientation = PaintView.determineOrientation(getContentResolver(), imageUri);
        setRequestedOrientation(desiredOrientation);
        if (currentOrientation != desiredOrientation) {
            HockeyLog.debug("Image loading skipped because activity will be destroyed for orientation change.");
            return;
        }
        this.mPaintView = new PaintView(this, imageUri, displayWidth, displayHeight);
        LinearLayout vLayout = new LinearLayout(this);
        LinearLayout.LayoutParams vParams = new LinearLayout.LayoutParams(-1, -1);
        vLayout.setLayoutParams(vParams);
        vLayout.setGravity(17);
        vLayout.setOrientation(1);
        LinearLayout hLayout = new LinearLayout(this);
        LinearLayout.LayoutParams hParams = new LinearLayout.LayoutParams(-1, -1);
        hLayout.setLayoutParams(hParams);
        hLayout.setGravity(17);
        hLayout.setOrientation(0);
        vLayout.addView(hLayout);
        hLayout.addView(this.mPaintView);
        setContentView(vLayout);
        Toast toast = Toast.makeText(this, getString(R.string.hockeyapp_paint_indicator_toast), 1);
        toast.show();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, 1, 0, getString(R.string.hockeyapp_paint_menu_save));
        menu.add(0, 2, 0, getString(R.string.hockeyapp_paint_menu_undo));
        menu.add(0, 3, 0, getString(R.string.hockeyapp_paint_menu_clear));
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 1:
                makeResult();
                return true;
            case 2:
                this.mPaintView.undo();
                return true;
            case 3:
                this.mPaintView.clearImage();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || this.mPaintView.isClear()) {
            return super.onKeyDown(keyCode, event);
        }
        DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() { // from class: net.hockeyapp.android.PaintActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case -2:
                        PaintActivity.this.finish();
                        break;
                    case -1:
                        PaintActivity.this.makeResult();
                        break;
                }
            }
        };
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(R.string.hockeyapp_paint_dialog_message).setPositiveButton(R.string.hockeyapp_paint_dialog_positive_button, dialogClickListener).setNegativeButton(R.string.hockeyapp_paint_dialog_negative_button, dialogClickListener).setNeutralButton(R.string.hockeyapp_paint_dialog_neutral_button, dialogClickListener).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r7v7, types: [net.hockeyapp.android.PaintActivity$2] */
    public void makeResult() {
        File hockeyAppCache = new File(getCacheDir(), "HockeyApp");
        hockeyAppCache.mkdir();
        String filename = this.mImageName + ".jpg";
        File result = new File(hockeyAppCache, filename);
        int suffix = 1;
        while (result.exists()) {
            result = new File(hockeyAppCache, this.mImageName + "_" + suffix + ".jpg");
            suffix++;
        }
        this.mPaintView.setDrawingCacheEnabled(true);
        final Bitmap bitmap = this.mPaintView.getDrawingCache();
        new AsyncTask<File, Void, Void>() { // from class: net.hockeyapp.android.PaintActivity.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(File... args) {
                try {
                    FileOutputStream out = new FileOutputStream(args[0]);
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, out);
                    out.close();
                    return null;
                } catch (IOException e) {
                    e.printStackTrace();
                    HockeyLog.error("Could not save image.", e);
                    return null;
                }
            }
        }.execute(result);
        Intent intent = new Intent();
        Uri uri = Uri.fromFile(result);
        intent.putExtra(EXTRA_IMAGE_URI, uri);
        if (getParent() == null) {
            setResult(-1, intent);
        } else {
            getParent().setResult(-1, intent);
        }
        finish();
    }

    private String determineFilename(Uri uri, String fallback) {
        String[] projection = {"_data"};
        String path = null;
        ContentResolver cr = getApplicationContext().getContentResolver();
        Cursor metaCursor = cr.query(uri, projection, null, null, null);
        if (metaCursor != null) {
            try {
                if (metaCursor.moveToFirst()) {
                    path = metaCursor.getString(0);
                }
                metaCursor.close();
            } catch (Throwable th) {
                metaCursor.close();
                throw th;
            }
        }
        if (path == null) {
            return fallback;
        }
        String fallback2 = new File(path).getName();
        return fallback2;
    }
}
