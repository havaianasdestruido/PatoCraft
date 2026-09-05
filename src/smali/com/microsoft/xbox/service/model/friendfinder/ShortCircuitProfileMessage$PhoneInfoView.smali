.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
.super Ljava/lang/Object;
.source "ShortCircuitProfileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfoView"
.end annotation


# instance fields
.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public id:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .locals 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 601
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 602
    const/4 v5, 0x0

    .line 604
    .local v5, "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :try_start_0
    const-string v7, "Id"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 605
    if-nez v5, :cond_0

    .line 606
    new-instance v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;

    invoke-direct {v6}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;-><init>()V

    .end local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .local v6, "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    move-object v5, v6

    .line 608
    .end local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :cond_0
    const-string v7, "Id"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 609
    .local v4, "idJson":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;->parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;

    move-result-object v7

    iput-object v7, v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->id:Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneId;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "idJson":Lorg/json/JSONObject;
    :cond_1
    move-object v6, v5

    .line 612
    .end local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :try_start_1
    const-string v7, "Attributes"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 613
    if-nez v6, :cond_4

    .line 614
    new-instance v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;

    invoke-direct {v5}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 616
    .end local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :goto_0
    :try_start_2
    const-string v7, "Attributes"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 617
    .local v1, "attributesJson":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    .line 618
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 619
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;

    move-result-object v0

    .line 620
    .local v0, "attribute":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
    if-eqz v0, :cond_2

    .line 621
    iget-object v7, v5, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "attribute":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
    .end local v1    # "attributesJson":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 627
    .local v2, "e":Lorg/json/JSONException;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse JSON string - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 630
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_3
    return-object v5

    .line 626
    .end local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    goto :goto_2

    .end local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :cond_4
    move-object v5, v6

    .end local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    goto :goto_0

    .end local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    :cond_5
    move-object v5, v6

    .end local v6    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    .restart local v5    # "view":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;
    goto :goto_3
.end method


# virtual methods
.method public isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoView;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;

    .line 590
    .local v0, "attribute":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;->isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    move-result-object v1

    .line 591
    .local v1, "phoneState":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    if-eqz v1, :cond_0

    .line 597
    .end local v0    # "attribute":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfoAttribute;
    .end local v1    # "phoneState":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
