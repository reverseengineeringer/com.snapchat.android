.class Lcom/addlive/platform/ADL$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->releasePlatform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "AddLive_SDK"

    const-string v1, "[App ----- SDK] Release"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    # getter for: Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;
    invoke-static {}, Lcom/addlive/platform/ADL;->access$100()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_0

    # getter for: Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;
    invoke-static {}, Lcom/addlive/platform/ADL;->access$100()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    if-ne v0, v1, :cond_1

    .line 438
    :cond_0
    const-string v0, "AddLive_SDK"

    const-string v1, "Trying to release already released platform"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_1
    sget-object v0, Lcom/addlive/platform/InitState;->RELEASING:Lcom/addlive/platform/InitState;

    # setter for: Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    .line 442
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$600(Lcom/addlive/platform/ADL;)Lcom/addlive/service/AddLiveService;

    move-result-object v0

    check-cast v0, Lcom/addlive/impl/ADLServiceImpl;

    invoke-virtual {v0}, Lcom/addlive/impl/ADLServiceImpl;->release()V

    .line 443
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->releasePlatform()V

    .line 444
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    # invokes: Lcom/addlive/platform/ADL;->releaseADLResources()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$1200(Lcom/addlive/platform/ADL;)V

    .line 445
    sget-object v0, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    # setter for: Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    goto :goto_0
.end method
