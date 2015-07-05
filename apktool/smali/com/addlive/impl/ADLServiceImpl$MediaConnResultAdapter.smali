.class Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaConnResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Lcom/addlive/service/MediaConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private scopeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/MediaConnection;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 658
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 659
    iput-object p3, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->scopeId:Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Lcom/addlive/impl/ADLMediaConnectionImpl;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->scopeId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/addlive/impl/ADLMediaConnectionImpl;-><init>(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    # getter for: Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v1}, Lcom/addlive/impl/ADLServiceImpl;->access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/addlive/impl/ADLNativeWrapper;->getActiveConnections()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->scopeId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;->responder:Lcom/addlive/service/Responder;

    invoke-interface {v1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 669
    :cond_0
    return-void
.end method
