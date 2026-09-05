.class public Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;
.super Ljava/lang/Object;
.source "WebTelemetryRecorder.java"


# static fields
.field private static final MAX_CHAR_COUNT:I = 0x3a98


# instance fields
.field private _charCount:I

.field private _events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _shouldRecord:Z

.field private _wereAllEventsCaptured:Z


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "shouldRecord"    # Z
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    .line 55
    iput v2, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    .line 57
    if-eqz p2, :cond_0

    const-string v1, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    .line 60
    const-string v1, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    .line 62
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "event":Ljava/lang/String;
    iget v2, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    goto :goto_0

    .line 69
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    .line 72
    :cond_1
    return-void
.end method

.method private canFitEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 122
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3a98

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasEvents()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequested()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    return v0
.end method

.method public recordEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_shouldRecord:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->canFitEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_charCount:I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropped web telemetry event of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/log/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string v0, "com.microsoft.onlineid.web_telemetry_events"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->getEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    const-string v0, "com.microsoft.onlineid.web_telemetry_all_events_captured"

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->wereAllEventsCaptured()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public wereAllEventsCaptured()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/microsoft/onlineid/internal/ui/WebTelemetryRecorder;->_wereAllEventsCaptured:Z

    return v0
.end method
