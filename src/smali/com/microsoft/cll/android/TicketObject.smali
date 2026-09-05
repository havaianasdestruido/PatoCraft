.class public Lcom/microsoft/cll/android/TicketObject;
.super Ljava/lang/Object;
.source "TicketObject.java"


# instance fields
.field public hasDeviceClaims:Z

.field public ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ticket"    # Ljava/lang/String;
    .param p2, "hasDeviceClaims"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/microsoft/cll/android/TicketObject;->ticket:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/microsoft/cll/android/TicketObject;->hasDeviceClaims:Z

    .line 11
    return-void
.end method
