.class Lcom/addlive/platform/ADL$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->validateVersion()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errHandler(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$400(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/16 v2, 0x3ee

    const-string v3, "Failed to validate version of the native component due to an internal error."

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 341
    iget-object v0, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    const/4 v1, 0x0

    # setter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$402(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;)Lcom/addlive/platform/PlatformInitListener;

    .line 342
    return-void
.end method

.method public bridge synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/addlive/platform/ADL$2;->resultHandler(Ljava/lang/String;)V

    return-void
.end method

.method public resultHandler(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 320
    invoke-static {}, Lcom/addlive/Constants;->SDK_VERSION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    # invokes: Lcom/addlive/platform/ADL;->setApplicationIdMaybe()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$900(Lcom/addlive/platform/ADL;)V

    .line 333
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    # getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$400(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/16 v2, 0x3ee

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The version of the native component mismatch the Java bindings and thus the platform cannot be used. Please verify your libraries. This error should never reach the production environments. Java bindings version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/addlive/Constants;->SDK_VERSION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " native component version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 331
    iget-object v0, p0, Lcom/addlive/platform/ADL$2;->this$0:Lcom/addlive/platform/ADL;

    const/4 v1, 0x0

    # setter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$402(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;)Lcom/addlive/platform/PlatformInitListener;

    goto :goto_0
.end method
