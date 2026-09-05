.class public Lcom/microsoft/xbox/toolkit/system/SystemUtil;
.super Ljava/lang/Object;
.source "SystemUtil.java"


# static fields
.field private static final MAX_SD_SCREEN_PIXELS:I = 0x5dc00


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DIPtoPixels(F)I
    .locals 2
    .param p0, "dip"    # F

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static SPtoPixels(F)I
    .locals 2
    .param p0, "sp"    # F

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static TEST_randomFalseOutOf(I)Z
    .locals 1
    .param p0, "max"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public static TEST_randomSleep(I)V
    .locals 1
    .param p0, "maxSeconds"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 195
    return-void
.end method

.method public static getColorDepth()I
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "info":Landroid/graphics/PixelFormat;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 69
    iget v1, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 115
    const-string v0, ""

    return-object v0
.end method

.method private static getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 122
    const-string v0, "window"

    invoke-static {v0}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getMACAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 166
    .local v3, "intf":Ljava/net/NetworkInterface;
    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    :cond_1
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    .line 173
    .local v4, "mac":[B
    if-nez v4, :cond_2

    .line 174
    const-string v5, ""

    .line 190
    .end local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    .end local v4    # "mac":[B
    :goto_0
    return-object v5

    .line 177
    .restart local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v3    # "intf":Ljava/net/NetworkInterface;
    .restart local v4    # "mac":[B
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 180
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 189
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "idx":I
    .end local v2    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    .end local v4    # "mac":[B
    :catch_0
    move-exception v5

    .line 190
    :cond_5
    const-string v5, ""

    goto :goto_0
.end method

.method public static getOrientation()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 94
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getRotation()I

    move-result v0

    .line 95
    .local v0, "rotation":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    const/4 v1, 0x1

    .line 98
    :cond_1
    return v1
.end method

.method public static getRotation()I
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getScreenHeight()I
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenHeightInches()F
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    return v1
.end method

.method public static getScreenWidth()I
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 55
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getScreenWidthHeightAspectRatio()F
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v1

    .line 132
    .local v1, "screenWidth":I
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenHeight()I

    move-result v0

    .line 133
    .local v0, "screenHeight":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 134
    :cond_0
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    .line 137
    :cond_1
    if-le v1, v0, :cond_2

    .line 138
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 140
    :cond_2
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public static getScreenWidthInches()F
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    return v1
.end method

.method public static getSdkInt()I
    .locals 1

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getYDPI()F
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return v1
.end method

.method public static isHDScreen()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x5dc00

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKindle()Z
    .locals 2

    .prologue
    .line 203
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 204
    .local v0, "manufecturer":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "AMAZON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSDCardAvailable()Z
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSlate()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 107
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidthInches()F

    move-result v1

    .line 108
    .local v1, "width":F
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenHeightInches()F

    move-result v0

    .line 109
    .local v0, "height":F
    float-to-double v4, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 110
    .local v2, "screenSize":D
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
