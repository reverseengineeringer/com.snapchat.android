.class Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/VideoPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnProgressUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/VideoPlaybackController;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/controller/VideoPlaybackController;Lcom/brightcove/player/controller/VideoPlaybackController$1;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 318
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # setter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v2, v0}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$002(Lcom/brightcove/player/controller/VideoPlaybackController;I)I

    .line 328
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    iget-object v2, p0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;->this$0:Lcom/brightcove/player/controller/VideoPlaybackController;

    # getter for: Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I
    invoke-static {v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I

    move-result v2

    # invokes: Lcom/brightcove/player/controller/VideoPlaybackController;->emitCuePoints(II)V
    invoke-static {v0, v1, v2}, Lcom/brightcove/player/controller/VideoPlaybackController;->access$1400(Lcom/brightcove/player/controller/VideoPlaybackController;II)V

    .line 330
    :cond_0
    return-void
.end method
