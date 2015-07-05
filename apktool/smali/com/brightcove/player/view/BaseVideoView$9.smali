.class Lcom/brightcove/player/view/BaseVideoView$9;
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
    .line 509
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$9;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$9;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$700(Lcom/brightcove/player/view/BaseVideoView;Z)V

    .line 513
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$9;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->showMediaController()V

    .line 514
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$9;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # invokes: Lcom/brightcove/player/view/BaseVideoView;->prebufferNextVideo()V
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$900(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 515
    return-void
.end method
