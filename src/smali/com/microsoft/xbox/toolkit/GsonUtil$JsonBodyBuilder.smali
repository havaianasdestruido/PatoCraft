.class public interface abstract Lcom/microsoft/xbox/toolkit/GsonUtil$JsonBodyBuilder;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/GsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JsonBodyBuilder"
.end annotation


# virtual methods
.method public abstract buildBody(Lcom/google/gson/stream/JsonWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
