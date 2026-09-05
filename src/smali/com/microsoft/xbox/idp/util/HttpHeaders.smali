.class public Lcom/microsoft/xbox/idp/util/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    }
.end annotation


# instance fields
.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public getAllHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    if-eqz p1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 24
    .local v0, "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;->access$000(Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    .end local v0    # "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastHeader(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 35
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 36
    .local v0, "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    invoke-static {v0}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;->access$000(Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    .end local v0    # "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 34
    .restart local v0    # "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 41
    .end local v0    # "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 49
    .local v1, "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v1    # "h":Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    :cond_0
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
