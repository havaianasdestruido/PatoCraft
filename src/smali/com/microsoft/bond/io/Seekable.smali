.class public interface abstract Lcom/microsoft/bond/io/Seekable;
.super Ljava/lang/Object;
.source "Seekable.java"


# virtual methods
.method public abstract getPosition()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isSeekable()Z
.end method

.method public abstract setPosition(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPositionRelative(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
