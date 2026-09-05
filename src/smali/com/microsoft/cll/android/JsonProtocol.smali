.class public Lcom/microsoft/cll/android/JsonProtocol;
.super Lcom/microsoft/bond/ProtocolWriter;
.source "JsonProtocol.java"


# static fields
.field private static final ESCAPE_CHAR:C = '\\'

.field private static final HEX_CHARACTERS:[C

.field private static final NUMERIC_ESCAPE_STRING:Ljava/lang/String; = "\\u"

.field private static final inContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final keyTypes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/microsoft/bond/BondDataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final valueTypes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/microsoft/bond/BondDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final containerIsTyped:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private inContainer:Z

.field private isKey:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    .line 22
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    .line 23
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolWriter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    .line 38
    iput-object p1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method private actuallyWriteString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x22

    .line 183
    if-nez p1, :cond_0

    .line 186
    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    goto :goto_0
.end method

.method private appendComma()V
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 307
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 310
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    return-void
.end method

.method private appendEscaped(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x5c

    .line 332
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 333
    .local v2, "parseIndex":I
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move v3, v2

    .line 336
    .end local v2    # "parseIndex":I
    .local v3, "parseIndex":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 338
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "current":C
    sparse-switch v0, :sswitch_data_0

    .line 376
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    const-string v5, "\\u"

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    sget-object v5, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    .line 383
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 386
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    sget-object v5, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    shr-int/lit8 v6, v0, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    .line 387
    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 389
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    sget-object v5, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    .line 390
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 392
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    sget-object v5, Lcom/microsoft/cll/android/JsonProtocol;->HEX_CHARACTERS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v1, v1, 0x5

    :goto_1
    move v3, v2

    .line 404
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    goto :goto_0

    .line 343
    :sswitch_0
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v2, v3, 0x2

    .line 346
    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    add-int/lit8 v1, v1, 0x1

    .line 347
    goto :goto_1

    .line 351
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :sswitch_1
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    invoke-virtual {v4, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 353
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    const/16 v5, 0x6e

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .line 355
    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    goto :goto_1

    .line 358
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :sswitch_2
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    invoke-virtual {v4, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 360
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    const/16 v5, 0x72

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .line 362
    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    goto :goto_1

    .line 364
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :sswitch_3
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    invoke-virtual {v4, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 366
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    const/16 v5, 0x74

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .line 368
    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    goto :goto_1

    .line 370
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :sswitch_4
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    invoke-virtual {v4, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 372
    iget-object v4, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    const/16 v5, 0x22

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .line 374
    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    goto :goto_1

    .line 400
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "parseIndex":I
    .restart local v2    # "parseIndex":I
    goto :goto_1

    .line 405
    .end local v0    # "current":C
    .end local v2    # "parseIndex":I
    .restart local v3    # "parseIndex":I
    :cond_1
    return-void

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x22 -> :sswitch_4
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private appendInContainer()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    .line 303
    :cond_0
    return-void
.end method

.method private removeLastComma()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    return-void
.end method

.method private writeJsonFieldName(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->appendEscaped(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    return-void
.end method


# virtual methods
.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 1
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    .line 284
    sget-object v0, Lcom/microsoft/bond/ProtocolCapability;->CAN_OMIT_FIELDS:Lcom/microsoft/bond/ProtocolCapability;

    if-ne p1, v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/microsoft/bond/ProtocolWriter;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBegin()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public writeBlob(Lcom/microsoft/bond/BondBlob;)V
    .locals 3
    .param p1, "bondBlob"    # Lcom/microsoft/bond/BondBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/bond/BondBlob;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 224
    return-void
.end method

.method public writeBool(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 154
    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "bondDataType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public writeContainerBegin(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "keyType"    # Lcom/microsoft/bond/BondDataType;
    .param p3, "valueType"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iput-boolean v2, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    .line 130
    iput-boolean v2, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    .line 132
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public writeContainerEnd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->removeLastComma()V

    .line 141
    iget-object v1, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->containerIsTyped:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    iput-boolean v2, p0, Lcom/microsoft/cll/android/JsonProtocol;->inContainer:Z

    .line 143
    iput-boolean v2, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    .line 145
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 147
    return-void

    .line 141
    :cond_0
    const/16 v0, 0x7d

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 217
    return-void
.end method

.method public writeEnd()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public writeFieldBegin(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 2
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I
    .param p3, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    instance-of v1, p3, Lcom/microsoft/bond/Metadata;

    if-eqz v1, :cond_1

    check-cast p3, Lcom/microsoft/bond/Metadata;

    .end local p3    # "metadata":Lcom/microsoft/bond/BondSerializable;
    move-object v0, p3

    .line 97
    .local v0, "bondMetadata":Lcom/microsoft/bond/Metadata;
    :goto_0
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/microsoft/bond/Metadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/cll/android/JsonProtocol;->writeJsonFieldName(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void

    .line 94
    .end local v0    # "bondMetadata":Lcom/microsoft/bond/Metadata;
    .restart local p3    # "metadata":Lcom/microsoft/bond/BondSerializable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeFieldEnd()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    .line 107
    return-void
.end method

.method public writeFieldOmitted(Lcom/microsoft/bond/BondDataType;ILcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .param p2, "id"    # I
    .param p3, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 210
    return-void
.end method

.method public writeInt16(S)V
    .locals 1
    .param p1, "i"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 266
    return-void
.end method

.method public writeInt32(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 273
    return-void
.end method

.method public writeInt64(J)V
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 280
    return-void
.end method

.method public writeInt8(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 259
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->keyTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_4

    .line 161
    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->writeJsonFieldName(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->valueTypes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRING:Lcom/microsoft/bond/BondDataType;

    if-ne v0, v1, :cond_1

    .line 172
    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    .line 179
    :cond_1
    :goto_2
    return-void

    .line 165
    :cond_2
    iget-boolean v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->isKey:Z

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->actuallyWriteString(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 176
    :cond_4
    invoke-direct {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->actuallyWriteString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public writeStructBegin(Lcom/microsoft/bond/BondSerializable;Z)V
    .locals 2
    .param p1, "metadata"    # Lcom/microsoft/bond/BondSerializable;
    .param p2, "isBase"    # Z

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public writeStructEnd(Z)V
    .locals 2
    .param p1, "isBase"    # Z

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->removeLastComma()V

    .line 77
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendComma()V

    .line 85
    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/JsonProtocol;->inContainerStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public writeUInt16(S)V
    .locals 1
    .param p1, "i"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 238
    return-void
.end method

.method public writeUInt32(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 245
    return-void
.end method

.method public writeUInt64(J)V
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 252
    return-void
.end method

.method public writeUInt8(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/microsoft/cll/android/JsonProtocol;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0}, Lcom/microsoft/cll/android/JsonProtocol;->appendInContainer()V

    .line 231
    return-void
.end method

.method public writeVersion()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public writeWString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/microsoft/cll/android/JsonProtocol;->writeString(Ljava/lang/String;)V

    .line 203
    return-void
.end method
