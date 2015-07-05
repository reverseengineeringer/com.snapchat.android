.class Lcom/brightcove/player/view/BaseVideoView$12;
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
    .line 532
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$12;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$12;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$12;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 537
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$12;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "progress"

    new-instance v2, Lcom/brightcove/player/view/BaseVideoView$12$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BaseVideoView$12$1;-><init>(Lcom/brightcove/player/view/BaseVideoView$12;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 544
    :cond_0
    return-void
.end method
