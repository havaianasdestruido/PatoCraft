.class public Lcom/microsoft/onlineid/Ticket;
.super Ljava/lang/Object;
.source "Ticket.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _expiry:Ljava/util/Date;

.field private final _scope:Lcom/microsoft/onlineid/ISecurityScope;

.field private final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p2, "expiry"    # Ljava/util/Date;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "scope"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v0, "expiry"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string v0, "value"

    invoke-static {p3, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 38
    iput-object p2, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    .line 39
    iput-object p3, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/Ticket;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/microsoft/onlineid/Ticket;

    .line 88
    .local v0, "other":Lcom/microsoft/onlineid/Ticket;
    iget-object v3, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    iget-object v4, v0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    iget-object v4, v0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    .line 89
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    .line 90
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/microsoft/onlineid/Ticket;
    :cond_3
    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getScope()Lcom/microsoft/onlineid/ISecurityScope;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_value:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ticket{scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/Ticket;->_expiry:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
