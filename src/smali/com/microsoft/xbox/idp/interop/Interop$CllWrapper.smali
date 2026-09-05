.class Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CllWrapper"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final cll:Lcom/microsoft/cll/android/AndroidCll;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/AndroidCll;Landroid/content/Context;)V
    .locals 0
    .param p1, "cll"    # Lcom/microsoft/cll/android/AndroidCll;
    .param p2, "appContext"    # Landroid/content/Context;

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->cll:Lcom/microsoft/cll/android/AndroidCll;

    .line 546
    iput-object p2, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->appContext:Landroid/content/Context;

    .line 547
    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCll()Lcom/microsoft/cll/android/AndroidCll;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$CllWrapper;->cll:Lcom/microsoft/cll/android/AndroidCll;

    return-object v0
.end method
