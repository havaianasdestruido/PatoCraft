.class public final enum Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
.super Ljava/lang/Enum;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ApiRequest$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

.field public static final enum WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "AccountName"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 39
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "AccountPuid"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 44
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "ClientPackageName"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 49
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "ClientStateBundle"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "CobrandingId"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 59
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "Continuation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 64
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "FlowToken"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 73
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "IsSdkRequest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 79
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "ResultReceiver"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 84
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "Scope"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 89
    new-instance v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    const-string v1, "WebFlowTelemetryRequested"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    .line 29
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->AccountPuid:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientPackageName:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ClientStateBundle:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->CobrandingId:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Continuation:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->FlowToken:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->IsSdkRequest:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->ResultReceiver:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->Scope:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->WebFlowTelemetryRequested:Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ApiRequest$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.microsoft.msa.authenticator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ApiRequest$Extras;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
