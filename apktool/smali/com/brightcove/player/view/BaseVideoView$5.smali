.class Lcom/brightcove/player/view/BaseVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$5;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$5;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$600(Lcom/brightcove/player/view/BaseVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$5;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$600(Lcom/brightcove/player/view/BaseVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$5;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v2, v0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 478
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$5;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v2}, Lcom/brightcove/player/view/BaseVideoView;->access$700(Lcom/brightcove/player/view/BaseVideoView;Z)V

    .line 479
    return-void
.end method
