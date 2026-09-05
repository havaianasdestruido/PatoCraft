.class public final enum Lcom/microsoft/onlineid/internal/configuration/Experiment;
.super Ljava/lang/Enum;
.source "Experiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/configuration/Experiment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

.field public static final enum QRCodeExperiment:Lcom/microsoft/onlineid/internal/configuration/Experiment;


# instance fields
.field private final _experimentName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    const-string v1, "QRCodeExperiment"

    const-string v2, "MSAClient_Experiment1"

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/onlineid/internal/configuration/Experiment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->QRCodeExperiment:Lcom/microsoft/onlineid/internal/configuration/Experiment;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/configuration/Experiment;

    sget-object v1, Lcom/microsoft/onlineid/internal/configuration/Experiment;->QRCodeExperiment:Lcom/microsoft/onlineid/internal/configuration/Experiment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "experimentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static getExperimentList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const-string v0, ","

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Experiment;->values()[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/configuration/Experiment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/configuration/Experiment;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->$VALUES:[Lcom/microsoft/onlineid/internal/configuration/Experiment;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/configuration/Experiment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/configuration/Experiment;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Experiment;->_experimentName:Ljava/lang/String;

    return-object v0
.end method
