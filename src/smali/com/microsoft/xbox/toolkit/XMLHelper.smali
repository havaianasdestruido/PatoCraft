.class public Lcom/microsoft/xbox/toolkit/XMLHelper;
.super Ljava/lang/Object;
.source "XMLHelper.java"


# static fields
.field private static final XML_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static instance:Lcom/microsoft/xbox/toolkit/XMLHelper;


# instance fields
.field private serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/XMLHelper;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XMLHelper;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 23
    new-instance v0, Lorg/simpleframework/xml/convert/AnnotationStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;-><init>()V

    .line 24
    .local v0, "strategy":Lorg/simpleframework/xml/strategy/Strategy;
    new-instance v1, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 25
    return-void
.end method

.method public static instance()Lcom/microsoft/xbox/toolkit/XMLHelper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-object v0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 30
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 34
    :cond_0
    new-instance v3, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v3}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 36
    .local v3, "stopwatch":Lcom/microsoft/xbox/toolkit/TimeMonitor;
    const/4 v2, 0x0

    .line 39
    .local v2, "rv":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .local v0, "clsLoader":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 42
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    const/4 v5, 0x0

    invoke-interface {v4, p2, p1, v5}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 44
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 51
    return-object v2

    .line 44
    :catchall_0
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .end local v0    # "clsLoader":Ljava/lang/ClassLoader;
    .end local v2    # "rv":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 48
    .restart local v2    # "rv":Ljava/lang/Object;, "TT;"
    new-instance v4, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v6, 0x9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v7, v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v4
.end method

.method public save(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "output":Ljava/lang/Object;, "TT;"
    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 57
    .local v1, "stopwatch":Lcom/microsoft/xbox/toolkit/TimeMonitor;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 60
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v3, p1, v2}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v4, 0x9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v3
.end method

.method public save(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 6
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "output":Ljava/lang/Object;, "TT;"
    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 72
    .local v1, "stopwatch":Lcom/microsoft/xbox/toolkit/TimeMonitor;
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v2, p1, p2}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v4, 0x9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v2
.end method
