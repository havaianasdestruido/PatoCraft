.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$Client$Errors;
.super Ljava/lang/Object;
.source "UTCNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Errors"
.end annotation


# static fields
.field public static final Failure:Ljava/lang/String; = "Client Error Type - Failure"

.field public static final MSACancel:Ljava/lang/String; = "Client Error Type - MSA canceled"

.field public static final SignedOut:Ljava/lang/String; = "Client Error Type - Signed out"

.field public static final UINeeded:Ljava/lang/String; = "Client Error Type - UI Needed"

.field public static final UserCancel:Ljava/lang/String; = "Client Error Type - User canceled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
