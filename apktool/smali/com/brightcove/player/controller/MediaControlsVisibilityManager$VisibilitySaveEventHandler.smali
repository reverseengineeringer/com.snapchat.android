.class Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;
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
    name = "VisibilitySaveEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 194
    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$400()Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "instanceState"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .line 197
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->visibilityMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$300(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilitySaveEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    # invokes: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->saveVisibilityState(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$500(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Landroid/os/Bundle;)V

    .line 201
    :cond_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
