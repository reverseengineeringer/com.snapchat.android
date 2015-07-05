.class Lcom/brightcove/player/display/VideoDisplayComponent$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 951
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSeekComplete: fromSeekPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seekPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->reseeking:Z

    if-nez v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 958
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->reseeking:Z

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 960
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 961
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 962
    const-string v2, "playheadPosition"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v1, "seekPosition"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v1, "fromSeekPosition"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v1, "video"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$3400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "didSeekTo"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 967
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v0, v3}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2102(Lcom/brightcove/player/display/VideoDisplayComponent;I)I

    .line 968
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$6;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->reseeking:Z

    goto :goto_0
.end method
