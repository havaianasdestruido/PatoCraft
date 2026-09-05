.class public final enum Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
.super Ljava/lang/Enum;
.source "AccountProvisioningResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

.field public static final enum Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;


# instance fields
.field public final resIdAgeGroup:I

.field public final resIdAgeGroupDetails:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    const-string v1, "Adult"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_adult:I

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_adult_details_android:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    .line 74
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    const-string v1, "Teen"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_teen:I

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_teen_details_android:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    .line 75
    new-instance v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    const-string v1, "Child"

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_child:I

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_age_group_child_details_android:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "resIdAgeGroup"    # I
    .param p4, "resIdAgeGroupDetails"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroup:I

    .line 82
    iput p4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->resIdAgeGroupDetails:I

    .line 83
    return-void
.end method

.method public static fromServiceString(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .locals 3
    .param p0, "serviceString"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AgeGroup from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const-string v0, "adult"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Adult:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    .line 98
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v0, "teen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Teen:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "child"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->$VALUES:[Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    return-object v0
.end method
