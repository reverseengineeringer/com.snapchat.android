.class Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;
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
    name = "OnWillResumeContentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/brightcove/player/view/RenderView;->setVisibility(I)V

    .line 756
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "original"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/Event;

    .line 758
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnWillResumeContentListener: originalEvent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 760
    if-eqz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v1, "didResumeContent"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 765
    return-void
.end method
