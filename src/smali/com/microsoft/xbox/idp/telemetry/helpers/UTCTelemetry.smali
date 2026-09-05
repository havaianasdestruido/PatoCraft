.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;
.super Ljava/lang/Object;
.source "UTCTelemetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;
    }
.end annotation


# static fields
.field public static final UNKNOWNPAGE:Ljava/lang/String; = "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogEvent(LMicrosoft/Telemetry/Base;)V
    .locals 3
    .param p0, "event"    # LMicrosoft/Telemetry/Base;

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getCll()Lcom/microsoft/cll/android/AndroidCll;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/microsoft/cll/android/AndroidCll;->log(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 34
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "CLL not initialized.  Is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;
    .locals 4
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .prologue
    .line 45
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    const-string v0, "%sErrorScreen"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unknown"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "Banned error view"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "Generic error view"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "Create error view"

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "Offline error view"

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
