.class Lcom/brightcove/player/view/BaseVideoView$2;
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
    .line 408
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$2;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 5
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 412
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 414
    if-lez v0, :cond_0

    .line 415
    # getter for: Lcom/brightcove/player/view/BaseVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BaseVideoView;->access$000()Ljava/lang/String;

    const-string v1, "videoDurationChanged: changing duration to %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$2;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    .line 418
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$2;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->showMediaController()V

    .line 420
    :cond_0
    return-void
.end method
