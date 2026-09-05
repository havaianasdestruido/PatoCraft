.class public final enum Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;
.super Ljava/lang/Enum;
.source "BaseScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgumentsKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

.field public static final enum Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

.field public static final enum Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    const-string v1, "Header"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    .line 36
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    const-string v1, "Body"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Header:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->Body:Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/BaseScreenFragment$ArgumentsKey;

    return-object v0
.end method
