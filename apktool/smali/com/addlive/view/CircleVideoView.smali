.class public Lcom/addlive/view/CircleVideoView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/InvalidateCb;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"


# instance fields
.field private mirror:Z

.field private renderer:Lcom/addlive/view/VideoRenderer;

.field private sinkId:Ljava/lang/String;

.field private started:Z

.field private type:Lcom/addlive/view/VideoViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->sinkId:Ljava/lang/String;

    .line 21
    iput-boolean v6, p0, Lcom/addlive/view/CircleVideoView;->mirror:Z

    .line 23
    iput-boolean v6, p0, Lcom/addlive/view/CircleVideoView;->started:Z

    .line 30
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->setEGLContextClientVersion(I)V

    .line 35
    sget-object v0, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->type:Lcom/addlive/view/VideoViewType;

    .line 37
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/addlive/view/CircleVideoView;->setEGLConfigChooser(IIIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 40
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoView;->type:Lcom/addlive/view/VideoViewType;

    invoke-direct {v0, v1}, Lcom/addlive/view/VideoRenderer;-><init>(Lcom/addlive/view/VideoViewType;)V

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 41
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 43
    invoke-virtual {p0, v6}, Lcom/addlive/view/CircleVideoView;->setRenderMode(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->sinkId:Ljava/lang/String;

    .line 21
    iput-boolean v6, p0, Lcom/addlive/view/CircleVideoView;->mirror:Z

    .line 23
    iput-boolean v6, p0, Lcom/addlive/view/CircleVideoView;->started:Z

    .line 49
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->setEGLContextClientVersion(I)V

    .line 54
    sget-object v0, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->type:Lcom/addlive/view/VideoViewType;

    .line 56
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/addlive/view/CircleVideoView;->setEGLConfigChooser(IIIIII)V

    .line 57
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->setZOrderOnTop(Z)V

    .line 60
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoView;->type:Lcom/addlive/view/VideoViewType;

    invoke-direct {v0, v1}, Lcom/addlive/view/VideoRenderer;-><init>(Lcom/addlive/view/VideoViewType;)V

    iput-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 61
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 63
    invoke-virtual {p0, v6}, Lcom/addlive/view/CircleVideoView;->setRenderMode(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/addlive/view/CircleVideoView;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/addlive/view/CircleVideoView;->mirror:Z

    return v0
.end method

.method static synthetic access$100(Lcom/addlive/view/CircleVideoView;)Lcom/addlive/view/VideoRenderer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    return-object v0
.end method

.method private declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/CircleVideoView;->started:Z
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
    .line 151
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/addlive/view/CircleVideoView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/addlive/view/CircleVideoView;->requestRender()V

    goto :goto_0
.end method

.method public resolutionChanged(II)V
    .locals 3

    .prologue
    .line 122
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

    .line 123
    new-instance v0, Lcom/addlive/view/CircleVideoView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/addlive/view/CircleVideoView$3;-><init>(Lcom/addlive/view/CircleVideoView;II)V

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v0, p1}, Lcom/addlive/view/VideoRenderer;->setRadius(F)V

    .line 68
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/addlive/view/CircleVideoView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update the sink Id as rendering is active. Stop first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/CircleVideoView;->sinkId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/addlive/service/RenderRequest;

    iget-object v1, p0, Lcom/addlive/view/CircleVideoView;->sinkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/addlive/view/CircleVideoView;->mirror:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/addlive/service/RenderRequest;-><init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V

    .line 77
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    .line 78
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/addlive/view/CircleVideoView;->setStarted(Z)V

    .line 79
    new-instance v1, Lcom/addlive/view/CircleVideoView$1;

    invoke-direct {v1, p0, v0}, Lcom/addlive/view/CircleVideoView$1;-><init>(Lcom/addlive/view/CircleVideoView;I)V

    invoke-virtual {p0, v1}, Lcom/addlive/view/CircleVideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/view/CircleVideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v1}, Lcom/addlive/view/VideoRenderer;->getRendererId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->stopRender(I)V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/addlive/view/CircleVideoView;->setStarted(Z)V

    .line 95
    new-instance v0, Lcom/addlive/view/CircleVideoView$2;

    invoke-direct {v0, p0}, Lcom/addlive/view/CircleVideoView$2;-><init>(Lcom/addlive/view/CircleVideoView;)V

    invoke-virtual {p0, v0}, Lcom/addlive/view/CircleVideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method
