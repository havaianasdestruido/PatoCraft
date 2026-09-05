.class public final enum Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
.super Ljava/lang/Enum;
.source "ActivityResultSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ActivityResultSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

.field public static final enum Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

.field public static final enum Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;


# instance fields
.field private final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    const-string v1, "Account"

    const-string v2, "account"

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    .line 37
    new-instance v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    const-string v1, "Ticket"

    const-string v2, "ticket"

    invoke-direct {v0, v1, v4, v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    sget-object v1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Account:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->Ticket:Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->$VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->_value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->values()[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "type":Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    .end local v0    # "type":Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "type":Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "type":Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->$VALUES:[Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/ActivityResultSender$ResultType;->_value:Ljava/lang/String;

    return-object v0
.end method
