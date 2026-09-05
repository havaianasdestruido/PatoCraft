.class public Lcom/microsoft/xbox/idp/services/EndpointsFactory;
.super Ljava/lang/Object;
.source "EndpointsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/microsoft/xbox/idp/services/Endpoints;
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/microsoft/xbox/idp/services/EndpointsFactory$1;->$SwitchMap$com$microsoft$xbox$idp$services$Endpoints$Type:[I

    sget-object v1, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/microsoft/xbox/idp/services/EndpointsProd;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/services/EndpointsProd;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_1
    new-instance v0, Lcom/microsoft/xbox/idp/services/EndpointsDnet;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/services/EndpointsDnet;-><init>()V

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
