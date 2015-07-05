.class public Lcom/addlive/view/CircleVideoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"


# instance fields
.field private glThread:Lcom/addlive/view/GLThread;

.field private mirror:Z

.field private renderer:Lcom/addlive/view/VideoRenderer;

.field private sinkId:Ljava/lang/String;

.field private started:Z

.field private type:Lcom/addlive/view/VideoViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->sinkId:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/addlive/view/CircleVideoTextureView;->mirror:Z

    .line 22
    iput-boolean v1, p0, Lcom/addlive/view/CircleVideoTextureView;->started:Z

    .line 30
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoTextureView;->constructCommon()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->sinkId:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/addlive/view/CircleVideoTextureView;->mirror:Z

    .line 22
    iput-boolean v1, p0, Lcom/addlive/view/CircleVideoTextureView;->started:Z

    .line 35
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoTextureView;->constructCommon()V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/view/CircleVideoTextureView;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/addlive/view/CircleVideoTextureView;->mirror:Z

    return v0
.end method

.method static synthetic access$200(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/VideoRenderer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/addlive/view/CircleVideoTextureView;)Lcom/addlive/view/GLThread;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    return-object v0
.end method

.method private constructCommon()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->type:Lcom/addlive/view/VideoViewType;

    .line 42
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoTextureView;->type:Lcom/addlive/view/VideoViewType;

    invoke-direct {v0, v1}, Lcom/addlive/view/VideoRenderer;-><init>(Lcom/addlive/view/VideoViewType;)V

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoTextureView;->setOpaque(Z)V

    .line 44
    new-instance v0, Lcom/addlive/view/GLThread;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    iget-object v2, p0, Lcom/addlive/view/CircleVideoTextureView;->type:Lcom/addlive/view/VideoViewType;

    invoke-direct {v0, v1, v2}, Lcom/addlive/view/GLThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;Lcom/addlive/view/VideoViewType;)V

    iput-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    .line 45
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->start()V

    .line 48
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/addlive/view/CircleVideoTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 51
    :cond_1
    invoke-virtual {p0, p0}, Lcom/addlive/view/CircleVideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/CircleVideoTextureView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setStarted(Z)V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/addlive/view/CircleVideoTextureView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p1}, Lcom/addlive/view/GLThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 148
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceCreated()V

    .line 149
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 150
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceDestroyed()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 157
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public resolutionChanged(II)V
    .locals 3

    .prologue
    .line 121
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolutionChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/CircleVideoTextureView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/addlive/view/CircleVideoTextureView$3;-><init>(Lcom/addlive/view/CircleVideoTextureView;II)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v0, p1}, Lcom/addlive/view/VideoRenderer;->setRadius(F)V

    .line 101
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update the sink Id as rendering is active. Stop first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/CircleVideoTextureView;->sinkId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 62
    const-string v0, "AddLive_SDK"

    const-string v1, "Starting ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/addlive/service/RenderRequest;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoTextureView;->sinkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/addlive/view/CircleVideoTextureView;->mirror:Z

    new-instance v3, Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/addlive/view/CircleVideoTextureView$InvalidateCallback;-><init>(Lcom/addlive/view/CircleVideoTextureView;Lcom/addlive/view/CircleVideoTextureView$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/service/RenderRequest;-><init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V

    .line 66
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/addlive/view/CircleVideoTextureView;->setStarted(Z)V

    .line 68
    iget-object v1, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v2, Lcom/addlive/view/CircleVideoTextureView$1;

    invoke-direct {v2, p0, v0}, Lcom/addlive/view/CircleVideoTextureView$1;-><init>(Lcom/addlive/view/CircleVideoTextureView;I)V

    invoke-virtual {v1, v2}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 76
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoTextureView;->forceLayout()V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "AddLive_SDK"

    const-string v1, "Stopping ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/view/CircleVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v1}, Lcom/addlive/view/VideoRenderer;->getRendererId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->stopRender(I)V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/addlive/view/CircleVideoTextureView;->setStarted(Z)V

    .line 89
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/CircleVideoTextureView$2;

    invoke-direct {v1, p0}, Lcom/addlive/view/CircleVideoTextureView$2;-><init>(Lcom/addlive/view/CircleVideoTextureView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestRender()V

    .line 96
    iget-object v0, p0, Lcom/addlive/view/CircleVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onPause()V

    .line 97
    return-void
.end method
