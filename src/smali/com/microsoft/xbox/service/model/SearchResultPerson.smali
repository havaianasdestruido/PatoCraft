.class public Lcom/microsoft/xbox/service/model/SearchResultPerson;
.super Ljava/lang/Object;
.source "SearchResultPerson.java"


# instance fields
.field public GamertagAfter:Ljava/lang/String;

.field public GamertagBefore:Ljava/lang/String;

.field public GamertagMatch:Ljava/lang/String;

.field public RealNameAfter:Ljava/lang/String;

.field public RealNameBefore:Ljava/lang/String;

.field public RealNameMatch:Ljava/lang/String;

.field public SearchText:Ljava/lang/String;

.field public StatusAfter:Ljava/lang/String;

.field public StatusBefore:Ljava/lang/String;

.field public StatusMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;Ljava/lang/String;)V
    .locals 1
    .param p1, "person"    # Lcom/microsoft/xbox/service/model/FollowersData;
    .param p2, "searchText"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p2}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->isNullOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->setInlineRuns(Lcom/microsoft/xbox/service/model/FollowersData;)V

    .line 40
    return-void
.end method

.method private static getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v1, "runs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/Search/TrieSearch;->findWordIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "startIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 77
    .local v0, "postIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 79
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_0
    return-object v1

    .line 85
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v3, ""

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v3, ""

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isNullOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 94
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

.method private setInlineRuns(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 7
    .param p1, "person"    # Lcom/microsoft/xbox/service/model/FollowersData;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/FollowersData;->getGamertag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "runs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagBefore:Ljava/lang/String;

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagMatch:Ljava/lang/String;

    .line 51
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->GamertagAfter:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/FollowersData;->getGamerRealName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 57
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameBefore:Ljava/lang/String;

    .line 58
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameMatch:Ljava/lang/String;

    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->RealNameAfter:Ljava/lang/String;

    .line 62
    :cond_1
    iget-object v1, p1, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->SearchText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/service/model/SearchResultPerson;->getRuns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 65
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusBefore:Ljava/lang/String;

    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusMatch:Ljava/lang/String;

    .line 67
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/SearchResultPerson;->StatusAfter:Ljava/lang/String;

    .line 69
    :cond_2
    return-void
.end method
