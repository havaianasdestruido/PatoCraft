.class public interface abstract Lcom/microsoft/xbox/authenticate/IDelegateKeyService;
.super Ljava/lang/Object;
.source "IDelegateKeyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/authenticate/IDelegateKeyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestDelegateRPSTicketSilently()Lcom/microsoft/xbox/authenticate/DelegateRPSTicketResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
