.class Lcom/microsoft/cll/android/FileStorage$FileFullException;
.super Ljava/lang/Exception;
.source "FileStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/FileStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileFullException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/cll/android/FileStorage;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/FileStorage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/cll/android/FileStorage;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/microsoft/cll/android/FileStorage$FileFullException;->this$0:Lcom/microsoft/cll/android/FileStorage;

    .line 282
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 283
    return-void
.end method
