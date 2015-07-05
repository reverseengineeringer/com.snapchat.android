.class public Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSetSourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 483
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    .line 487
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "video"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    iput-object v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    .line 488
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    iput-object v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    .line 490
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->WVM:Lcom/brightcove/player/media/DeliveryType;

    if-eq v0, v1, :cond_1

    .line 497
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v1, "didSetSource"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    iget-object v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v3, v3, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-static {v0, v1, v2, v3}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    goto :goto_0
.end method
