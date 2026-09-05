.class public Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;
.super Ljava/lang/Object;
.source "ShortCircuitProfileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field public addSearchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public deleteSearchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public hasSearchableApplications:Z

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public searchable:Z

.field public searchableApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public suggestedVerifyMethod:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 373
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 375
    new-instance v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;

    invoke-direct {v6}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;-><init>()V

    .line 376
    .local v6, "info":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;
    const/4 v4, 0x0

    .line 379
    .local v4, "gotValue":Z
    :try_start_0
    const-string v8, "_type"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 380
    const-string v8, "_type"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->type:Ljava/lang/String;

    .line 381
    const/4 v4, 0x1

    .line 384
    :cond_0
    const-string v8, "Country"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 385
    const-string v8, "Country"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->country:Ljava/lang/String;

    .line 386
    const/4 v4, 0x1

    .line 389
    :cond_1
    const-string v8, "CountryName"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 390
    const-string v8, "CountryName"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->countryName:Ljava/lang/String;

    .line 391
    const/4 v4, 0x1

    .line 394
    :cond_2
    const-string v8, "Label"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 395
    const-string v8, "Label"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->label:Ljava/lang/String;

    .line 396
    const/4 v4, 0x1

    .line 399
    :cond_3
    const-string v8, "Source"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 400
    const-string v8, "Source"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->source:Ljava/lang/String;

    .line 401
    const/4 v4, 0x1

    .line 404
    :cond_4
    const-string v8, "State"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 405
    const-string v8, "State"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->state:Ljava/lang/String;

    .line 406
    const/4 v4, 0x1

    .line 409
    :cond_5
    const-string v8, "SuggestedVerifyMethod"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 410
    const-string v8, "SuggestedVerifyMethod"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->suggestedVerifyMethod:Ljava/lang/String;

    .line 411
    const/4 v4, 0x1

    .line 414
    :cond_6
    const-string v8, "Name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 415
    const-string v8, "Name"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    .line 416
    const/4 v4, 0x1

    .line 419
    :cond_7
    const-string v8, "SearchableApplications"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 420
    const-string v8, "SearchableApplications"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 421
    .local v2, "appsJson":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    .line 422
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 423
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    .local v1, "appJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_8

    .line 425
    const-string v8, "Name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 427
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;-><init>()V

    .line 428
    .local v0, "app":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;
    iput-object v7, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;->name:Ljava/lang/String;

    .line 429
    iget-object v8, v6, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0    # "app":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "appJson":Lorg/json/JSONObject;
    .end local v2    # "appsJson":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 435
    .local v3, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse JSON string - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 438
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_9
    if-nez v4, :cond_a

    .line 439
    const/4 v6, 0x0

    .line 442
    :cond_a
    return-object v6
.end method


# virtual methods
.method public isVerified(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    .line 356
    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "phoneState":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    .line 360
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;

    .end local v1    # "phoneState":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;-><init>()V

    .line 362
    .restart local v1    # "phoneState":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->state:Ljava/lang/String;

    const-string v3, "Verified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->isVerified:Z

    .line 363
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneInfo;->searchableApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;

    .line 364
    .local v0, "app":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;
    iget-object v3, v0, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;->name:Ljava/lang/String;

    const-string v4, "XBOX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$PhoneState;->hasXboxApplication:Z

    goto :goto_0

    .line 369
    .end local v0    # "app":Lcom/microsoft/xbox/service/model/friendfinder/ShortCircuitProfileMessage$Application;
    :cond_2
    return-object v1
.end method
