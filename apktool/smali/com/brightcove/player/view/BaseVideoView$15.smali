.class Lcom/brightcove/player/view/BaseVideoView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;

.field final synthetic val$index:I

.field final synthetic val$uniqueKey:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;Ljava/util/UUID;I)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$15;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput-object p2, p0, Lcom/brightcove/player/view/BaseVideoView$15;->val$uniqueKey:Ljava/util/UUID;

    iput p3, p0, Lcom/brightcove/player/view/BaseVideoView$15;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 969
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$15;->val$uniqueKey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$15;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->resetMetaData()V

    .line 972
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$15;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView$15;->val$index:I

    # setter for: Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$302(Lcom/brightcove/player/view/BaseVideoView;I)I

    .line 974
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "nextVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 976
    if-eqz v0, :cond_1

    .line 977
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$15;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v1, v1, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "setVideo"

    invoke-static {v1, v2, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$15;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "setSource"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    goto :goto_0
.end method
