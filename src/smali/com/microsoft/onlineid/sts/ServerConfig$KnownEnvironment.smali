.class public final enum Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
.super Ljava/lang/Enum;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnownEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

.field public static final enum Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

.field public static final enum Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;


# instance fields
.field private final _environment:Lcom/microsoft/onlineid/internal/configuration/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    const-string v1, "Production"

    const-string v2, "production"

    const-string v3, "https://go.microsoft.com/fwlink/?LinkId=398559"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    .line 38
    new-instance v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    const-string v1, "Int"

    const-string v2, "int"

    const-string v3, "https://go.microsoft.com/fwlink/?LinkId=398560"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Production:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->Int:Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    :try_start_0
    new-instance v1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p3, v2}, Lcom/microsoft/onlineid/internal/configuration/Environment;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->_environment:Lcom/microsoft/onlineid/internal/configuration/Environment;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid known environment URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->$VALUES:[Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;

    return-object v0
.end method


# virtual methods
.method public getEnvironment()Lcom/microsoft/onlineid/internal/configuration/Environment;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ServerConfig$KnownEnvironment;->_environment:Lcom/microsoft/onlineid/internal/configuration/Environment;

    return-object v0
.end method
