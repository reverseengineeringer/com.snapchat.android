.class Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;
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
    name = "OnWillInterruptContentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 772
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnWillInterruptContentListener: mediaPlayer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasPrepared = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 784
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    if-eq v0, v1, :cond_1

    .line 786
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 792
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/brightcove/player/view/RenderView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$3000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v1, "didInterruptContent"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 794
    return-void

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    goto :goto_0
.end method
