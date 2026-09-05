.class public Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private final _editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    .line 225
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    return-void
.end method

.method public clear()Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 261
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    return-object p0
.end method

.method public writeBoolean(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 362
    return-object p0
.end method

.method public writeLong(Ljava/lang/String;J)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 346
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 347
    return-object p0
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/storage/ISerializer;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/microsoft/onlineid/internal/storage/ISerializer",
            "<TT;>;)",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/internal/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p3, "serializer":Lcom/microsoft/onlineid/internal/storage/ISerializer;, "Lcom/microsoft/onlineid/internal/storage/ISerializer<TT;>;"
    if-eqz p2, :cond_0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p2}, Lcom/microsoft/onlineid/internal/storage/ISerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    return-object p0

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/onlineid/internal/storage/StorageException;

    invoke-direct {v1, v0}, Lcom/microsoft/onlineid/internal/storage/StorageException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    return-object p0
.end method

.method public writeStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/onlineid/internal/storage/Storage$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/internal/storage/Storage$Editor;"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/storage/Storage$Editor;->_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 305
    return-object p0
.end method
