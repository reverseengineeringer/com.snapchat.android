.class public Lcom/addlive/impl/cam/ADLCameraSurfaceView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/addlive/impl/cam/ADLCamera;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK_SCam"


# instance fields
.field private camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

.field private holder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-direct {v0, p2, p1, p3}, Lcom/addlive/impl/cam/ADLCameraHelper;-><init>(Landroid/content/Context;Lcom/addlive/impl/cb/ADLInjectFrameCb;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    .line 48
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->checkHardware()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private declared-synchronized initCam()V
    .locals 4

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Initialising camera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 185
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v1, v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->configure(Ljava/util/concurrent/CountDownLatch;)V

    .line 186
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "AddLive_SDK_SCam"

    const-string v2, "Already received surface view. Starting preview"

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->startPreview()V

    .line 189
    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Failed to receive the first frame"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to receive frames from the camera"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_0
    :try_start_1
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Camera initialized"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized startPreview()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Starting preview"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Preview already started, skipping"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    new-instance v1, Lcom/addlive/impl/cam/ADLCameraSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView$2;-><init>(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper;->doOnCam(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->dispose()V

    .line 91
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
    .line 96
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getCameraDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0, p1, p2}, Lcom/addlive/impl/cam/ADLCameraHelper;->processProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0, p1}, Lcom/addlive/impl/cam/ADLCameraHelper;->setDevice(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V

    .line 104
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->initCam()V

    .line 106
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Starting camera preview"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface View cam used with a surface view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Camera was already in use. Releasing it"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->stop()V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->initCam()V

    move-object v0, p1

    .line 68
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 69
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    if-eq p1, v1, :cond_2

    .line 70
    check-cast p1, Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 71
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    :cond_2
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 76
    :cond_3
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Stopping camera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopCam()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Got surface texture changed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->isCamWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Cam is already working - skipping"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_0

    .line 144
    :try_start_2
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->camHelper:Lcom/addlive/impl/cam/ADLCameraHelper;

    new-instance v1, Lcom/addlive/impl/cam/ADLCameraSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView$1;-><init>(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper;->doOnCam(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 124
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Got surface texture available"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 156
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Got surface texture destroyed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
