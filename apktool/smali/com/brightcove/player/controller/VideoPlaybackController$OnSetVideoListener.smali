.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;
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
    name = "OnSetVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 190
    sget-object v1, Lcom/brightcove/player/controller/VideoPlaybackController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnSetVideoListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "stillImageUri"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/net/URI;

    if-eqz v2, :cond_0

    .line 196
    check-cast v1, Ljava/net/URI;

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    const-string v3, "video_still"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$500(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v3, "setVideoStill"

    invoke-interface {v1, v3, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getCuePoints()Ljava/util/List;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;
    invoke-static {v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    const-string v2, "video"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v2, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;

    iget-object v3, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {v2, v3}, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    .line 213
    iput-object v0, v2, Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;->currentVideo:Lcom/brightcove/player/model/Video;

    .line 215
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$600(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v3, "selectSource"

    invoke-interface {v0, v3, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 216
    return-void
.end method
