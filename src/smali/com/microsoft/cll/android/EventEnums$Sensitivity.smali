.class public final enum Lcom/microsoft/cll/android/EventEnums$Sensitivity;
.super Ljava/lang/Enum;
.source "EventEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensitivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

.field public static final enum SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityUnspecified"

    invoke-direct {v0, v1, v3, v4}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 89
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityNone"

    invoke-direct {v0, v1, v4, v3}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 90
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityMark"

    const/high16 v2, 0x80000

    invoke-direct {v0, v1, v5, v2}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 91
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityHash"

    const/high16 v2, 0x100000

    invoke-direct {v0, v1, v6, v2}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 92
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    const-string v1, "SensitivityDrop"

    const/high16 v2, 0x200000

    invoke-direct {v0, v1, v7, v2}, Lcom/microsoft/cll/android/EventEnums$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityUnspecified:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityNone:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    aput-object v1, v0, v7

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->id:I

    .line 99
    return-void
.end method

.method static FromString(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/microsoft/cll/android/EventEnums$Sensitivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 105
    .local v0, "sensitivity":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/microsoft/cll/android/EventEnums$Sensitivity;>;"
    if-eqz p0, :cond_3

    .line 107
    const-string v1, "MARK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USERSENSITIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityMark:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    const-string v1, "DROP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityDrop:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    const-string v1, "HASH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->SensitivityHash:Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Sensitivity;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Sensitivity;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Sensitivity;

    return-object v0
.end method
