.class Lcom/brightcove/player/view/BaseVideoView$13;
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
    .line 547
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "ttmlDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "webvttDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
    invoke-static {v1}, Lcom/brightcove/player/view/BaseVideoView;->access$1000(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addView(Landroid/view/View;)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
    invoke-static {v0}, Lcom/brightcove/player/view/BaseVideoView;->access$1000(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$13;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    # getter for: Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
    invoke-static {v1}, Lcom/brightcove/player/view/BaseVideoView;->access$1000(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
