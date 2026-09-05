.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;
.super Ljava/lang/Object;
.source "TrieInput.java"


# instance fields
.field public Context:Ljava/lang/Object;

.field public Text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    .line 8
    return-void
.end method
