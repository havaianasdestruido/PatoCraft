.class final Lcom/microsoft/onlineid/sts/FlightManager$1;
.super Ljava/lang/Object;
.source "FlightManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/sts/FlightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)I
    .locals 2
    .param p1, "x"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;
    .param p2, "y"    # Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;->getPuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    check-cast p2, Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/FlightManager$1;->compare(Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;Lcom/microsoft/onlineid/sts/AuthenticatorUserAccount;)I

    move-result v0

    return v0
.end method
