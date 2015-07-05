.class public Lcom/addlive/view/ALVideoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;
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

    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z

    .line 44
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->constructCommon()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z

    .line 49
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->constructCommon()V

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/view/ALVideoTextureView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    return v0
.end method

.method static synthetic access$200(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/VideoRenderer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/GLThread;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    return-object v0
.end method

.method private constructCommon()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/addlive/view/VideoViewType;->RECTANGLE:Lcom/addlive/view/VideoViewType;

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->type:Lcom/addlive/view/VideoViewType;

    .line 56
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    invoke-direct {v0}, Lcom/addlive/view/VideoRenderer;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 57
    new-instance v0, Lcom/addlive/view/GLThread;

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    iget-object v2, p0, Lcom/addlive/view/ALVideoTextureView;->type:Lcom/addlive/view/VideoViewType;

    invoke-direct {v0, v1, v2}, Lcom/addlive/view/GLThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;Lcom/addlive/view/VideoViewType;)V

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    .line 58
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->start()V

    .line 61
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/addlive/view/ALVideoTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 64
    :cond_1
    invoke-virtual {p0, p0}, Lcom/addlive/view/ALVideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z
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
    .line 148
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p1}, Lcom/addlive/view/GLThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 157
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceCreated()V

    .line 158
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 159
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceDestroyed()V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 166
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public resolutionChanged(II)V
    .locals 3

    .prologue
    .line 130
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

    .line 131
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/ALVideoTextureView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/addlive/view/ALVideoTextureView$3;-><init>(Lcom/addlive/view/ALVideoTextureView;II)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update the sink Id as rendering is active. Stop first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 75
    const-string v0, "AddLive_SDK"

    const-string v1, "Starting ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/addlive/service/RenderRequest;

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    new-instance v3, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;-><init>(Lcom/addlive/view/ALVideoTextureView;Lcom/addlive/view/ALVideoTextureView$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/service/RenderRequest;-><init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V

    .line 79
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    .line 80
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/addlive/view/ALVideoTextureView;->setStarted(Z)V

    .line 81
    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v2, Lcom/addlive/view/ALVideoTextureView$1;

    invoke-direct {v2, p0, v0}, Lcom/addlive/view/ALVideoTextureView$1;-><init>(Lcom/addlive/view/ALVideoTextureView;I)V

    invoke-virtual {v1, v2}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 89
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->forceLayout()V

    .line 91
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "AddLive_SDK"

    const-string v1, "Stopping ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v1}, Lcom/addlive/view/VideoRenderer;->getRendererId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->stopRender(I)V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/addlive/view/ALVideoTextureView;->setStarted(Z)V

    .line 102
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/ALVideoTextureView$2;

    invoke-direct {v1, p0}, Lcom/addlive/view/ALVideoTextureView$2;-><init>(Lcom/addlive/view/ALVideoTextureView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestRender()V

    .line 109
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onPause()V

    .line 110
    return-void
.end method
