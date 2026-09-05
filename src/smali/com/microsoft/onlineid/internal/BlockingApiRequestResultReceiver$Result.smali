.class public Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;
.super Ljava/lang/Object;
.source "BlockingApiRequestResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private final _exception:Ljava/lang/Exception;

.field private final _result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;


# direct methods
.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 113
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .param p2, "x1"    # Landroid/app/PendingIntent;
    .param p3, "x2"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;

    .prologue
    .line 101
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 119
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    .line 121
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .param p2, "x1"    # Ljava/lang/Exception;
    .param p3, "x2"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;

    .prologue
    .line 101
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    .local p2, "result":Ljava/lang/Object;, "TResultType;"
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->this$0:Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    invoke-direct {v0}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;-><init>()V

    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$1;

    .prologue
    .line 101
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    invoke-direct {p0, p1, p2}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;-><init>(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_exception:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public getSsoResponse()Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<TResultType;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;, "Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver<TResultType;>.Result;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/BlockingApiRequestResultReceiver$Result;->_result:Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;

    return-object v0
.end method
