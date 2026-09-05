.class public Lquack/mc/patocraft/TextInputProxyEditTextbox;
.super Landroid/widget/EditText;
.source "TextInputProxyEditTextbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEInputConnection;,
        Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;
    }
.end annotation


# instance fields
.field private _mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

.field public final allowedLength:I

.field public final limitInput:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowedLength"    # I
    .param p3, "limitInput"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .line 38
    iput p2, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->allowedLength:I

    .line 39
    iput-boolean p3, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->limitInput:Z

    .line 41
    if-eqz p3, :cond_0

    .line 42
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->allowedLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Lquack/mc/patocraft/TextInputProxyEditTextbox$1;

    invoke-direct {v1, p0}, Lquack/mc/patocraft/TextInputProxyEditTextbox$1;-><init>(Lquack/mc/patocraft/TextInputProxyEditTextbox;)V

    aput-object v1, v0, v4

    .line 58
    .local v0, "filters":[Landroid/text/InputFilter;
    :goto_0
    invoke-virtual {p0, v0}, Lquack/mc/patocraft/TextInputProxyEditTextbox;->setFilters([Landroid/text/InputFilter;)V

    .line 59
    return-void

    .line 56
    .end local v0    # "filters":[Landroid/text/InputFilter;
    :cond_0
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->allowedLength:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .restart local v0    # "filters":[Landroid/text/InputFilter;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .line 32
    const/16 v0, 0xa0

    iput v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->allowedLength:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->limitInput:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .line 26
    const/16 v0, 0xa0

    iput v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->allowedLength:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->limitInput:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lquack/mc/patocraft/TextInputProxyEditTextbox;)Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;
    .locals 1
    .param p0, "x0"    # Lquack/mc/patocraft/TextInputProxyEditTextbox;

    .prologue
    .line 14
    iget-object v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 63
    new-instance v0, Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p0}, Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEInputConnection;-><init>(Lquack/mc/patocraft/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLquack/mc/patocraft/TextInputProxyEditTextbox;)V

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 70
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    invoke-interface {v0}, Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;->onBackKeyPressed()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnMCPEKeyWatcher(Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;)V
    .locals 0
    .param p1, "mcpeKeyWatcher"    # Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .prologue
    .line 81
    iput-object p1, p0, Lquack/mc/patocraft/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lquack/mc/patocraft/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .line 82
    return-void
.end method
