.class public Lcom/addlive/impl/cam/ADLCameraHelper;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;,
        Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;
    }
.end annotation


# static fields
.field private static final NUM_BUFFERS:I = 0x2

.field private static selectedCam:Ljava/lang/String;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private cameraDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private firstFrameLatch:Ljava/util/concurrent/CountDownLatch;

.field private fps:I

.field private frameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

.field private height:I

.field private id2IdxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private prevOrientation:I

.field private taskHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v0}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/addlive/impl/cb/ADLInjectFrameCb;Lcom/addlive/impl/cam/CaptureConfig;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "CameraHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->cameraDevices:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->taskHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->prevOrientation:I

    .line 91
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    .line 92
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    .line 93
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getFps()I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->fps:I

    .line 94
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->frameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

    .line 96
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraHelper;->start()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->taskHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/addlive/impl/cam/ADLCameraHelper;->configInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/addlive/impl/cam/ADLCameraHelper;->stopInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/addlive/impl/cam/ADLCameraHelper;->doOnCamInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    return-void
.end method

.method private configInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 135
    :try_start_0
    const-string v0, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting up hardware camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    sget-object v2, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getOrientation(Z)I

    move-result v0

    .line 148
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 149
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 150
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 151
    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 152
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->fps:I

    invoke-virtual {p0, v2, v3}, Lcom/addlive/impl/cam/ADLCameraHelper;->getFrameRateRange(Ljava/util/List;I)[I

    move-result-object v2

    .line 154
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 155
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 156
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 157
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    mul-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    move v0, v1

    .line 158
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "Failed to open camera device. It\'s most likely already in use."

    .line 141
    const-string v2, "AddLive_SDK"

    invoke-static {v2, v1, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 167
    :goto_1
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getOrientation(Z)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->prevOrientation:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 161
    :catch_1
    move-exception v0

    .line 162
    :try_start_4
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to configure the camera"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got an exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method private doOnCamInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-interface {p2, v0}, Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;->workOnCam(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 264
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    :try_start_1
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to perform camera operation"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p3, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got an exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static getSelectedCam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    return-object v0
.end method

.method private processFrame([B)V
    .locals 10

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 419
    const-string v0, "AddLive_SDK"

    const-string v1, "Got new frame on already disposed camera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->getOrientation(Z)I

    move-result v6

    .line 423
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->prevOrientation:I

    if-eq v6, v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper;->getOrientation(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 425
    iput v6, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->prevOrientation:I

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 429
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 430
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->frameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    array-length v4, p1

    const/16 v5, 0x11

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/addlive/impl/cb/ADLInjectFrameCb;->injectFrame([BIIIIIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v1, "AddLive_SDK"

    const-string v2, "Error injectFrame: "

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSelectedCam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private stopInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 223
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to configure the camera"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got an exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method


# virtual methods
.method public checkHardware()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid context."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 371
    :goto_0
    if-nez v1, :cond_3

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera feature is not supported by system."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    .line 365
    goto :goto_0

    .line 374
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 376
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 379
    :goto_1
    if-ge v0, v1, :cond_5

    .line 380
    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 381
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_4

    .line 382
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->cameraDevices:Ljava/util/List;

    new-instance v5, Lcom/addlive/service/Device;

    sget-object v6, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v6}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Front Camera"

    invoke-direct {v5, v6, v7}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    sget-object v5, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v5}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_4
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->cameraDevices:Ljava/util/List;

    new-instance v5, Lcom/addlive/service/Device;

    sget-object v6, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v6}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Back Camera"

    invoke-direct {v5, v6, v7}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    sget-object v5, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v5}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 397
    :cond_5
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    sget-object v1, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 398
    sget-object v0, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v0}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    .line 401
    :cond_6
    return-void
.end method

.method public configure(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 119
    new-instance v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Lcom/addlive/impl/cam/ADLCameraHelper$1;)V

    .line 120
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->taskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/addlive/impl/cam/ADLCameraHelper$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper$1;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->firstFrameLatch:Ljava/util/concurrent/CountDownLatch;

    .line 127
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 128
    iget-boolean v0, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/IOException;

    iget-object v1, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraHelper;->quit()Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public doOnCam(Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;)V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 241
    new-instance v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Lcom/addlive/impl/cam/ADLCameraHelper$1;)V

    .line 242
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->taskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/addlive/impl/cam/ADLCameraHelper$3;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/addlive/impl/cam/ADLCameraHelper$3;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 249
    iget-boolean v0, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to stop the camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
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
    .line 307
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->cameraDevices:Ljava/util/List;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRateRange(Ljava/util/List;I)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;I)[I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 311
    mul-int/lit16 v3, p2, 0x3e8

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 315
    const/16 v6, 0x5b

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v0, v0, v8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "], "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "AddLive_SDK"

    const-string v5, "Looking up for best frame rate range within available ones:"

    invoke-static {v0, v5}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "AddLive_SDK"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 327
    aget v7, v0, v8

    if-gt v7, v3, :cond_2

    .line 328
    aget v7, v0, v8

    if-ge v1, v7, :cond_1

    .line 329
    aget v1, v0, v8

    .line 331
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    move v1, v0

    .line 333
    goto :goto_1

    .line 335
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 337
    const-string v1, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The camera does not support framerate as low as the requested one. Will use the lowest framerate range possible: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_2
    return-object v0

    .line 342
    :cond_4
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 345
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 346
    aget v7, v0, v8

    if-ne v7, v1, :cond_5

    .line 347
    aget v7, v0, v4

    if-ge v2, v7, :cond_6

    .line 348
    aget v2, v0, v4

    .line 349
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 351
    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 355
    :cond_7
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 356
    const-string v1, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Will use FPS range: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    return v0
.end method

.method public getOrientation(Z)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    sget-object v1, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 175
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 177
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 179
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_0

    .line 184
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 196
    :goto_0
    return v0

    .line 186
    :cond_0
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 189
    :cond_1
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_2

    .line 190
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    mul-int/lit8 v0, v0, 0x5a

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 191
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 193
    :cond_2
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    mul-int/lit8 v0, v0, 0x5a

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    return v0
.end method

.method public isCamWorking()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/addlive/impl/cam/ADLCameraHelper;->processFrame([B)V

    .line 407
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 408
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->firstFrameLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->firstFrameLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->firstFrameLatch:Ljava/util/concurrent/CountDownLatch;

    .line 412
    :cond_0
    return-void
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x3ea

    .line 282
    :try_start_0
    const-string v1, "global.dev.camera.FPS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->fps:I

    .line 300
    :goto_0
    const/4 v0, 0x0

    .line 302
    :cond_0
    :goto_1
    return v0

    .line 284
    :cond_1
    const-string v1, "global.dev.camera.height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    goto :goto_1

    .line 286
    :cond_2
    const-string v1, "global.dev.camera.width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    goto :goto_0

    .line 288
    :cond_3
    const-string v1, "global.dev.camera.mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "(\\d{1,3})x(\\d{1,3})@(\\d{1,2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->width:I

    .line 295
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->height:I

    .line 296
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->fps:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->id2IdxMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no camera device with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    sget-object v0, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    sput-object p1, Lcom/addlive/impl/cam/ADLCameraHelper;->selectedCam:Ljava/lang/String;

    .line 114
    :cond_1
    return-void
.end method

.method public stopCam()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 201
    new-instance v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Lcom/addlive/impl/cam/ADLCameraHelper$1;)V

    .line 202
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper;->taskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/addlive/impl/cam/ADLCameraHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/addlive/impl/cam/ADLCameraHelper$2;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 209
    iget-boolean v0, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to stop the camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method
