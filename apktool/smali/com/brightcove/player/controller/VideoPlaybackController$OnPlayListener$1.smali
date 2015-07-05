.class Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

.field final synthetic val$cuePointUniqueKey:Ljava/util/UUID;

.field final synthetic val$playEvent:Lcom/brightcove/player/event/Event;


# direct methods
.method constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;Ljava/util/UUID;Lcom/brightcove/player/event/Event;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->this$1:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

    iput-object p2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->val$cuePointUniqueKey:Ljava/util/UUID;

    iput-object p3, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->val$playEvent:Lcom/brightcove/player/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->val$cuePointUniqueKey:Ljava/util/UUID;

    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->this$1:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

    iget-object v0, v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$200(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->val$playEvent:Lcom/brightcove/player/event/Event;

    invoke-virtual {v1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1;->val$playEvent:Lcom/brightcove/player/event/Event;

    iget-object v2, v2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    :cond_0
    return-void
.end method
