.class public Lcom/microsoft/cll/android/CorrelationVector;
.super Ljava/lang/Object;
.source "CorrelationVector.java"


# instance fields
.field private final base64CharSet:Ljava/lang/String;

.field private baseVector:Ljava/lang/String;

.field private currentVector:I

.field private final id0Length:I

.field isInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->base64CharSet:Ljava/lang/String;

    .line 14
    const/16 v0, 0x10

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->id0Length:I

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    return-void
.end method

.method private CanExtend()Z
    .locals 6

    .prologue
    .line 31
    iget v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 34
    .local v0, "vectorSize":I
    iget-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v2}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private CanIncrement(I)Z
    .locals 6
    .param p1, "newVector"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    add-int/lit8 v2, p1, -0x1

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 52
    .local v0, "vectorSize":I
    iget-object v2, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v3}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 56
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private SeedCorrelationVector()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    const-string v2, ""

    .line 130
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 131
    .local v1, "r":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized Extend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->Init()V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/cll/android/CorrelationVector;->CanExtend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized Increment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->Init()V

    .line 97
    :cond_0
    iget v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    add-int/lit8 v0, v1, 0x1

    .line 99
    .local v0, "newVector":I
    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/CorrelationVector;->CanIncrement(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/cll/android/CorrelationVector;->GetValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 93
    .end local v0    # "newVector":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public Init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Lcom/microsoft/cll/android/CorrelationVector;->SeedCorrelationVector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    .line 23
    iput-boolean v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z

    .line 24
    return-void
.end method

.method IsValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vector"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/microsoft/cll/android/SettingsStore$Settings;->MAXCORRELATIONVECTORLENGTH:Lcom/microsoft/cll/android/SettingsStore$Settings;

    invoke-static {v3}, Lcom/microsoft/cll/android/SettingsStore;->getCllSettingsAsInt(Lcom/microsoft/cll/android/SettingsStore$Settings;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    const-string v0, "^[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]{16}(.[0-9]+)+$"

    .line 116
    .local v0, "validationPattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized SetValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "vector"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/CorrelationVector;->IsValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "lastDot":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->baseVector:Ljava/lang/String;

    .line 147
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->currentVector:I

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/cll/android/CorrelationVector;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "lastDot":I
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set invalid correlation vector value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
