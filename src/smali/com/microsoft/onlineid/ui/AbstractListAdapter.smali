.class public abstract Lcom/microsoft/onlineid/ui/AbstractListAdapter;
.super Ljava/lang/Object;
.source "AbstractListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field protected _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    return-void
.end method

.method private fireChanged()V
    .locals 3

    .prologue
    .line 69
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->onChanged()V

    .line 71
    iget-object v1, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 73
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 75
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onChanged()V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 105
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public setContent(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->fireChanged()V

    .line 40
    return-void
.end method

.method public varargs setContent([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_items:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->fireChanged()V

    .line 52
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 111
    .local p0, "this":Lcom/microsoft/onlineid/ui/AbstractListAdapter;, "Lcom/microsoft/onlineid/ui/AbstractListAdapter<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/AbstractListAdapter;->_observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
