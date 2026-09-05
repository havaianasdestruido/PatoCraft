.class public Lcom/microsoft/onlineid/internal/sso/client/ClientConfigUpdateNeededException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "ClientConfigUpdateNeededException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
