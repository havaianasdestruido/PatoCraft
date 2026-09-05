.class public Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/profile/ProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JsonParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method


# virtual methods
.method protected findName(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 4
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "expectedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 303
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected parseDisplayName(Landroid/util/JsonReader;)Ljava/lang/String;
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 212
    const-string v1, "Views"

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;->findName(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 216
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 217
    const-string v1, "Attributes"

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;->findName(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/internal/profile/ProfileManager$JsonParser;->readDisplayNameFromEntry(Landroid/util/JsonReader;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 223
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V

    .line 234
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V

    throw v1
.end method

.method protected readDisplayNameFromEntry(Landroid/util/JsonReader;)Ljava/lang/String;
    .locals 6
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 247
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "name":Ljava/lang/String;
    const-string v4, "Name"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_0
    const-string v4, "Value"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    .line 257
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v4, Lcom/microsoft/onlineid/internal/profile/ProfileManager$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v2}, Landroid/util/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 267
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 260
    :pswitch_0
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextNull()V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 265
    goto :goto_0

    .line 273
    .end local v2    # "token":Landroid/util/JsonToken;
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 276
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 278
    const-string v4, "PublicProfile.OrderedBasicName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
