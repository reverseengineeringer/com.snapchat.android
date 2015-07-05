.class Lcom/addlive/platform/ADL$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->setStreamerEndpointResolvers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/addlive/service/Responder",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/addlive/platform/ADL$4;->this$0:Lcom/addlive/platform/ADL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errHandler(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/addlive/platform/ADL$4;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$400(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set application id due to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, p1, v2, v3}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 398
    iget-object v0, p0, Lcom/addlive/platform/ADL$4;->this$0:Lcom/addlive/platform/ADL;

    # invokes: Lcom/addlive/platform/ADL;->cleanupAfterInitError()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$800(Lcom/addlive/platform/ADL;)V

    .line 399
    return-void
.end method

.method public bridge synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/addlive/platform/ADL$4;->resultHandler(Ljava/lang/Void;)V

    return-void
.end method

.method public resultHandler(Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 385
    sget-object v0, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    # setter for: Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    .line 386
    iget-object v0, p0, Lcom/addlive/platform/ADL$4;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$400(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/4 v2, 0x0

    const-string v3, ""

    sget-object v4, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 389
    iget-object v0, p0, Lcom/addlive/platform/ADL$4;->this$0:Lcom/addlive/platform/ADL;

    # invokes: Lcom/addlive/platform/ADL;->cleanupAfterInitSuccess()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$1100(Lcom/addlive/platform/ADL;)V

    .line 390
    return-void
.end method
