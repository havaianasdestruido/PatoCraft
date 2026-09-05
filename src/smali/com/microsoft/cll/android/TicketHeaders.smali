.class public Lcom/microsoft/cll/android/TicketHeaders;
.super Ljava/lang/Object;
.source "TicketHeaders.java"


# instance fields
.field authXToken:Ljava/lang/String;

.field msaDeviceTicket:Ljava/lang/String;

.field xtokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
