.class public final enum Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
.super Ljava/lang/Enum;
.source "MAAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/anim/MAAS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MAASAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

.field public static final enum ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

.field public static final enum ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    const-string v1, "ANIMATE_IN"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    const-string v1, "ANIMATE_OUT"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    return-object v0
.end method
