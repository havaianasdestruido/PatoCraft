.class Lcom/appsflyer/AFValidateInAppPurchase$1;
.super Ljava/lang/Object;
.source "AFValidateInAppPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AFValidateInAppPurchase;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AFValidateInAppPurchase;

.field final synthetic val$validateParamsForWH:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsflyer/AFValidateInAppPurchase;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/appsflyer/AFValidateInAppPurchase$1;->this$0:Lcom/appsflyer/AFValidateInAppPurchase;

    iput-object p2, p0, Lcom/appsflyer/AFValidateInAppPurchase$1;->val$validateParamsForWH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/appsflyer/AFValidateInAppPurchase$1;->this$0:Lcom/appsflyer/AFValidateInAppPurchase;

    iget-object v1, p0, Lcom/appsflyer/AFValidateInAppPurchase$1;->val$validateParamsForWH:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/AFValidateInAppPurchase$1;->this$0:Lcom/appsflyer/AFValidateInAppPurchase;

    iget-object v2, v2, Lcom/appsflyer/AFValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AFValidateInAppPurchase;->access$000(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    .line 64
    return-void
.end method
