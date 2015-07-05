.class Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkTestResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Lcom/addlive/service/ConnectionQuality;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/ConnectionQuality;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 674
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 675
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 682
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 683
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;->responder:Lcom/addlive/service/Responder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/addlive/service/ConnectionQuality;->_fromInt(I)Lcom/addlive/service/ConnectionQuality;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0
.end method
