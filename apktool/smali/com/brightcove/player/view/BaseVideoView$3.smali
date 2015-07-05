.class Lcom/brightcove/player/view/BaseVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->onPrepared()V

    .line 438
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->attachMediaController()V

    .line 441
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 444
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;
    invoke-static {v1}, Lcom/brightcove/player/view/BaseVideoView;->access$100(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/model/Video;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/brightcove/player/view/BaseVideoView;->access$200(Lcom/brightcove/player/view/BaseVideoView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # operator++ for: Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$308(Lcom/brightcove/player/view/BaseVideoView;)I

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    const/4 v1, 0x1

    # setter for: Lcom/brightcove/player/view/BaseVideoView;->hasSetSource:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$402(Lcom/brightcove/player/view/BaseVideoView;Z)Z

    .line 453
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$500(Lcom/brightcove/player/view/BaseVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    const/4 v1, 0x0

    # setter for: Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$502(Lcom/brightcove/player/view/BaseVideoView;Z)Z

    .line 455
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$3;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "play"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 457
    :cond_1
    return-void
.end method
