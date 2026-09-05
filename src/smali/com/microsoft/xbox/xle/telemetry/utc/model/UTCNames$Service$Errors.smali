.class public Lcom/microsoft/xbox/xle/telemetry/utc/model/UTCNames$Service$Errors;
.super Ljava/lang/Object;
.source "UTCNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/telemetry/utc/model/UTCNames$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Errors"
.end annotation


# static fields
.field public static final LoadBitmap:Ljava/lang/String; = "Service Error - Load bitmap"

.field public static final LoadPrivacySettings:Ljava/lang/String; = "Service Error - Load privacy settings"

.field public static final LoadProfile:Ljava/lang/String; = "Service Error - Load Profile"

.field public static final LoadSuggestions:Ljava/lang/String; = "Service Error - Load suggestions"

.field public static final LoadXTOKEN:Ljava/lang/String; = "Service Error - Load XTOKEN"

.field public static final ReserveGamerTag:Ljava/lang/String; = "Service Error - Reserve gamertag"

.field public static final SetPrivacySettings:Ljava/lang/String; = "Service Error - Set privacy settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
