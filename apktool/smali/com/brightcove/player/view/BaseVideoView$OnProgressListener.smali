.class public Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 6
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 378
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget v1, v1, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    if-eq v0, v1, :cond_0

    .line 379
    # getter for: Lcom/brightcove/player/view/BaseVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BaseVideoView;->access$000()Ljava/lang/String;

    const-string v1, "Changing duration to %d."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    .line 382
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->showMediaController()V

    .line 385
    :cond_0
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 387
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget v1, v1, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    if-eq v0, v1, :cond_1

    .line 388
    # getter for: Lcom/brightcove/player/view/BaseVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BaseVideoView;->access$000()Ljava/lang/String;

    const-string v1, "Changing playheadPosition to %d."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 392
    :cond_1
    return-void
.end method
