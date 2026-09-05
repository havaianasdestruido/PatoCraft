.class public interface abstract Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob$Callbacks;
.super Ljava/lang/Object;
.source "DelegatedAuthJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/Exception;)V
.end method

.method public abstract onTicketAcquired(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;Ljava/lang/String;)V
.end method

.method public abstract onUiNeeded(Lcom/microsoft/xbox/idp/jobs/DelegatedAuthJob;)V
.end method
