.class Lcom/brightcove/player/view/BaseVideoView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->attachMediaController()V
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
    .line 636
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 645
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->seekTo(I)V

    .line 660
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$14;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->start()V

    .line 640
    return-void
.end method
