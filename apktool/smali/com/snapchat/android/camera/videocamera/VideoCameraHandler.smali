.class public final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.super Lcom/snapchat/android/util/WaitDoneHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;,
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;,
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;,
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;
    }
.end annotation


# instance fields
.field protected a:Ljava/io/File;

.field protected final b:Landroid/media/MediaRecorder;

.field public c:Landroid/view/Surface;

.field public d:Lxi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

.field private h:J

.field private final i:Lne;

.field private final j:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6

    .prologue
    .line 137
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    new-instance v3, Lne;

    invoke-direct {v3}, Lne;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;-><init>(Landroid/os/Looper;Landroid/media/MediaRecorder;Lne;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/android/analytics/CameraEventAnalytics;)V

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/media/MediaRecorder;Lne;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/android/analytics/CameraEventAnalytics;)V
    .locals 1
    .param p2    # Landroid/media/MediaRecorder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lne;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/analytics/CameraEventAnalytics;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/WaitDoneHandler;-><init>(Landroid/os/Looper;)V

    .line 148
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V

    .line 149
    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    .line 150
    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->i:Lne;

    .line 151
    iput-object p4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->g:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 152
    iput-object p5, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->j:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 153
    return-void
.end method

.method private a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/media/MediaRecorder;IILxm;)Z
    .locals 10

    .prologue
    .line 254
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v6

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/camera/model/CameraModel;

    iget v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 258
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->AMR_NB:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v3, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->H263:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->f:Lazo;

    new-instance v4, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;

    invoke-direct {v4, v2}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 260
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    if-nez v0, :cond_5

    .line 261
    :cond_3
    const/4 v0, 0x0

    .line 300
    :goto_1
    return v0

    .line 256
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :cond_5
    invoke-interface {v1}, Lwc$b;->b()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 265
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 269
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 271
    invoke-virtual {p4}, Lxm;->a()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 273
    invoke-virtual {p4, v0}, Lxm;->a(Landroid/media/CamcorderProfile;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 276
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: video size [%d x %d], filesize: %d, bitrate: %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p4}, Lxm;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p4, v0}, Lxm;->a(Landroid/media/CamcorderProfile;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p4}, Lxm;->a()J

    move-result-wide v2

    invoke-virtual {p4, v0}, Lxm;->a(Landroid/media/CamcorderProfile;)I

    move-result v4

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v5

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(IIJILcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 284
    iget v0, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-nez v0, :cond_8

    const/16 v0, 0x5a

    .line 285
    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 287
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 293
    :cond_7
    :try_start_0
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Preparing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 295
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Prepared!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 284
    :cond_8
    iget v1, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static {}, Lxg;->a()Lxg;

    invoke-static {}, Lxg;->c()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    :goto_3
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Recorder: exception preparing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 296
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    :try_start_0
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Starting..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 332
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Started successfully!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->h:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Recorder: IllegalStateException when calling start(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    goto :goto_0

    .line 338
    :catch_1
    move-exception v0

    .line 339
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Recorder: RuntimeException when calling start(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    goto :goto_0
.end method

.method private c()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    :try_start_0
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Stopping..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 355
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: Stop Successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Recorder: Problem while stopping! Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Recorder: Problem while stopping! Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0}, Lwc$b;->f()Z

    .line 376
    invoke-interface {v0}, Lwc$b;->e()V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 160
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 161
    return-void
.end method

.method public final a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Laue;Ljava/io/File;)V
    .locals 3
    .param p2    # Laue;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 174
    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    .line 175
    const/16 v0, 0x65

    invoke-virtual {p2}, Laue;->a()I

    move-result v1

    invoke-virtual {p2}, Laue;->b()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: START_RECORDING message received on handler"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    new-instance v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;)V

    iget-object v4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v1

    sget-object v4, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v1, v4, :cond_1

    new-instance v1, Lxl;

    invoke-direct {v1}, Lxl;-><init>()V

    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Landroid/media/MediaRecorder;IILxm;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lxk;

    invoke-direct {v1}, Lxk;-><init>()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d()V

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_START:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d()V

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: STOP_RECORDING message received on handler"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    move-result-object v4

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    if-ne v4, v1, :cond_5

    move v1, v2

    :goto_2
    sget-object v5, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$a;

    if-ne v4, v5, :cond_6

    :goto_3
    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d()V

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    iget-wide v4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->h:J

    long-to-float v2, v4

    if-eqz v1, :cond_4

    const-string v4, "VideoCameraUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Video File Size = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", length = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Landroid/net/Uri;)V

    invoke-static {v2}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->RECORDING_TOO_SHORT:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_STOP:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
