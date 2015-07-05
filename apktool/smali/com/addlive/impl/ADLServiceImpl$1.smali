.class Lcom/addlive/impl/ADLServiceImpl$1;
.super Lcom/addlive/service/ResponderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/ADLServiceImpl;->sendReportWithCredentials(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/service/ResponderAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;

.field final synthetic val$cause:Ljava/lang/String;

.field final synthetic val$credentials:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$1;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    iput-object p2, p0, Lcom/addlive/impl/ADLServiceImpl$1;->val$credentials:Ljava/lang/String;

    iput-object p3, p0, Lcom/addlive/impl/ADLServiceImpl$1;->val$cause:Ljava/lang/String;

    invoke-direct {p0}, Lcom/addlive/service/ResponderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 548
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/addlive/impl/ADLServiceImpl$1;->resultHandler(Ljava/lang/String;)V

    return-void
.end method

.method public resultHandler(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 551
    const-string v0, "AddLive_SDK"

    const-string v1, "Sending AER"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v0, Lcom/addlive/impl/AerPublisher;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$1;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    # getter for: Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/addlive/impl/ADLServiceImpl;->access$100(Lcom/addlive/impl/ADLServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/addlive/impl/AerPublisher;-><init>(Landroid/content/Context;)V

    .line 553
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$1;->val$credentials:Ljava/lang/String;

    iget-object v2, p0, Lcom/addlive/impl/ADLServiceImpl$1;->val$cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/addlive/impl/AerPublisher;->publish(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method
