.class public Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;
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
    name = "OnDidSeekToListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    const-string v2, "seekPosition"

    invoke-virtual {p1, v2}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v1, v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$002(Lcom/brightcove/player/controller/VideoPlaybackController;I)I

    .line 377
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v2

    # invokes: Lcom/brightcove/player/controller/VideoPlaybackController;->emitCuePoints(II)V
    invoke-static {v1, v0, v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1400(Lcom/brightcove/player/controller/VideoPlaybackController;II)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v2

    # invokes: Lcom/brightcove/player/controller/VideoPlaybackController;->emitCuePoints(II)V
    invoke-static {v1, v2, v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1400(Lcom/brightcove/player/controller/VideoPlaybackController;II)V

    goto :goto_0
.end method
