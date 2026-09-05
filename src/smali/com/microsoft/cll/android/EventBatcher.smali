.class public Lcom/microsoft/cll/android/EventBatcher;
.super Ljava/lang/Object;
.source "EventBatcher.java"


# instance fields
.field private eventString:Ljava/lang/StringBuilder;

.field private final newLine:Ljava/lang/String;

.field private numberOfEvents:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->newLine:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSIZEINBYTES:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v0}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->newLine:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    .line 22
    return-void
.end method


# virtual methods
.method protected canAddToBatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serializedEvent"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/microsoft/cll/android/EventBatcher;->size:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    sget-object v1, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXEVENTSPERPOST:Lcom/microsoft/cll/android/SettingsStore$Settings;

    .line 40
    invoke-static {v1}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBatchedEvents()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "batchedEvents":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 70
    iput v2, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    .line 71
    return-object v0
.end method

.method public tryAddingEventToBatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serializedEvent"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/EventBatcher;->canAddToBatch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/EventBatcher;->eventString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/cll/android/EventBatcher;->numberOfEvents:I

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method
