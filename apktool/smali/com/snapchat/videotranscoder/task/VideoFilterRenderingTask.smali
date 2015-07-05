.class public Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
.super Lcom/snapchat/videotranscoder/task/Task;
.source "SourceFile"


# static fields
.field private static final ABORT_TIMEOUT:I = 0x64

.field private static final NORMAL_VOLUME:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFilterRenderingTask"


# instance fields
.field private final mAbortLock:Ljava/lang/Object;

.field private volatile mAborted:Z

.field private mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

.field private final mDisplaySurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private final mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private final mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private final mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

.field private final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

.field private mVolume:F


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/cts/InputSurface;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/videotranscoder/cts/InputSurface;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/Task;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAborted:Z

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mVolume:F

    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mediaSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "leftFilter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rightFilter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "displaySurface is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_4
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 56
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    .line 57
    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mDisplaySurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 58
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 59
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 60
    return-void
.end method

.method private renderVideo(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 3
    .param p1    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/cts/InputSurface;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 158
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1, p1, p2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    .line 159
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->prepareThreads()V

    .line 160
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->changeFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mVolume:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->setVolume(F)V

    .line 162
    if-eqz p3, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->onProgressUpdated(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->render(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 168
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->release()V

    .line 169
    return-void
.end method


# virtual methods
.method public changeFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->changeFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    .line 133
    return-void
.end method

.method public changeSplit(F)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->changeSplit(F)V

    .line 144
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->release()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    .line 176
    :cond_0
    return-void
.end method

.method public run(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mDisplaySurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-direct {p0, v0, v1, p1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->renderVideo(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 74
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAborted:Z

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAborted:Z

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 85
    :catch_1
    move-exception v0

    .line 78
    :try_start_4
    new-instance v1, Lcom/snapchat/videotranscoder/task/TranscodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception during rendering: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAborted:Z

    .line 83
    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 116
    iput p1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mVolume:F

    .line 117
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mVolume:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->setVolume(F)V

    .line 120
    :cond_0
    return-void
.end method

.method public tryAbort()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->abort()V

    .line 110
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->ABORTED:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 112
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method

.method public waitForAbort()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAborted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mCurrentRenderer:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->mAbortLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
