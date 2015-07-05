.class Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;
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
    name = "OnCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->nextSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_0

    .line 709
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "willChangeVideo"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;Ljava/util/UUID;)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 741
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 742
    const-string v2, "currentVideo"

    iget-object v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v3, v3, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v2, "nextVideo"

    iget-object v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v3, v3, Lcom/brightcove/player/display/VideoDisplayComponent;->nextVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v2, "uuid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2700(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v2, "willChangeVideo"

    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 747
    :cond_0
    return-void
.end method
