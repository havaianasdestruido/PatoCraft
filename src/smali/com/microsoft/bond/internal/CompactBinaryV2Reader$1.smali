.class synthetic Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;
.super Ljava/lang/Object;
.source "CompactBinaryV2Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/bond/internal/CompactBinaryV2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$bond$BondDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/microsoft/bond/BondDataType;->values()[Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    :try_start_0
    sget-object v0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    sget-object v1, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {v1}, Lcom/microsoft/bond/BondDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
