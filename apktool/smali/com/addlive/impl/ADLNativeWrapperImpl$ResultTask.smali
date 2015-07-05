.class Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLNativeWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultTask"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/ADLNativeWrapperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->data:Ljava/lang/String;

    .line 729
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 732
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    # getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$000(Lcom/addlive/impl/ADLNativeWrapperImpl;)Lcom/addlive/platform/PlatformInitOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->isInteractionsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    # getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$000(Lcom/addlive/impl/ADLNativeWrapperImpl;)Lcom/addlive/platform/PlatformInitOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->getInteractionsLogTag()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[App <---- SDK] Result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_0
    :try_start_0
    new-instance v1, Lcom/addlive/impl/ServiceResponse;

    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->data:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceResponse;-><init>(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    # getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$600(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/addlive/impl/ServiceResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/impl/BaseResultAdapter;

    .line 741
    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0, v1}, Lcom/addlive/impl/BaseResultAdapter;->handleResponse(Lcom/addlive/impl/ServiceResponse;)V

    .line 743
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    # getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$600(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/addlive/impl/ServiceResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :goto_0
    return-void

    .line 745
    :cond_1
    const-string v0, "AddLive_SDK"

    const-string v1, "Cannot pass the result as there is no result handler for request with given id."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 750
    const-string v1, "AddLive_SDK"

    const-string v2, "Unknown error passing result: "

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
