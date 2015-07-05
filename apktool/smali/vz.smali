.class public final Lvz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation


# instance fields
.field protected a:Lwk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lwj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lwn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final e:Laxc;

.field private final f:Lnk;


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Laxc;->a()Laxc;

    move-result-object v0

    new-instance v1, Lnk;

    invoke-direct {v1}, Lnk;-><init>()V

    invoke-direct {p0, v0, v1}, Lvz;-><init>(Laxc;Lnk;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Laxc;Lnk;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lvz;)V

    .line 70
    iput-object p1, p0, Lvz;->e:Laxc;

    .line 71
    iput-object p2, p0, Lvz;->f:Lnk;

    .line 72
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lvz;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    .line 192
    if-nez v0, :cond_1

    .line 193
    const-string v0, "Null camera when initializing VideoCameraHandler"

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v1, "VideoRecordingController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lvz;->b()V

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Video Recording Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    iget-object v1, p0, Lvz;->a:Lwk;

    new-instance v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Lwk;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lvv;Z)V
    .locals 2
    .param p1    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lvv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 178
    iget-object v0, p0, Lvz;->a:Lwk;

    iget-object v0, v0, Lwk;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 181
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->waitDone()Z

    .line 183
    :cond_0
    iget-object v0, p0, Lvz;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lvv;->a(Z)V

    .line 188
    :cond_1
    return-void
.end method

.method public final a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lvv;Laue;Landroid/view/Surface;)Z
    .locals 8
    .param p3    # Laue;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/view/Surface;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v0, p0, Lvz;->e:Laxc;

    invoke-virtual {v0}, Laxc;->b()Ljava/io/File;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lvz;->b:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    .line 82
    iget-object v2, p0, Lvz;->a:Lwk;

    iget-object v2, v2, Lwk;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    .line 83
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 84
    :cond_0
    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 89
    :goto_0
    const/4 v0, 0x0

    .line 116
    :goto_1
    return v0

    .line 87
    :cond_1
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v3, p0, Lvz;->a:Lwk;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lwk;->a:Z

    .line 93
    invoke-interface {v1}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lvz;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v4}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "continuous-video"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "continuous-video"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v4

    const-string v5, "USE_VIDEO_STABILIZATION"

    const-string v6, "option"

    const-string v7, "on"

    invoke-virtual {v4, v5, v6, v7}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lasu;->SUPPORTS_VIDEO_STABILIZATION:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_4
    invoke-interface {v1, v3}, Lwc$b;->a(Landroid/hardware/Camera$Parameters;)V

    .line 94
    :cond_5
    iget-object v3, p0, Lvz;->c:Lwj;

    iget-boolean v3, v3, Lwj;->a:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lvz;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lvv;->a(Z)V

    .line 103
    :cond_6
    :goto_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lwc$b;->a(Lwi;)V

    .line 105
    :try_start_0
    invoke-interface {v1}, Lwc$b;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    if-eqz p4, :cond_7

    .line 112
    iput-object p4, v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c:Landroid/view/Surface;

    .line 114
    :cond_7
    invoke-virtual {v2, p1, p3, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Laue;Ljava/io/File;)V

    .line 115
    iget-object v1, p0, Lvz;->f:Lnk;

    sget-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Laue;->c()D

    move-result-wide v2

    iget-object v0, v1, Lnk;->mScreenParameterProvider:Lov;

    iget-object v0, v0, Lov;->mResolution:Laue;

    invoke-virtual {v0}, Laue;->c()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v0, v1, Lnk;->mScreenParameterProvider:Lov;

    iget-object v0, v0, Lov;->mResolution:Laue;

    invoke-virtual {p3}, Laue;->a()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Laue;->a()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Laue;->a(D)Laue;

    move-result-object v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v0}, Laue;->d()I

    move-result v6

    invoke-virtual {p3}, Laue;->d()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Laue;->d()I

    move-result v0

    invoke-virtual {p3}, Laue;->d()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v0, v6, v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_a

    new-instance v0, Lny;

    invoke-direct {v0, v4, v5}, Lny;-><init>(D)V

    :goto_3
    if-eqz v0, :cond_8

    iget-object v1, v1, Lnk;->mExceptionReporter:Lazo;

    invoke-virtual {v1, v0}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 94
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lvv;->b(Z)V

    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->CAMERA_UNLOCK_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 108
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 115
    :cond_a
    const-wide/16 v6, 0x0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_b

    new-instance v0, Lnx;

    invoke-direct {v0, v4, v5}, Lnx;-><init>(D)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lvz;->a:Lwk;

    iget-object v0, v0, Lwk;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a()V

    .line 207
    :cond_0
    iget-object v0, p0, Lvz;->a:Lwk;

    const/4 v1, 0x0

    iput-object v1, v0, Lwk;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    .line 208
    return-void
.end method
