.class public Lcom/microsoft/cll/android/EventQueueWriter;
.super Ljava/lang/Object;
.source "EventQueueWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    }
.end annotation


# static fields
.field private static backoffSeconds:I

.field protected static future:Ljava/util/concurrent/ScheduledFuture;

.field private static retryAfterBackoffSeconds:I

.field protected static running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final batcher:Lcom/microsoft/cll/android/EventBatcher;

.field private final clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

.field private final cllEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;"
        }
    .end annotation
.end field

.field private compressor:Lcom/microsoft/cll/android/EventCompressor;

.field private endpoint:Ljava/net/URL;

.field private final event:Lcom/microsoft/cll/android/SerializedEvent;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private handler:Lcom/microsoft/cll/android/EventHandler;

.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/microsoft/cll/android/ILogger;

.field private final random:Ljava/util/Random;

.field private removedStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Lcom/microsoft/cll/android/EventSender;

.field private final storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

.field private final ticketManager:Lcom/microsoft/cll/android/TicketManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    sput v1, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    .line 24
    sput v1, Lcom/microsoft/cll/android/EventQueueWriter;->retryAfterBackoffSeconds:I

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/EventHandler;Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/URL;
    .param p2, "event"    # Lcom/microsoft/cll/android/SerializedEvent;
    .param p4, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p6, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p7, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p8, "handler"    # Lcom/microsoft/cll/android/EventHandler;
    .param p9, "ticketCallback"    # Lcom/microsoft/cll/android/ITicketCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/microsoft/cll/android/SerializedEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/microsoft/cll/android/EventHandler;",
            "Lcom/microsoft/cll/android/ITicketCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cllEvents":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/ICllEvents;>;"
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "AndroidCll-EventQueueWriter"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    .line 75
    iput-object p5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->event:Lcom/microsoft/cll/android/SerializedEvent;

    .line 77
    iput-object p3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    .line 78
    iput-object p6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 79
    iput-object p9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 80
    new-instance v0, Lcom/microsoft/cll/android/EventSender;

    invoke-direct {v0, p1, p4, p6}, Lcom/microsoft/cll/android/EventSender;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    .line 81
    iput-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    .line 82
    iput-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    .line 83
    iput-object p7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    iput-object p4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 85
    iput-object p8, p0, Lcom/microsoft/cll/android/EventQueueWriter;->handler:Lcom/microsoft/cll/android/EventHandler;

    .line 86
    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    .line 87
    new-instance v0, Lcom/microsoft/cll/android/TicketManager;

    invoke-direct {v0, p9, p6}, Lcom/microsoft/cll/android/TicketManager;-><init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    .line 89
    invoke-virtual {p4}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/URL;
    .param p3, "clientTelemetry"    # Lcom/microsoft/cll/android/ClientTelemetry;
    .param p5, "logger"    # Lcom/microsoft/cll/android/ILogger;
    .param p6, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p7, "ticketCallback"    # Lcom/microsoft/cll/android/ITicketCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/IStorage;",
            ">;",
            "Lcom/microsoft/cll/android/ClientTelemetry;",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/cll/android/ICllEvents;",
            ">;",
            "Lcom/microsoft/cll/android/ILogger;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/microsoft/cll/android/ITicketCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/IStorage;>;"
    .local p4, "cllEvents":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/cll/android/ICllEvents;>;"
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "AndroidCll-EventQueueWriter"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    .line 52
    iput-object p4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    .line 54
    iput-object p5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    .line 55
    iput-object p7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    .line 56
    new-instance v0, Lcom/microsoft/cll/android/EventBatcher;

    invoke-direct {v0}, Lcom/microsoft/cll/android/EventBatcher;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    .line 57
    new-instance v0, Lcom/microsoft/cll/android/EventSender;

    invoke-direct {v0, p1, p3, p5}, Lcom/microsoft/cll/android/EventSender;-><init>(Ljava/net/URL;Lcom/microsoft/cll/android/ClientTelemetry;Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    .line 58
    new-instance v0, Lcom/microsoft/cll/android/EventCompressor;

    invoke-direct {v0, p5}, Lcom/microsoft/cll/android/EventCompressor;-><init>(Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->compressor:Lcom/microsoft/cll/android/EventCompressor;

    .line 59
    iput-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->event:Lcom/microsoft/cll/android/SerializedEvent;

    .line 60
    iput-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    .line 61
    iput-object p6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    iput-object p3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    .line 63
    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/microsoft/cll/android/TicketManager;

    invoke-direct {v0, p7, p5}, Lcom/microsoft/cll/android/TicketManager;-><init>(Lcom/microsoft/cll/android/ITicketCallback;Lcom/microsoft/cll/android/ILogger;)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    .line 66
    return-void
.end method

.method private cancelBackoff()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 312
    const/4 v0, 0x0

    sput v0, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    .line 313
    return-void
.end method

.method private getEventData(Ljava/lang/String;)[B
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 492
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRunningThreadCount()I
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private preValidateTickets(Lcom/microsoft/cll/android/TicketHeaders;)Z
    .locals 5
    .param p1, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;

    .prologue
    const/4 v2, 0x0

    .line 417
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 419
    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->xtokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    .local v0, "ticket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    move v1, v2

    .line 440
    .end local v0    # "ticket":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 428
    :cond_1
    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->authXToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 430
    goto :goto_0

    .line 434
    :cond_3
    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/microsoft/cll/android/TicketHeaders;->msaDeviceTicket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 436
    goto :goto_0

    .line 440
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .locals 10
    .param p1, "batchedEvents"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/microsoft/cll/android/IStorage;

    .prologue
    const/16 v9, 0x191

    .line 317
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    const-string v8, "Sending Batch of events"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v6, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    .line 381
    :goto_0
    return-object v6

    .line 326
    :cond_0
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    const-string v8, "Compressing events"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v2, 0x1

    .line 328
    .local v2, "isCompressed":Z
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->compressor:Lcom/microsoft/cll/android/EventCompressor;

    invoke-virtual {v6, p1}, Lcom/microsoft/cll/android/EventCompressor;->compress(Ljava/lang/String;)[B

    move-result-object v1

    .line 329
    .local v1, "eventsData":[B
    if-nez v1, :cond_1

    .line 332
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/EventQueueWriter;->getEventData(Ljava/lang/String;)[B

    move-result-object v1

    .line 333
    const/4 v2, 0x0

    .line 336
    :cond_1
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v5

    .line 337
    .local v5, "ticketHeaders":Lcom/microsoft/cll/android/TicketHeaders;
    const/4 v3, 0x0

    .line 341
    .local v3, "sendCompleted":Z
    :try_start_0
    invoke-direct {p0, v1, v2, v5}, Lcom/microsoft/cll/android/EventQueueWriter;->sendRequest([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v4

    .line 343
    .local v4, "sendErrorCode":I
    if-ne v4, v9, :cond_2

    .line 348
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    const-string v8, "We got a 401 while sending the events, refreshing the tokens and trying again"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v5

    .line 351
    invoke-direct {p0, v1, v2, v5}, Lcom/microsoft/cll/android/EventQueueWriter;->sendRequest([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v4

    .line 353
    if-ne v4, v9, :cond_2

    .line 355
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    const-string v8, "After refreshing the tokens we still got a 401. Most likely we couldn\'t get new tokens so we will keep these events on disk and try to get new tokens later"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_2
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_3

    const/16 v6, 0x190

    if-ne v4, v6, :cond_4

    .line 366
    :cond_3
    const/4 v3, 0x1

    .line 374
    .end local v4    # "sendErrorCode":I
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 376
    sget-object v6, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot send event: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    sget-object v6, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    goto :goto_0
.end method

.method private sendInternal()Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .locals 11

    .prologue
    .line 230
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/cll/android/IStorage;

    .line 232
    .local v5, "storage":Lcom/microsoft/cll/android/IStorage;
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    sget-object v4, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    .line 306
    .end local v5    # "storage":Lcom/microsoft/cll/android/IStorage;
    :cond_0
    :goto_1
    return-object v4

    .line 238
    .restart local v5    # "storage":Lcom/microsoft/cll/android/IStorage;
    :cond_1
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v6}, Lcom/microsoft/cll/android/TicketManager;->clean()V

    .line 240
    invoke-interface {v5}, Lcom/microsoft/cll/android/IStorage;->drain()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/cll/android/Tuple;

    .line 243
    .local v3, "event":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    iget-object v6, v3, Lcom/microsoft/cll/android/Tuple;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-virtual {v9, v6}, Lcom/microsoft/cll/android/TicketManager;->addTickets(Ljava/util/List;)V

    .line 245
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    invoke-virtual {v6}, Lcom/microsoft/cll/android/ClientTelemetry;->IncrementEventsQueuedForUpload()V

    .line 248
    iget-object v6, v3, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v9, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v9}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v9

    if-le v6, v9, :cond_3

    .line 250
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v9, "AndroidCll-EventQueueWriter"

    const-string v10, "Dropping event because it is too large."

    invoke-interface {v6, v9, v10}, Lcom/microsoft/cll/android/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/ICllEvents;

    .line 256
    .local v1, "cllEvent":Lcom/microsoft/cll/android/ICllEvents;
    iget-object v6, v3, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/microsoft/cll/android/ICllEvents;->eventDropped(Ljava/lang/String;)V

    goto :goto_2

    .line 262
    .end local v1    # "cllEvent":Lcom/microsoft/cll/android/ICllEvents;
    :cond_3
    iget-object v9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    iget-object v6, v3, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/microsoft/cll/android/EventBatcher;->tryAddingEventToBatch(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 265
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v9, "AndroidCll-EventQueueWriter"

    const-string v10, "Got a full batch, preparing to send"

    invoke-interface {v6, v9, v10}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    invoke-virtual {v6}, Lcom/microsoft/cll/android/EventBatcher;->getBatchedEvents()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "batchedEvents":Ljava/lang/String;
    iget-object v9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    iget-object v6, v3, Lcom/microsoft/cll/android/Tuple;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/microsoft/cll/android/EventBatcher;->tryAddingEventToBatch(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 270
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v9, "AndroidCll-EventQueueWriter"

    const-string v10, "Could not add events to an empty batch"

    invoke-interface {v6, v9, v10}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/microsoft/cll/android/EventQueueWriter;->sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v4

    .line 275
    .local v4, "sendResult":Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    sget-object v6, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-ne v4, v6, :cond_2

    .line 277
    invoke-interface {v5}, Lcom/microsoft/cll/android/IStorage;->close()V

    goto/16 :goto_1

    .line 284
    .end local v0    # "batchedEvents":Ljava/lang/String;
    .end local v3    # "event":Lcom/microsoft/cll/android/Tuple;, "Lcom/microsoft/cll/android/Tuple<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "sendResult":Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    :cond_5
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v8, "AndroidCll-EventQueueWriter"

    const-string v9, "Preparing to send"

    invoke-interface {v6, v8, v9}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->batcher:Lcom/microsoft/cll/android/EventBatcher;

    invoke-virtual {v6}, Lcom/microsoft/cll/android/EventBatcher;->getBatchedEvents()Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0    # "batchedEvents":Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/microsoft/cll/android/EventQueueWriter;->sendBatch(Ljava/lang/String;Lcom/microsoft/cll/android/IStorage;)Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v4

    .line 287
    .restart local v4    # "sendResult":Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    invoke-interface {v5}, Lcom/microsoft/cll/android/IStorage;->close()V

    .line 289
    sget-object v6, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->ERROR:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-eq v4, v6, :cond_0

    .line 296
    invoke-interface {v5}, Lcom/microsoft/cll/android/IStorage;->discard()V

    goto/16 :goto_0

    .line 299
    .end local v0    # "batchedEvents":Ljava/lang/String;
    .end local v4    # "sendResult":Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    .end local v5    # "storage":Lcom/microsoft/cll/android/IStorage;
    :cond_6
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v7, "AndroidCll-EventQueueWriter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v9, v9, Lcom/microsoft/cll/android/ClientTelemetry;->snapshot:LMs/Telemetry/CllHeartBeat;

    invoke-virtual {v9}, LMs/Telemetry/CllHeartBeat;->getEventsQueued()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/cll/android/ICllEvents;

    .line 303
    .local v2, "event":Lcom/microsoft/cll/android/ICllEvents;
    invoke-interface {v2}, Lcom/microsoft/cll/android/ICllEvents;->sendComplete()V

    goto :goto_3

    .line 306
    .end local v2    # "event":Lcom/microsoft/cll/android/ICllEvents;
    :cond_7
    sget-object v4, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    goto/16 :goto_1
.end method

.method private sendRequest([BZLcom/microsoft/cll/android/TicketHeaders;)I
    .locals 2
    .param p1, "body"    # [B
    .param p2, "isCompressed"    # Z
    .param p3, "ticketHeaders"    # Lcom/microsoft/cll/android/TicketHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0, p3}, Lcom/microsoft/cll/android/EventQueueWriter;->preValidateTickets(Lcom/microsoft/cll/android/TicketHeaders;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/16 v1, 0x191

    .line 407
    :goto_0
    return v1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/cll/android/EventSender;->sendEvent([BZLcom/microsoft/cll/android/TicketHeaders;)Lcom/microsoft/cll/android/EventSendResult;

    move-result-object v0

    .line 402
    .local v0, "sendResult":Lcom/microsoft/cll/android/EventSendResult;
    iget v1, v0, Lcom/microsoft/cll/android/EventSendResult;->retryAfterSeconds:I

    if-lez v1, :cond_1

    .line 404
    iget v1, v0, Lcom/microsoft/cll/android/EventSendResult;->retryAfterSeconds:I

    sput v1, Lcom/microsoft/cll/android/EventQueueWriter;->retryAfterBackoffSeconds:I

    .line 407
    :cond_1
    iget v1, v0, Lcom/microsoft/cll/android/EventSendResult;->responseCode:I

    goto :goto_0
.end method


# virtual methods
.method generateBackoffInterval()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 452
    const/4 v1, 0x0

    .line 455
    .local v1, "interval":I
    sget v4, Lcom/microsoft/cll/android/EventQueueWriter;->retryAfterBackoffSeconds:I

    if-lez v4, :cond_1

    .line 457
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-EventQueueWriter"

    const-string v6, "Using backoff interval from Retry-After header."

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget v1, Lcom/microsoft/cll/android/EventQueueWriter;->retryAfterBackoffSeconds:I

    .line 460
    sput v7, Lcom/microsoft/cll/android/EventQueueWriter;->retryAfterBackoffSeconds:I

    .line 487
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    sget-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->CONSTANTFORRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    .line 465
    .local v3, "startInterval":I
    sget-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXRETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    .line 466
    .local v2, "maxInterval":I
    sget-object v4, Lcom/microsoft/cll/android/SettingsStore$Settings;->BASERETRYPERIOD:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v4}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    .line 468
    .local v0, "exponentBase":I
    sget v4, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    if-nez v4, :cond_2

    .line 470
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    .line 473
    :cond_2
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v4}, Lcom/microsoft/cll/android/ILogger;->getVerbosity()Lcom/microsoft/cll/android/Verbosity;

    move-result-object v4

    sget-object v5, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v4, v5, :cond_3

    .line 475
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-EventQueueWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generating new backoff interval using \"Random.nextInt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") seconds\" formula."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_3
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->random:Ljava/util/Random;

    sget v5, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 479
    sget v4, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    mul-int/2addr v4, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lcom/microsoft/cll/android/EventQueueWriter;->backoffSeconds:I

    .line 481
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    invoke-interface {v4}, Lcom/microsoft/cll/android/ILogger;->getVerbosity()Lcom/microsoft/cll/android/Verbosity;

    move-result-object v4

    sget-object v5, Lcom/microsoft/cll/android/Verbosity;->INFO:Lcom/microsoft/cll/android/Verbosity;

    if-ne v4, v5, :cond_0

    .line 483
    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v5, "AndroidCll-EventQueueWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The generated backoff interval is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 101
    :try_start_0
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 103
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventQueueWriter"

    const-string v2, "Starting upload"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->event:Lcom/microsoft/cll/android/SerializedEvent;

    invoke-virtual {p0, v0}, Lcom/microsoft/cll/android/EventQueueWriter;->sendRealTimeEvent(Lcom/microsoft/cll/android/SerializedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_1
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v1, "AndroidCll-EventQueueWriter"

    const-string v2, "Skipping send, event sending is already in progress on different thread."

    invoke-interface {v0, v1, v2}, Lcom/microsoft/cll/android/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    goto :goto_0

    .line 121
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->send()V

    .line 122
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    sget-object v0, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/microsoft/cll/android/EventQueueWriter;->s_threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    throw v0
.end method

.method protected send()V
    .locals 10

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->sendInternal()Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    move-result-object v9

    .line 200
    .local v9, "sendResult":Lcom/microsoft/cll/android/EventQueueWriter$SendResult;
    sget-object v1, Lcom/microsoft/cll/android/EventQueueWriter$SendResult;->SUCCESS:Lcom/microsoft/cll/android/EventQueueWriter$SendResult;

    if-ne v9, v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->cancelBackoff()V

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->generateBackoffInterval()I

    move-result v8

    .line 210
    .local v8, "interval":I
    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->removedStorages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 212
    new-instance v0, Lcom/microsoft/cll/android/EventQueueWriter;

    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->endpoint:Ljava/net/URL;

    iget-object v2, p0, Lcom/microsoft/cll/android/EventQueueWriter;->storages:Ljava/util/List;

    iget-object v3, p0, Lcom/microsoft/cll/android/EventQueueWriter;->clientTelemetry:Lcom/microsoft/cll/android/ClientTelemetry;

    iget-object v4, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    iget-object v5, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    iget-object v6, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketCallback:Lcom/microsoft/cll/android/ITicketCallback;

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/cll/android/EventQueueWriter;-><init>(Ljava/net/URL;Ljava/util/List;Lcom/microsoft/cll/android/ClientTelemetry;Ljava/util/List;Lcom/microsoft/cll/android/ILogger;Ljava/util/concurrent/ScheduledExecutorService;Lcom/microsoft/cll/android/ITicketCallback;)V

    .line 213
    .local v0, "eventQueueWriter":Lcom/microsoft/cll/android/EventQueueWriter;
    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    invoke-virtual {v0, v1}, Lcom/microsoft/cll/android/EventQueueWriter;->setSender(Lcom/microsoft/cll/android/EventSender;)V

    .line 214
    iget-object v1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, v8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lcom/microsoft/cll/android/EventQueueWriter;->future:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method protected sendRealTimeEvent(Lcom/microsoft/cll/android/SerializedEvent;)V
    .locals 10
    .param p1, "singleEvent"    # Lcom/microsoft/cll/android/SerializedEvent;

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/microsoft/cll/android/SerializedEvent;->getSerializedData()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "eventString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v8}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v8

    if-le v7, v8, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v4, 0x0

    .line 146
    .local v4, "sendCompleted":Z
    :try_start_0
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    invoke-virtual {v7}, Lcom/microsoft/cll/android/TicketManager;->clean()V

    .line 147
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    iget-object v8, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/microsoft/cll/android/TicketManager;->addTickets(Ljava/util/List;)V

    .line 148
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v6

    .line 149
    .local v6, "ticketHeaders":Lcom/microsoft/cll/android/TicketHeaders;
    invoke-direct {p0, v3}, Lcom/microsoft/cll/android/EventQueueWriter;->getEventData(Ljava/lang/String;)[B

    move-result-object v2

    .line 151
    .local v2, "eventData":[B
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, v6}, Lcom/microsoft/cll/android/EventQueueWriter;->sendRequest([BZLcom/microsoft/cll/android/TicketHeaders;)I

    move-result v5

    .line 153
    .local v5, "sendErrorCode":I
    const/16 v7, 0x191

    if-ne v5, v7, :cond_2

    .line 158
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ticketManager:Lcom/microsoft/cll/android/TicketManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/microsoft/cll/android/TicketManager;->getHeaders(Z)Lcom/microsoft/cll/android/TicketHeaders;

    move-result-object v6

    .line 161
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, v6}, Lcom/microsoft/cll/android/EventQueueWriter;->sendRequest([BZLcom/microsoft/cll/android/TicketHeaders;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 168
    :cond_2
    const/16 v7, 0xc8

    if-eq v5, v7, :cond_3

    const/16 v7, 0x190

    if-ne v5, v7, :cond_4

    .line 170
    :cond_3
    const/4 v4, 0x1

    .line 180
    .end local v2    # "eventData":[B
    .end local v5    # "sendErrorCode":I
    .end local v6    # "ticketHeaders":Lcom/microsoft/cll/android/TicketHeaders;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 183
    invoke-direct {p0}, Lcom/microsoft/cll/android/EventQueueWriter;->cancelBackoff()V

    .line 185
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->cllEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/cll/android/ICllEvents;

    .line 187
    .local v1, "event":Lcom/microsoft/cll/android/ICllEvents;
    invoke-interface {v1}, Lcom/microsoft/cll/android/ICllEvents;->sendComplete()V

    goto :goto_2

    .line 173
    .end local v1    # "event":Lcom/microsoft/cll/android/ICllEvents;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->logger:Lcom/microsoft/cll/android/ILogger;

    const-string v8, "AndroidCll-EventQueueWriter"

    const-string v9, "Cannot send event"

    invoke-interface {v7, v8, v9}, Lcom/microsoft/cll/android/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    iget-object v7, p0, Lcom/microsoft/cll/android/EventQueueWriter;->handler:Lcom/microsoft/cll/android/EventHandler;

    iget-object v8, p0, Lcom/microsoft/cll/android/EventQueueWriter;->ids:Ljava/util/List;

    invoke-virtual {v7, p1, v8}, Lcom/microsoft/cll/android/EventHandler;->addToStorage(Lcom/microsoft/cll/android/SerializedEvent;Ljava/util/List;)Z

    goto :goto_0
.end method

.method setSender(Lcom/microsoft/cll/android/EventSender;)V
    .locals 0
    .param p1, "sender"    # Lcom/microsoft/cll/android/EventSender;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/microsoft/cll/android/EventQueueWriter;->sender:Lcom/microsoft/cll/android/EventSender;

    .line 94
    return-void
.end method
