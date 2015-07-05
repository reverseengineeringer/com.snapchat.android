.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "ttmlDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/TTMLDocument;

    .line 768
    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->prepareDFXPCaptions(Lcom/brightcove/player/model/TTMLDocument;)V

    .line 779
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "webvttDocument"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/WebVTTDocument;

    .line 772
    if-eqz v0, :cond_1

    .line 773
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->prepareWebVTTCaptions(Lcom/brightcove/player/model/WebVTTDocument;)V

    goto :goto_0

    .line 775
    :cond_1
    sget-object v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->TAG:Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$2;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->clear()V

    goto :goto_0
.end method
