.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;
.super Ljava/lang/Object;
.source "UTCError.java"


# static fields
.field private static final CLIENTERRORVERSION:I = 0x1

.field private static final FAILURE:Ljava/lang/String; = "Client Error Type - Failure"

.field private static final MSACANCEL:Ljava/lang/String; = "Client Error Type - MSA canceled"

.field private static final SERVICEERRORVERSION:I = 0x1

.field private static final SIGNEDOUT:Ljava/lang/String; = "Client Error Type - Signed out"

.field private static final UINEEDEDERROR:Ljava/lang/String; = "Client Error Type - UI Needed"

.field private static final USERCANCEL:Ljava/lang/String; = "Client Error Type - User canceled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClose(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    :try_start_0
    const-string v1, "Errors - Close error screen"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCError.trackClose"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 13
    .param p0, "ex"    # Ljava/lang/Exception;
    .param p1, "callingSource"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v8, "unknown"

    .line 191
    .local v8, "unknown":Ljava/lang/String;
    const/16 v5, 0xa

    .line 192
    .local v5, "maxFrames":I
    const/16 v6, 0xc8

    .line 194
    .local v6, "maxLength":I
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 197
    .local v2, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 199
    const-string v9, "%s:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorText(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 210
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v0, p1

    .line 212
    .local v0, "callStack":Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v9, v7

    if-lez v9, :cond_1

    .line 213
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v7

    if-ge v4, v9, :cond_1

    const/16 v9, 0xa

    if-ge v4, v9, :cond_1

    .line 216
    aget-object v1, v7, v4

    .line 219
    .local v1, "element":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "frame":Ljava/lang/String;
    const-string v9, "%s;%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .end local v3    # "frame":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_3

    .line 238
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setCallStack(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 244
    invoke-static {v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V

    .line 250
    .end local v0    # "callStack":Ljava/lang/String;
    .end local v7    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_2
    return-void

    .line 213
    .restart local v0    # "callStack":Ljava/lang/String;
    .restart local v1    # "element":Ljava/lang/StackTraceElement;
    .restart local v4    # "i":I
    .restart local v7    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;J)V
    .locals 9
    .param p0, "jobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;
    .param p3, "errorCode"    # J

    .prologue
    const/4 v7, 0x0

    .line 170
    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 171
    .local v2, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v3, "job"

    invoke-virtual {v2, v3, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 176
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    const-string v3, "Client Error Type - Failure"

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 177
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorCode(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 179
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 181
    const-string v3, "Error:%s, errorCode:%s, additionalInfo:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Client Error Type - Failure"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCError.trackFailure"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackFailure(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;Ljava/lang/Exception;)V
    .locals 10
    .param p0, "jobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v9, 0x0

    .line 133
    :try_start_0
    new-instance v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 134
    .local v4, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v5, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v5, "job"

    invoke-virtual {v4, v5, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v5, "source"

    invoke-virtual {v4, v5, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 139
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    const-string v5, "Client Error Type - Failure"

    invoke-virtual {v1, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 142
    const-string v3, ""

    .line 143
    .local v3, "exceptionName":Ljava/lang/String;
    const-string v2, ""

    .line 144
    .local v2, "exceptionMessage":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 145
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorText(Ljava/lang/String;)V

    .line 151
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 153
    const-string v5, "Error:%s, exception:%s, additionalInfo:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Client Error Type - Failure"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    .end local v3    # "exceptionName":Ljava/lang/String;
    .end local v4    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "UTCError.trackFailure"

    invoke-static {v0, v5}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackGoToEnforcement(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    :try_start_0
    const-string v1, "Errors - View enforcement site"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCError.trackGoToEnforcement"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackMSACancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .locals 8
    .param p0, "MSAJobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    .prologue
    const/4 v7, 0x0

    .line 80
    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 81
    .local v2, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v3, "job"

    invoke-virtual {v2, v3, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 86
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 87
    const-string v3, "Client Error Type - MSA canceled"

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 90
    const-string v3, "Error:%s, additionalInfo:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Client Error Type - MSA canceled"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCError.trackUserCancel"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackPageView(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCError.trackPageView"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackRightButton(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 327
    :try_start_0
    const-string v1, "Errors - Ok"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCError.trackRightButton"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V
    .locals 10
    .param p0, "errorName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "httpError"    # Lcom/microsoft/xbox/idp/toolkit/HttpError;

    .prologue
    const/4 v9, 0x0

    .line 254
    :try_start_0
    new-instance v4, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 255
    .local v4, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v5, "pageName"

    invoke-virtual {v4, v5, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v3, "UNKNOWN"

    .line 258
    .local v3, "errorMessage":Ljava/lang/String;
    const-string v2, "0"

    .line 259
    .local v2, "errorCode":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;-><init>()V

    .line 265
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;
    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorName(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorText(Ljava/lang/String;)V

    .line 267
    if-nez p1, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "pageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setPageName(Ljava/lang/String;)V

    .line 268
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setErrorCode(Ljava/lang/String;)V

    .line 269
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 270
    const-string v5, "Service Error:%s, errorCode:%s, additionalInfo:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Client Error Type - Failure"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ServiceError;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v4    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "UTCError.trackServiceFailure"

    invoke-static {v0, v5}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackSignedOut(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .locals 8
    .param p0, "MSAJobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    .prologue
    const/4 v7, 0x0

    .line 106
    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 107
    .local v2, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v3, "job"

    invoke-virtual {v2, v3, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 112
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 113
    const-string v3, "Client Error Type - Signed out"

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 116
    const-string v3, "Error:%s, additionalInfo:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Client Error Type - Signed out"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCError.trackSignedOut"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackTryAgain(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "errorScreen"    # Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 313
    :try_start_0
    const-string v1, "Errors - Try again"

    invoke-static {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UTCError.trackTryAgain"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .locals 8
    .param p0, "MSAJobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    .prologue
    const/4 v7, 0x0

    .line 34
    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 35
    .local v2, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v3, "job"

    invoke-virtual {v2, v3, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 40
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 41
    const-string v3, "Client Error Type - UI Needed"

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 42
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 44
    const-string v3, "Error:%s, additionalInfo:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Client Error Type - UI Needed"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCError.trackUINeeded"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static trackUserCancel(Ljava/lang/String;ZLcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .locals 8
    .param p0, "MSAJobName"    # Ljava/lang/String;
    .param p1, "isSilent"    # Z
    .param p2, "source"    # Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry$CallBackSources;

    .prologue
    const/4 v7, 0x0

    .line 60
    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    .line 61
    .local v2, "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    const-string v3, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v3, "job"

    invoke-virtual {v2, v3, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;-><init>()V

    .line 66
    .local v1, "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setPageName(Ljava/lang/String;)V

    .line 67
    const-string v3, "Client Error Type - User canceled"

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setErrorName(Ljava/lang/String;)V

    .line 68
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 70
    const-string v3, "Error:%s, additionalInfo:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Client Error Type - User canceled"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "error":Lcom/microsoft/xbox/idp/telemetry/utc/ClientError;
    .end local v2    # "model":Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCError.trackUserCancel"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
