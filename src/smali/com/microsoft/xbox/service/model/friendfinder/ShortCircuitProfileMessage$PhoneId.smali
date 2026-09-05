.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
.super Ljava/lang/Object;
.source "ShortCircuitProfileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneId"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public puid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 557
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 558
    const/4 v1, 0x0

    .line 561
    .local v1, "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :try_start_0
    const-string v3, "Cid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    if-nez v1, :cond_0

    .line 563
    new-instance v2, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;-><init>()V

    .end local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .local v2, "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    move-object v1, v2

    .line 565
    .end local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :cond_0
    const-string v3, "Cid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->cid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v2, v1

    .line 568
    .end local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :try_start_1
    const-string v3, "Puid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    if-nez v2, :cond_2

    .line 570
    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    .end local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :goto_0
    :try_start_2
    const-string v3, "Puid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->puid:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 579
    :goto_1
    return-object v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse JSON string - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 575
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    goto :goto_2

    .end local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :cond_2
    move-object v1, v2

    .end local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    goto :goto_0

    .end local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :cond_3
    move-object v1, v2

    .end local v2    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    .restart local v1    # "phoneId":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    goto :goto_1
.end method
