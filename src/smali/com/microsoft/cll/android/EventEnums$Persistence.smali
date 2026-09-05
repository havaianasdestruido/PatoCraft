.class public final enum Lcom/microsoft/cll/android/EventEnums$Persistence;
.super Ljava/lang/Enum;
.source "EventEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/EventEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Persistence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/cll/android/EventEnums$Persistence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

.field public static final enum PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v1, "PersistenceUnspecified"

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    .line 55
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v1, "PersistenceNormal"

    invoke-direct {v0, v1, v3, v3}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    .line 56
    new-instance v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    const-string v1, "PersistenceCritical"

    invoke-direct {v0, v1, v4, v4}, Lcom/microsoft/cll/android/EventEnums$Persistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/cll/android/EventEnums$Persistence;

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceUnspecified:Lcom/microsoft/cll/android/EventEnums$Persistence;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/microsoft/cll/android/EventEnums$Persistence;->id:I

    .line 63
    return-void
.end method

.method static FromString(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "CRITICAL"

    if-ne p0, v0, :cond_0

    .line 69
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceCritical:Lcom/microsoft/cll/android/EventEnums$Persistence;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->PersistenceNormal:Lcom/microsoft/cll/android/EventEnums$Persistence;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/cll/android/EventEnums$Persistence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/cll/android/EventEnums$Persistence;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/microsoft/cll/android/EventEnums$Persistence;->$VALUES:[Lcom/microsoft/cll/android/EventEnums$Persistence;

    invoke-virtual {v0}, [Lcom/microsoft/cll/android/EventEnums$Persistence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/cll/android/EventEnums$Persistence;

    return-object v0
.end method
