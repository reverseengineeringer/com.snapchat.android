.class Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/view/BrightcoveVideoView$1;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 214
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Surface changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 216
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 201
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "readyToPlay"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 204
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 208
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 210
    return-void
.end method
