.class public Lcom/microsoft/onlineid/internal/log/Redactor;
.super Ljava/lang/Object;
.source "Redactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;
    }
.end annotation


# static fields
.field protected static final RedactedStringEmptyReplacement:Ljava/lang/String; = ""

.field protected static final RedactedStringNullReplacement:Ljava/lang/String; = "(null)"

.field protected static final RedactedStringReplacement:Ljava/lang/String; = "*(%d)*"

.field protected static final RedactedStringStarReplacement:Ljava/lang/String; = "***"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;
    .locals 6
    .param p0, "stringToRedact"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 74
    if-nez p0, :cond_0

    .line 76
    const-string v0, "(null)"

    .line 108
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 81
    const-string v0, ""

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, ""

    .line 86
    .local v0, "redactedStr":Ljava/lang/String;
    sget-object v1, Lcom/microsoft/onlineid/internal/log/Redactor$1;->$SwitchMap$com$microsoft$onlineid$internal$log$Redactor$RedactionType:[I

    invoke-virtual {p1}, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 104
    const-string v0, "***"

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "*(%d)*"

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 89
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "***"

    .line 96
    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "*(%d)*"

    new-array v3, v3, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 98
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static redactEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Email:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static redactPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->Password:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static redactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;->String:Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/internal/log/Redactor;->doRedact(Ljava/lang/String;Lcom/microsoft/onlineid/internal/log/Redactor$RedactionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shouldRedact()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/microsoft/onlineid/internal/log/Logger;->shouldRedact()Z

    move-result v0

    return v0
.end method
