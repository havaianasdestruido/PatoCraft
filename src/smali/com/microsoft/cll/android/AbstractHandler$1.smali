.class Lcom/microsoft/cll/android/AbstractHandler$1;
.super Ljava/lang/Object;
.source "AbstractHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/cll/android/AbstractHandler;

.field final synthetic val$fileExtension:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/cll/android/AbstractHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/cll/android/AbstractHandler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->this$0:Lcom/microsoft/cll/android/AbstractHandler;

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->val$fileExtension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "lowercaseName":Ljava/lang/String;
    iget-object v1, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->val$fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
