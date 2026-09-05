.class public Lcom/microsoft/onlineid/internal/log/RedactableXml;
.super Ljava/lang/Object;
.source "RedactableXml.java"

# interfaces
.implements Lcom/microsoft/onlineid/internal/log/IRedactable;


# static fields
.field private static final GenericNodePattern:Ljava/util/regex/Pattern;


# instance fields
.field private final _tagsToKeep:[Ljava/lang/String;

.field private final _unredactedXml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "<([^<> ]+)([^<>]*)>([^<>]+)</\\1[^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->GenericNodePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "unredactedXml"    # Ljava/lang/String;
    .param p2, "tagsToKeep"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_tagsToKeep:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method private isInApprovedList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "xmlTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_tagsToKeep:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 81
    .local v0, "approvedTag":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    const/4 v1, 0x1

    .line 87
    .end local v0    # "approvedTag":Ljava/lang/String;
    :cond_0
    return v1

    .line 79
    .restart local v0    # "approvedTag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRedactedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    sget-object v2, Lcom/microsoft/onlineid/internal/log/RedactableXml;->GenericNodePattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 44
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v1, "redactedStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/internal/log/RedactableXml;->isInApprovedList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<$1$2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/onlineid/internal/log/Redactor;->redactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</$1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUnredactedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/log/RedactableXml;->_unredactedXml:Ljava/lang/String;

    return-object v0
.end method
