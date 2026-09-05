.class public Lcom/amazon/drm/AmazonLicenseVerificationCallback;
.super Ljava/lang/Object;
.source "AmazonLicenseVerificationCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmazonLicenseVerificationCallback"

.field private static licenseVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->licenseVerified:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLicenseVerified()Z
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->licenseVerified:Z

    return v0
.end method

.method public static onDRMSuccess()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->licenseVerified:Z

    .line 13
    return-void
.end method
