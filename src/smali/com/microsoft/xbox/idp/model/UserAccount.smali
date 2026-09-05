.class public Lcom/microsoft/xbox/idp/model/UserAccount;
.super Ljava/lang/Object;
.source "UserAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/model/UserAccount$Address;
    }
.end annotation


# instance fields
.field public administeredConsoles:Ljava/lang/String;

.field public dateOfBirth:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public gamerTag:Ljava/lang/String;

.field public gamerTagChangeReason:Ljava/lang/String;

.field public homeAddressInfo:Lcom/microsoft/xbox/idp/model/UserAccount$Address;

.field public homeConsole:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public isAdult:Z

.field public lastName:Ljava/lang/String;

.field public legalCountry:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public midasConsole:Ljava/lang/String;

.field public msftOptin:Z

.field public ownerHash:Ljava/lang/String;

.field public ownerXuid:Ljava/lang/String;

.field public partnerOptin:Z

.field public touAcceptanceDate:Ljava/util/Date;

.field public userHash:Ljava/lang/String;

.field public userKey:Ljava/lang/String;

.field public userXuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .param p0, "gson"    # Lcom/google/gson/GsonBuilder;

    .prologue
    .line 45
    const-class v0, Ljava/util/Date;

    new-instance v1, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/model/serialization/UTCDateConverter$UTCDateConverterJSONDeserializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method
