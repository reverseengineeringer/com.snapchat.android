.class Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

.field final synthetic val$uniqueKey:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iput-object p2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->val$uniqueKey:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 715
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    .line 717
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->val$uniqueKey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    .line 720
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnCompletedListener: currentSource = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->nextSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->nextVideo:Lcom/brightcove/player/model/Video;

    iput-object v1, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    .line 723
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput-object v2, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->nextVideo:Lcom/brightcove/player/model/Video;

    .line 724
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->nextSource:Lcom/brightcove/player/model/Source;

    iput-object v1, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    .line 725
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput-object v2, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->nextSource:Lcom/brightcove/player/model/Source;

    .line 727
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2500(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string v1, "didSetSource"

    new-instance v2, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 736
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 738
    :cond_0
    return-void
.end method
