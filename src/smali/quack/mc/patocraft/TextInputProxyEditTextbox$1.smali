.class Lquack/mc/patocraft/TextInputProxyEditTextbox$1;
.super Ljava/lang/Object;
.source "TextInputProxyEditTextbox.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lquack/mc/patocraft/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lquack/mc/patocraft/TextInputProxyEditTextbox;


# direct methods
.method constructor <init>(Lquack/mc/patocraft/TextInputProxyEditTextbox;)V
    .locals 0
    .param p1, "this$0"    # Lquack/mc/patocraft/TextInputProxyEditTextbox;

    .prologue
    .line 44
    iput-object p1, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox$1;->this$0:Lquack/mc/patocraft/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 49
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :cond_0
    return-object p1
.end method
