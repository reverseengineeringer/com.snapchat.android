.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;
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
    name = "OnSetCuePointsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "cue_points"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 420
    check-cast v0, Ljava/util/List;

    .line 421
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v0, Lcom/brightcove/player/controller/VideoPlaybackController;->TAG:Ljava/lang/String;

    goto :goto_0
.end method
