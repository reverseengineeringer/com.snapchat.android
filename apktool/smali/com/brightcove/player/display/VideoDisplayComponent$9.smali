.class Lcom/brightcove/player/display/VideoDisplayComponent$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 1003
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$9;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 1006
    packed-switch p2, :pswitch_data_0

    .line 1010
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$9;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    const/4 v1, 0x1

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$3202(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z

    .line 1011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1012
    const-string v1, "video"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$9;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string v1, "source"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$9;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v1, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v1, "errorExtra"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string v1, "errorMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-static {v3}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$9;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$3700(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string v2, "sourceNotPlayable"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 1023
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
