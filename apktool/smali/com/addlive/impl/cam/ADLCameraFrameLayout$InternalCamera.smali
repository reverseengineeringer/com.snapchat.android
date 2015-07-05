.class Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/cam/ADLCameraFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCamera"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFps:I

.field private mFrameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

.field private mHeight:I

.field private mId2IdxMap:Ljava/util/Map;
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

.field private mWidth:I

.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 310
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    .line 308
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCameraDevices:Ljava/util/List;

    .line 311
    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mWidth:I

    .line 313
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mHeight:I

    .line 314
    invoke-virtual {p3}, Lcom/addlive/impl/cam/CaptureConfig;->getFps()I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mFps:I

    .line 316
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid context."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 326
    :goto_0
    if-nez v1, :cond_3

    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera feature is not supported by system."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v0

    .line 320
    goto :goto_0

    .line 330
    :cond_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 332
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 335
    :goto_1
    if-ge v0, v1, :cond_5

    .line 336
    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 337
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_4

    .line 338
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCameraDevices:Ljava/util/List;

    new-instance v5, Lcom/addlive/service/Device;

    sget-object v6, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v6}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Front Camera"

    invoke-direct {v5, v6, v7}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    sget-object v5, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v5}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_4
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCameraDevices:Ljava/util/List;

    new-instance v5, Lcom/addlive/service/Device;

    sget-object v6, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v6}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Back Camera"

    invoke-direct {v5, v6, v7}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    sget-object v5, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v5}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 351
    sget-object v0, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v0}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->setSelectedCam(Ljava/lang/String;)V

    .line 353
    :cond_6
    return-void
.end method


# virtual methods
.method public configure()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    .line 357
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getOrientation()I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 359
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 360
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 361
    iget v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mWidth:I

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 362
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mFps:I

    invoke-virtual {p0, v1, v2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getFrameRateRange(Ljava/util/List;I)[I

    move-result-object v1

    .line 364
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 365
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 366
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
    .line 453
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCameraDevices:Ljava/util/List;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v0

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

    .line 457
    mul-int/lit16 v3, p2, 0x3e8

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 461
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

    .line 465
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "AddLive_SDK_FCam"

    const-string v5, "Looking up for best frame rate range within available ones:"

    invoke-static {v0, v5}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v0, "AddLive_SDK_FCam"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 472
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

    .line 473
    aget v7, v0, v8

    if-gt v7, v3, :cond_2

    .line 474
    aget v7, v0, v8

    if-ge v1, v7, :cond_1

    .line 475
    aget v1, v0, v8

    .line 477
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    move v1, v0

    .line 479
    goto :goto_1

    .line 481
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 483
    const-string v1, "AddLive_SDK_FCam"

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

    .line 502
    :goto_2
    return-object v0

    .line 488
    :cond_4
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 491
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

    .line 492
    aget v7, v0, v8

    if-ne v7, v1, :cond_5

    .line 493
    aget v7, v0, v4

    if-ge v2, v7, :cond_6

    .line 494
    aget v2, v0, v4

    .line 495
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 497
    :cond_6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 500
    :cond_7
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 501
    const-string v1, "AddLive_SDK_FCam"

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
    .line 419
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mHeight:I

    return v0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 398
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 400
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 402
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 405
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 406
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    mul-int/lit8 v0, v0, 0x5a

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 407
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 411
    :goto_0
    return v0

    .line 409
    :cond_0
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
    .line 415
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mWidth:I

    return v0
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x3ea

    .line 428
    :try_start_0
    const-string v1, "global.dev.camera.FPS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mFps:I

    .line 446
    :goto_0
    const/4 v0, 0x0

    .line 448
    :cond_0
    :goto_1
    return v0

    .line 430
    :cond_1
    const-string v1, "global.dev.camera.height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mHeight:I

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    goto :goto_1

    .line 432
    :cond_2
    const-string v1, "global.dev.camera.width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mWidth:I

    goto :goto_0

    .line 434
    :cond_3
    const-string v1, "global.dev.camera.mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const-string v1, "(\\d{1,3})x(\\d{1,3})@(\\d{1,2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 436
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mWidth:I

    .line 441
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mHeight:I

    .line 442
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mFps:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mId2IdxMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
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

    .line 373
    :cond_0
    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {p1}, Lcom/addlive/impl/cam/ADLCameraHelper;->setSelectedCam(Ljava/lang/String;)V

    .line 376
    :cond_1
    return-void
.end method

.method public start(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 383
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 391
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method
