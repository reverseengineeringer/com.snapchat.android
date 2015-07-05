.class Lcom/flurry/sdk/ek$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ek;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ek;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ek;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;

    invoke-static {v0}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;

    invoke-static {v0}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;

    invoke-static {v0}, Lcom/flurry/sdk/ek;->b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/flurry/sdk/ek$2;->a:Lcom/flurry/sdk/ek;

    invoke-static {v0}, Lcom/flurry/sdk/ek;->b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 581
    :cond_1
    return-void
.end method
