.class Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/MediaControlsVisibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowHideEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "seekControlsVisibility"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Ljava/util/Map;

    .line 171
    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$300(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$300(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$ShowHideEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-virtual {v0}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->setVisibilityState()V

    .line 175
    :cond_0
    return-void
.end method
