package com.microsoft.onlineid.internal.profile;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.http.HttpResponseCache;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.microsoft.onlineid.analytics.ClientAnalytics;
import com.microsoft.onlineid.exception.NetworkException;
import com.microsoft.onlineid.internal.log.Logger;
import com.microsoft.onlineid.internal.transport.Transport;
import com.microsoft.onlineid.internal.transport.TransportFactory;
import com.microsoft.onlineid.sts.AuthenticatorUserAccount;
import com.microsoft.onlineid.sts.ServerConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DownloadProfileImageTask extends AsyncTask<Void, Void, Bitmap> {
    public static final String UserTileExtension = ".png";
    protected static final String UserTileUrlFormat = "https://storage.%2$s/users/0x%1$s/myprofile/expressionprofile/profilephoto:UserTileStatic";
    private final AuthenticatorUserAccount _account;
    private final Context _applicationContext;
    private final ImageView _imageView;
    private boolean _newImageDownloaded;
    private final ServerConfig _serverConfig;
    private final Transport _transport;
    private final String _userTileFileName;

    public DownloadProfileImageTask(Context applicationContext, AuthenticatorUserAccount account, ImageView imageView) {
        this._applicationContext = applicationContext;
        this._account = account;
        this._transport = new TransportFactory(applicationContext).createTransport();
        this._serverConfig = new ServerConfig(applicationContext);
        this._imageView = imageView;
        this._userTileFileName = this._account.getPuid() + UserTileExtension;
        this._newImageDownloaded = false;
    }

    DownloadProfileImageTask(AuthenticatorUserAccount account, Transport transport, ServerConfig serverConfig) {
        this._applicationContext = null;
        this._account = account;
        this._transport = transport;
        this._serverConfig = serverConfig;
        this._imageView = null;
        this._userTileFileName = null;
        this._newImageDownloaded = false;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Bitmap lastSavedUserTile = getSavedUserTileImage();
        if (lastSavedUserTile != null) {
            this._imageView.setImageBitmap(lastSavedUserTile);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(Void... params) {
        InputStream responseStream = null;
        try {
            try {
                try {
                    Object[] objArr = new Object[2];
                    objArr[0] = this._account.getCid();
                    objArr[1] = this._serverConfig.getEnvironment().equals(ServerConfig.KnownEnvironment.Production.getEnvironment()) ? "live.com" : "live-int.com";
                    String url = String.format(UserTileUrlFormat, objArr);
                    this._transport.openGetRequest(new URL(url));
                    this._transport.setUseCaches(true);
                    responseStream = this._transport.getResponseStream();
                    Bitmap image = BitmapFactory.decodeStream(responseStream);
                    saveUserTileImage(image);
                    this._newImageDownloaded = true;
                    this._transport.closeConnection();
                    if (responseStream == null) {
                        return image;
                    }
                    try {
                        responseStream.close();
                        return image;
                    } catch (IOException e) {
                        Logger.error("Error closing response stream.", e);
                        return image;
                    }
                } catch (Throwable th) {
                    this._transport.closeConnection();
                    if (responseStream != null) {
                        try {
                            responseStream.close();
                        } catch (IOException e2) {
                            Logger.error("Error closing response stream.", e2);
                        }
                    }
                    throw th;
                }
            } catch (NetworkException e3) {
                Logger.error("Error downloading image from url.", e3);
                this._transport.closeConnection();
                if (responseStream != null) {
                    try {
                        responseStream.close();
                    } catch (IOException e4) {
                        Logger.error("Error closing response stream.", e4);
                    }
                }
                return null;
            }
        } catch (MalformedURLException e5) {
            Logger.error("Error downloading image from url.", e5);
            this._transport.closeConnection();
            if (responseStream != null) {
                try {
                    responseStream.close();
                } catch (IOException e6) {
                    Logger.error("Error closing response stream.", e6);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap result) {
        if (result != null) {
            HttpResponseCache httpResponseCache = HttpResponseCache.getInstalled();
            if (httpResponseCache != null) {
                String label = httpResponseCache.getHitCount() == 0 ? "from network" : "from cache";
                ClientAnalytics.get().logEvent(ClientAnalytics.PerformanceCategory, ClientAnalytics.LoadProfileImage, label);
            }
            this._imageView.setImageBitmap(result);
            return;
        }
        File file = this._applicationContext.getFileStreamPath(this._userTileFileName);
        if (file.exists() && this._newImageDownloaded) {
            ClientAnalytics.get().logEvent(ClientAnalytics.PerformanceCategory, ClientAnalytics.LoadProfileImage, "deleted");
            file.delete();
            this._imageView.setImageDrawable(this._applicationContext.getResources().getDrawable(this._applicationContext.getResources().getIdentifier("msa_default_user_tile", "drawable", this._applicationContext.getPackageName())));
        }
    }

    Bitmap getSavedUserTileImage() {
        Bitmap savedUserTileImage = null;
        FileInputStream userTileInputStream = null;
        try {
            userTileInputStream = this._applicationContext.openFileInput(this._userTileFileName);
            savedUserTileImage = BitmapFactory.decodeStream(userTileInputStream);
            if (userTileInputStream != null) {
                try {
                    userTileInputStream.close();
                } catch (IOException e) {
                    Logger.error("Error closing file input stream.", e);
                }
            }
        } catch (FileNotFoundException e2) {
            if (userTileInputStream != null) {
                try {
                    userTileInputStream.close();
                } catch (IOException e3) {
                    Logger.error("Error closing file input stream.", e3);
                }
            }
        } catch (Throwable th) {
            if (userTileInputStream != null) {
                try {
                    userTileInputStream.close();
                } catch (IOException e4) {
                    Logger.error("Error closing file input stream.", e4);
                }
            }
            throw th;
        }
        return savedUserTileImage;
    }

    void saveUserTileImage(Bitmap image) {
        if (image != null) {
            FileOutputStream userTileOutputStream = null;
            try {
                userTileOutputStream = this._applicationContext.openFileOutput(this._userTileFileName, 0);
                image.compress(Bitmap.CompressFormat.PNG, 100, userTileOutputStream);
            } catch (FileNotFoundException e) {
                Logger.error("Error saving user tile image.", e);
            } finally {
                if (userTileOutputStream != null) {
                    try {
                        userTileOutputStream.close();
                    } catch (IOException e2) {
                        Logger.error("Error closing file output stream.", e2);
                    }
                }
            }
        }
    }
}
