.class Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;
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
    name = "VisibilityRestoreEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Lcom/brightcove/player/controller/MediaControlsVisibilityManager$1;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;-><init>(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 220
    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$400()Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "instanceState"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/os/Bundle;

    .line 223
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "mediaControlsVisibilityState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 224
    :goto_1
    if-eqz v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager$VisibilityRestoreEventHandler;->this$0:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    # invokes: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->restoreVisibilityState(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$600(Lcom/brightcove/player/controller/MediaControlsVisibilityManager;Landroid/os/Bundle;)V

    .line 231
    :goto_2
    return-void

    :cond_0
    move-object v0, v1

    .line 222
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 223
    goto :goto_1

    .line 229
    :cond_2
    # getter for: Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->access$400()Ljava/lang/String;

    goto :goto_2
.end method
