.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/VideoPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnWillChangeVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    const/4 v1, 0x0

    # setter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$002(Lcom/brightcove/player/controller/VideoPlaybackController;I)I

    .line 286
    return-void
.end method
