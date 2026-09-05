.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;
.super Ljava/lang/Object;
.source "TrieSearch.java"


# static fields
.field private static ComponentName:Ljava/lang/String;

.field private static DefaultTrieDepth:I


# instance fields
.field public RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

.field public TrieDepth:I

.field public WordsDictionary:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->ComponentName:Ljava/lang/String;

    .line 15
    const/4 v0, 0x4

    sput v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->DefaultTrieDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    .line 24
    sget v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->DefaultTrieDepth:I

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    .line 28
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    .line 29
    return-void
.end method

.method public static findWordIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 80
    .local v0, "index":I
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->isNullOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "node"    # Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    .param p1, "trieDepth"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v4, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 195
    iget-boolean v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->IsWord:Z

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_0

    .line 196
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 202
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Character;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 204
    .local v0, "key":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "newPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-static {v5, p1, v2}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 209
    .end local v0    # "key":C
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Character;>;"
    .end local v2    # "newPrefix":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v3    # "word":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public static getTrieNodes(Ljava/util/Hashtable;I)Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    .locals 9
    .param p1, "trieDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "wordsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 104
    const/4 v4, 0x0

    .line 143
    :cond_0
    return-object v4

    .line 107
    :cond_1
    new-instance v4, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v4}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    .line 109
    .local v4, "rootTrieNode":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 111
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "word":Ljava/lang/String;
    move-object v3, v4

    .line 117
    .local v3, "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    const/4 v2, 0x0

    .local v2, "level":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    if-gt v2, p1, :cond_5

    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "charAtIndex":C
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-nez v6, :cond_3

    .line 120
    new-instance v6, Ljava/util/Hashtable;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    .line 123
    :cond_3
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 124
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    new-instance v8, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    invoke-direct {v8}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_4
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    .line 117
    .restart local v3    # "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "charAtIndex":C
    :cond_5
    if-le v2, p1, :cond_7

    .line 131
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-nez v6, :cond_6

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    .line 135
    :cond_6
    iget-object v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 139
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->IsWord:Z

    goto :goto_0
.end method

.method public static getWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "root"    # Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    .param p1, "trieDepth"    # I
    .param p2, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v7, "wordMatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v7

    .line 153
    :cond_1
    const-string v4, ""

    .line 154
    .local v4, "prefix":Ljava/lang/String;
    move-object v3, p0

    .line 156
    .local v3, "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    const/4 v1, 0x1

    .line 157
    .local v1, "hasMatches":Z
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "level":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    if-gt v2, p1, :cond_3

    .line 161
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 162
    .local v0, "charAtIndex":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object v8, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    .line 164
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 165
    :cond_2
    const/4 v1, 0x0

    .line 173
    .end local v0    # "charAtIndex":C
    :cond_3
    if-le v2, p1, :cond_6

    .line 174
    iget-object v8, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    if-eqz v8, :cond_0

    .line 175
    iget-object v8, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->Words:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 176
    .local v6, "word":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 177
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    .end local v6    # "word":Ljava/lang/String;
    .restart local v0    # "charAtIndex":C
    :cond_5
    iget-object v8, v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;->MoreNodes:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    .line 160
    .restart local v3    # "node":Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "charAtIndex":C
    :cond_6
    if-eqz v1, :cond_0

    .line 184
    invoke-static {v3, p1, v4}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getRemainingWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getWordsDictionary(Ljava/util/List;)Ljava/util/Hashtable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "trieInputs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;>;"
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 48
    .local v6, "wordsDictionary":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 73
    :cond_0
    return-object v6

    .line 52
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;

    .line 53
    .local v2, "trieInput":Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;
    iget-object v7, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    invoke-static {v7}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    .line 54
    .local v5, "words":[Ljava/lang/String;
    :goto_0
    const-string v3, ""

    .line 56
    .local v3, "word":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_2

    .line 57
    iget-object v7, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    aget-object v9, v5, v1

    invoke-static {v7, v9}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->findWordIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 58
    .local v4, "wordIndex":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    .line 59
    iget-object v7, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 61
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v9, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 62
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v9, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "i":I
    .end local v3    # "word":Ljava/lang/String;
    .end local v4    # "wordIndex":I
    .end local v5    # "words":[Ljava/lang/String;
    :cond_4
    iget-object v7, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 65
    .restart local v1    # "i":I
    .restart local v3    # "word":Ljava/lang/String;
    .restart local v4    # "wordIndex":I
    .restart local v5    # "words":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v7, v2, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v6, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static isNullOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "trieInputs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;>;"
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getWordsDictionary(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    .line 225
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->WordsDictionary:Ljava/util/Hashtable;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getTrieNodes(Ljava/util/Hashtable;I)Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    .line 226
    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->RootTrieNode:Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->TrieDepth:I

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->getWordMatches(Lcom/microsoft/xbox/toolkit/ui/Search/TrieNode;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
