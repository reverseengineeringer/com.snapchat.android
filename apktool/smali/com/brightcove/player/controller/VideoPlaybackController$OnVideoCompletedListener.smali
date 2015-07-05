.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;
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
    name = "OnVideoCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 6
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 338
    sget-object v0, Lcom/brightcove/player/controller/VideoPlaybackController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnVideoCompletedListener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # setter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v0, v5}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$002(Lcom/brightcove/player/controller/VideoPlaybackController;I)I

    .line 342
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "skipCuePoints"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/CuePoint;

    .line 349
    invoke-virtual {v0}, Lcom/brightcove/player/model/CuePoint;->getPositionType()Lcom/brightcove/player/model/CuePoint$PositionType;

    move-result-object v3

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    invoke-virtual {v3, v4}, Lcom/brightcove/player/model/CuePoint$PositionType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->preventDefault()V

    .line 356
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->stopPropagation()V

    .line 357
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "skipCuePoints"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    const-string v2, "cue_points"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "endTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "startTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "original"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1500(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "cuePoint"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
