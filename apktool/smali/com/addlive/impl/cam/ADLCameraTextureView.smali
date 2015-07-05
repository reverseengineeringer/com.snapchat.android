.class public Lcom/addlive/impl/cam/ADLCameraTextureView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/addlive/impl/cam/ADLCamera;


# instance fields
.field private camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

.field private ctx:Landroid/content/Context;

.field private surface:Landroid/graphics/SurfaceTexture;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-direct {v0, p2, p1, p3}, Lcom/addlive/impl/cam/ADLCameraHelper;-><init>(Landroid/content/Context;Lcom/addlive/impl/cb/ADLInjectFrameCb;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    .line 64
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->checkHardware()V

    .line 65
    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->ctx:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/impl/cam/ADLCameraTextureView;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->surface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private declared-synchronized startInternal()V
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 187
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v1, v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->configure(Ljava/util/concurrent/CountDownLatch;)V

    .line 188
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->surface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "AddLive_SDK"

    const-string v2, "Already received surface view. Starting preview"

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->startPreview()V

    .line 191
    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "AddLive_SDK"

    const-string v1, "Failed to receive the first frame"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V

    .line 194
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to receive frames from the camera"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_0
    :try_start_1
    const-string v0, "AddLive_SDK"

    const-string v1, "Camera initialized"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized startPreview()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "AddLive_SDK"

    const-string v1, "Cannot start preview as the camera was already disposed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    new-instance v1, Lcom/addlive/impl/cam/ADLCameraTextureView$1;

    invoke-direct {v1, p0}, Lcom/addlive/impl/cam/ADLCameraTextureView$1;-><init>(Lcom/addlive/impl/cam/ADLCameraTextureView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper;->doOnCam(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->dispose()V

    .line 115
    return-void
.end method

.method public getCameraDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getCameraDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 146
    const-string v0, "AddLive_SDK"

    const-string v1, "Got surface texture available"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->surface:Landroid/graphics/SurfaceTexture;

    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 162
    const-string v0, "AddLive_SDK"

    const-string v1, "Got surface texture destroyed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 165
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 157
    const-string v0, "AddLive_SDK"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0, p1, p2}, Lcom/addlive/impl/cam/ADLCameraHelper;->processProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0, p1}, Lcom/addlive/impl/cam/ADLCameraHelper;->setDevice(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V

    .line 128
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->startInternal()V

    .line 130
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "AddLive_SDK"

    const-string v1, "Starting camera preview"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    instance-of v0, p1, Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TextureView cam used with a surface view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "AddLive_SDK"

    const-string v1, "Camera was already in use. Releasing it"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->stop()V

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->startInternal()V

    .line 89
    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    .line 90
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setWillNotDraw(Z)V

    .line 91
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->surface:Landroid/graphics/SurfaceTexture;

    .line 93
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->startPreview()V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 96
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK"

    const-string v1, "Stopping camera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V

    .line 109
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
