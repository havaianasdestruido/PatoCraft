.class final enum Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
.super Ljava/lang/Enum;
.source "AccountPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Extras"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

.field public static final enum CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    const-string v1, "CidsToExclude"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    sget-object v1, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->CidsToExclude:Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->$VALUES:[Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    invoke-virtual {v0}, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.microsoft.msa.authenticator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/ui/AccountPickerActivity$Extras;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
