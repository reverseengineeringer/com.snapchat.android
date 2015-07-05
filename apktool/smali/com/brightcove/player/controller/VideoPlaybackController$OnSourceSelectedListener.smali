.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/VideoPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSourceSelectedListener"
.end annotation


# instance fields
.field public currentVideo:Lcom/brightcove/player/model/Video;

.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lcom/brightcove/player/controller/VideoPlaybackController;->TAG:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 230
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->sourceToVideoMapping:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$700(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$800(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "didSelectSource"

    iget-object v3, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-static {v1, v2, v3, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 237
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$900(Lcom/brightcove/player/controller/VideoPlaybackController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1000(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "setSource"

    iget-object v3, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-static {v1, v2, v3, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
