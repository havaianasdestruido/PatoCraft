.class public Lcom/microsoft/onlineid/internal/sso/exception/UnsupportedClientVersionException;
.super Lcom/microsoft/onlineid/exception/InternalException;
.source "UnsupportedClientVersionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/exception/InternalException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
