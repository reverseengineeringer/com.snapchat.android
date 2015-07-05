.class Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPlayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 509
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnPlayListener: mediaPlayer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPrepared = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 515
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z
    invoke-static {v0, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1002(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z

    .line 517
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_5

    .line 520
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playheadPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 527
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # invokes: Lcom/brightcove/player/display/VideoDisplayComponent;->play(I)V
    invoke-static {v1, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1700(Lcom/brightcove/player/display/VideoDisplayComponent;I)V

    .line 578
    :goto_1
    return-void

    .line 523
    :cond_0
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnPlayListener: playheadPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    goto :goto_0

    .line 533
    :cond_1
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    goto :goto_1

    .line 536
    :cond_2
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 537
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "readyToPlay"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_1

    .line 546
    :cond_3
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "didSetSource"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$2;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$2;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_1

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput v2, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    .line 560
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 565
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "videoDurationChanged"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$3;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$3;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 573
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    goto :goto_1

    .line 576
    :cond_5
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    goto :goto_1
.end method
