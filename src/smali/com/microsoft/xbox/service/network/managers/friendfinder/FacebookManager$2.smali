.class Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;->this$0:Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 92
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 84
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager$2;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
