.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;
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
    name = "OnPlayerReadyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$900(Lcom/brightcove/player/controller/VideoPlaybackController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    const/4 v1, 0x1

    # setter for: Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$902(Lcom/brightcove/player/controller/VideoPlaybackController;Z)Z

    .line 269
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/brightcove/player/model/Source;

    .line 272
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->sourceToVideoMapping:Ljava/util/Map;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$700(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 273
    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1300(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string v3, "setSource"

    invoke-static {v2, v3, v0, v1}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method
