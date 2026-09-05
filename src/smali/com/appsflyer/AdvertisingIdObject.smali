.class Lcom/appsflyer/AdvertisingIdObject;
.super Ljava/lang/Object;
.source "AdvertisingIdObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AdvertisingIdObject$IdType;
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private limitAdTracking:Z

.field private type:Lcom/appsflyer/AdvertisingIdObject$IdType;


# direct methods
.method constructor <init>(Lcom/appsflyer/AdvertisingIdObject$IdType;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Lcom/appsflyer/AdvertisingIdObject$IdType;
    .param p2, "advertisingId"    # Ljava/lang/String;
    .param p3, "limitAdTracking"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->type:Lcom/appsflyer/AdvertisingIdObject$IdType;

    .line 17
    iput-object p2, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/appsflyer/AdvertisingIdObject;->limitAdTracking:Z

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fromString"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "aidData":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 27
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/appsflyer/AdvertisingIdObject$IdType;->fromString(Ljava/lang/String;)Lcom/appsflyer/AdvertisingIdObject$IdType;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/AdvertisingIdObject;->type:Lcom/appsflyer/AdvertisingIdObject$IdType;

    .line 28
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    .line 29
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appsflyer/AdvertisingIdObject;->limitAdTracking:Z

    goto :goto_0
.end method


# virtual methods
.method getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lcom/appsflyer/AdvertisingIdObject$IdType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->type:Lcom/appsflyer/AdvertisingIdObject$IdType;

    return-object v0
.end method

.method isLimitAdTracking()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/appsflyer/AdvertisingIdObject;->limitAdTracking:Z

    return v0
.end method

.method isValid(Lcom/appsflyer/AdvertisingIdObject$IdType;)Z
    .locals 2
    .param p1, "type"    # Lcom/appsflyer/AdvertisingIdObject$IdType;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/appsflyer/AdvertisingIdObject$IdType;->access$000(Lcom/appsflyer/AdvertisingIdObject$IdType;)I

    move-result v0

    iget-object v1, p0, Lcom/appsflyer/AdvertisingIdObject;->type:Lcom/appsflyer/AdvertisingIdObject$IdType;

    invoke-static {v1}, Lcom/appsflyer/AdvertisingIdObject$IdType;->access$000(Lcom/appsflyer/AdvertisingIdObject$IdType;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAdvertisingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "advertisingId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method setLimitAdTracking(Z)V
    .locals 0
    .param p1, "limitAdTracking"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/appsflyer/AdvertisingIdObject;->limitAdTracking:Z

    .line 47
    return-void
.end method

.method setType(Lcom/appsflyer/AdvertisingIdObject$IdType;)V
    .locals 0
    .param p1, "type"    # Lcom/appsflyer/AdvertisingIdObject$IdType;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->type:Lcom/appsflyer/AdvertisingIdObject$IdType;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appsflyer/AdvertisingIdObject;->advertisingId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/appsflyer/AdvertisingIdObject;->limitAdTracking:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
