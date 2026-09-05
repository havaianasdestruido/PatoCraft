.class public Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$PageAction$Signup;
.super Ljava/lang/Object;
.source "UTCNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCNames$PageAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Signup"
.end annotation


# static fields
.field public static final ChangeUser:Ljava/lang/String; = "Signup - Signin with different user"

.field public static final ClaimGamerTag:Ljava/lang/String; = "Signup - Claim gamertag"

.field public static final ClearGamerTagText:Ljava/lang/String; = "Signup - Clear gamertag text"

.field public static final SearchGamertag:Ljava/lang/String; = "Signup - Search for gamertag"

.field public static final SelectSuggestedGamerTag:Ljava/lang/String; = "Signup - Select suggested gamertag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
