.class public Lcom/microsoft/onlineid/internal/Assertion;
.super Ljava/lang/Object;
.source "Assertion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Z)V
    .locals 1
    .param p0, "assertionExpression"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static check(ZLjava/lang/Object;)V
    .locals 1
    .param p0, "assertionExpression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 41
    if-nez p0, :cond_0

    invoke-static {}, Lcom/microsoft/onlineid/internal/configuration/Settings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 45
    :cond_0
    return-void
.end method
