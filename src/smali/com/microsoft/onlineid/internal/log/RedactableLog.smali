.class public Lcom/microsoft/onlineid/internal/log/RedactableLog;
.super Ljava/lang/Object;
.source "RedactableLog.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/log/IRedactable;


# static fields
.field private static final RedactedPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final _patternsToRedact:[Ljava/util/regex/Pattern;

.field private final _unredactedString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v0, "*(%d)*"

    const-string v1, "*"

    const-string v2, "\\*"

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, "\\("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d"

    const-string v2, "\\d+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->RedactedPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "unredactedString"    # Ljava/lang/String;
    .param p2, "patternsToRedact"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_patternsToRedact:[Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method


# virtual methods
.method public getRedactedString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 42
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    .line 43
    .local v3, "redactedString":Ljava/lang/String;
    iget-object v8, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_patternsToRedact:[Ljava/util/regex/Pattern;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v1, v8, v7

    .line 45
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 46
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "stringToRedact":Ljava/lang/String;
    sget-object v5, Lcom/microsoft/onlineid/internal/log/RedactableLog;->RedactedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 53
    .local v2, "redactedMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    invoke-static {v4}, Lcom/microsoft/onlineid/internal/log/Redactor;->redactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 49
    .end local v2    # "redactedMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "stringToRedact":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 43
    :cond_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 59
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    return-object v3
.end method

.method public getUnredactedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableLog;->_unredactedString:Ljava/lang/String;

    return-object v0
.end method
