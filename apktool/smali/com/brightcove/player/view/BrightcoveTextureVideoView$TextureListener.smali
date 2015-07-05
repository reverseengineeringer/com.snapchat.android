.class Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/view/BrightcoveTextureVideoView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/view/BrightcoveTextureVideoView;Lcom/brightcove/player/view/BrightcoveTextureVideoView$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;-><init>(Lcom/brightcove/player/view/BrightcoveTextureVideoView;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 143
    # getter for: Lcom/brightcove/player/view/BrightcoveTextureVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->access$100()Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "readyToPlay"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brightcove/player/display/VideoDisplayComponent;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 146
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 156
    # getter for: Lcom/brightcove/player/view/BrightcoveTextureVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->access$100()Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 150
    # getter for: Lcom/brightcove/player/view/BrightcoveTextureVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->access$100()Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brightcove/player/display/VideoDisplayComponent;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 152
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;->this$0:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 165
    return-void
.end method
