.class Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;


# direct methods
.method constructor <init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 183
    iget-object v1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->checkIfCaptionsExist(Lcom/brightcove/player/model/Video;)Ljava/net/URI;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/brightcove/player/captioning/LoadCaptionsService;

    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    # getter for: Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->access$100(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/brightcove/player/captioning/LoadCaptionsService;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    .line 188
    invoke-virtual {v1, v0}, Lcom/brightcove/player/captioning/LoadCaptionsService;->loadCaptions(Ljava/net/URI;)V

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    # invokes: Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->addCaptioningChangeListener()V
    invoke-static {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->access$200(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$3;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    # invokes: Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->removeCaptioningChangeListener()V
    invoke-static {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->access$300(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V

    goto :goto_0
.end method
