.class public Lcom/brightcove/player/view/BrightcoveTextureVideoView;
.super Lcom/brightcove/player/view/BaseVideoView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/view/BrightcoveTextureVideoView$1;,
        Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

.field protected textureListener:Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRenderView()Lcom/brightcove/player/view/RenderView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-direct {v0, p1}, Lcom/brightcove/player/view/BrightcoveTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    .line 101
    new-instance v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;-><init>(Lcom/brightcove/player/view/BrightcoveTextureVideoView;Lcom/brightcove/player/view/BrightcoveTextureVideoView$1;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->textureListener:Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;

    .line 102
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->textureListener:Lcom/brightcove/player/view/BrightcoveTextureVideoView$TextureListener;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 103
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->addView(Landroid/view/View;)V

    .line 104
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 94
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method protected resetMetaData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0, v1, v1}, Lcom/brightcove/player/view/BrightcoveTextureView;->setVideoSize(II)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/brightcove/player/view/BaseVideoView;->resetMetaData()V

    .line 129
    return-void
.end method

.method protected setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V

    .line 134
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;-><init>(Lcom/brightcove/player/view/RenderView;Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    .line 135
    return-void
.end method

.method protected showMediaController()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->brightcoveTextureView:Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 80
    :cond_0
    return-void
.end method
