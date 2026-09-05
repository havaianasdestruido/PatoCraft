.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$PageAction$Signin;
.super Ljava/lang/Object;
.source "UTCNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$PageAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signin"
.end annotation


# static fields
.field public static final AccountSuccess:Ljava/lang/String; = "Signin - Account acquired"

.field public static final Signin:Ljava/lang/String; = "Signin - Sign in"

.field public static final SigninStart:Ljava/lang/String; = "Signin - Sign in Start"

.field public static final TicketSuccess:Ljava/lang/String; = "Signin - Ticket acquired"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
