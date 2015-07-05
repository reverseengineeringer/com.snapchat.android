.class Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;


# direct methods
.method constructor <init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    iget-object v0, v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    iget-object v0, v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;-><init>()V

    .line 217
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v3, "isHLS"

    iget-object v4, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    # getter for: Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->isHLS:Z
    invoke-static {v4}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->access$400(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 220
    iget-object v2, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    iget-object v2, v2, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V

    .line 222
    const-string v2, "CaptionsOptionsDialog"

    invoke-virtual {v1, v0, v2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    iget-object v0, v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$5;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    iget-object v0, v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->videoPlayer:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->pause()V

    .line 228
    :cond_0
    return-void
.end method
