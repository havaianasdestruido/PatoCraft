.class Lcom/microsoft/onlineid/sts/ConfigManager$1;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/sts/ConfigManager;->findNewestPrebundledConfiguration(Lcom/microsoft/onlineid/internal/configuration/Environment;)Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/microsoft/onlineid/sts/PrebundledConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/sts/ConfigManager;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/sts/ConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/sts/ConfigManager;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ConfigManager$1;->this$0:Lcom/microsoft/onlineid/sts/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/onlineid/sts/PrebundledConfiguration;Lcom/microsoft/onlineid/sts/PrebundledConfiguration;)I
    .locals 2
    .param p1, "lhs"    # Lcom/microsoft/onlineid/sts/PrebundledConfiguration;
    .param p2, "rhs"    # Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;->getConfigDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 416
    check-cast p1, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    check-cast p2, Lcom/microsoft/onlineid/sts/PrebundledConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/onlineid/sts/ConfigManager$1;->compare(Lcom/microsoft/onlineid/sts/PrebundledConfiguration;Lcom/microsoft/onlineid/sts/PrebundledConfiguration;)I

    move-result v0

    return v0
.end method
