.class public Lcom/snapchat/videotranscoder/task/TranscodingTask;
.super Lcom/snapchat/videotranscoder/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/TranscodingTask$4;,
        Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_PROVIDER_FRAMES_PER_SECOND:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TranscodingTask"


# instance fields
.field private final mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

.field private mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

.field private mDurationConcatenatedWithoutConsideringCurrentSourceMs:J

.field private mLastPercentComplete:J

.field private mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

.field private mTotalDurationMs:J

.field private final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/Task;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mLastPercentComplete:J

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 61
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 63
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->validateSourcesAndCreateMixer()V

    .line 64
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->calculateTotalDuration()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mDurationConcatenatedWithoutConsideringCurrentSourceMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTotalDurationMs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mLastPercentComplete:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/snapchat/videotranscoder/task/TranscodingTask;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mLastPercentComplete:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/snapchat/videotranscoder/task/TranscodingTask;)Lcom/snapchat/videotranscoder/utils/TranscodingResources;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    return-object v0
.end method

.method private calculateTotalDuration()V
    .locals 8

    .prologue
    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTotalDurationMs:J

    .line 379
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 380
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTotalDurationMs:J

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/task/MediaSource;->getDisplayTimeMs()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTotalDurationMs:J

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method private concatenateBitmap(Lcom/snapchat/videotranscoder/task/BitmapMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
    .locals 8
    .param p1    # Lcom/snapchat/videotranscoder/task/BitmapMediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .line 349
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getAudioEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/BitmapMediaSource;J)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 368
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->transcode(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->release()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 372
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->advanceBasePresentationTimeUsToLatestFrameWritten()V

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method private concatenateImageFile(Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
    .locals 8
    .param p1    # Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .line 247
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 248
    if-nez v5, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    .line 252
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getAudioEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Landroid/graphics/Bitmap;J)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 271
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->transcode(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->release()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 275
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->advanceBasePresentationTimeUsToLatestFrameWritten()V

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private concatenateVideoFile(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
    .locals 6
    .param p1    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 293
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getAudioEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 328
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->transcode(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 329
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->release()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 332
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->advanceBasePresentationTimeUsToLatestFrameWritten()V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method private runInternal(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 10
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1, v4}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->onProgressUpdated(I)V

    .line 136
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mDurationConcatenatedWithoutConsideringCurrentSourceMs:J

    .line 139
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_a

    aget-object v1, v6, v5

    .line 140
    if-eqz p1, :cond_2

    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;

    invoke-direct {v0, p0, v1, p1}, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    move-object v2, v0

    .line 143
    :goto_1
    instance-of v0, v1, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 144
    check-cast v0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    .line 145
    invoke-direct {p0, v0, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->concatenateImageFile(Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 146
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_3

    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 190
    :cond_1
    :goto_3
    return-void

    .line 140
    :cond_2
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move v0, v4

    .line 146
    goto :goto_2

    .line 149
    :cond_4
    instance-of v0, v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 150
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    .line 151
    invoke-direct {p0, v0, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->concatenateVideoFile(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 152
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_5

    :goto_4
    invoke-static {v3}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4

    .line 155
    :cond_6
    instance-of v0, v1, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 156
    check-cast v0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

    .line 157
    invoke-direct {p0, v0, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->concatenateBitmap(Lcom/snapchat/videotranscoder/task/BitmapMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_7

    :goto_5
    invoke-static {v3}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_5

    .line 162
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled media source type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_9
    iget-wide v8, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mDurationConcatenatedWithoutConsideringCurrentSourceMs:J

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/MediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mDurationConcatenatedWithoutConsideringCurrentSourceMs:J

    .line 139
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 169
    :cond_a
    const-string v0, "TranscodingTask"

    const-string v1, "releasing Mixer"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->release()V

    .line 173
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->shouldWriteSnapSegmentMetadata()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->writeSnapSegmentMetadata()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_b
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/Utils;->createFileSizeLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "TranscodingTask"

    invoke-static {v1, v0}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 187
    if-eqz p1, :cond_1

    .line 188
    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->onProgressUpdated(I)V

    goto/16 :goto_3

    .line 176
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Failed to write snap segment metadata"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateSourcesAndCreateMixer()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v4

    .line 74
    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 76
    sget-object v2, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->NO:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    .line 77
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->NO:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 79
    array-length v5, v4

    move v3, v1

    move-object v1, v0

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 80
    instance-of v6, v0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    if-eqz v6, :cond_1

    .line 81
    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 79
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0

    .line 82
    :cond_1
    instance-of v6, v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    if-eqz v6, :cond_3

    .line 83
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    .line 85
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getVideoChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    move-result-object v6

    sget-object v7, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v6}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 87
    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getAudioChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    move-result-object v0

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getAudioEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 92
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    :goto_3
    move-object v2, v0

    .line 94
    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

    if-eqz v1, :cond_4

    .line 95
    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->YES:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    goto :goto_2

    .line 97
    :cond_4
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal media source type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_5
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getOutputPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Mixer;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 102
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method private writeSnapSegmentMetadata()V
    .locals 8

    .prologue
    .line 389
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v1

    .line 390
    array-length v0, v1

    new-array v4, v0, [J

    .line 392
    const-wide/16 v2, 0x0

    .line 393
    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 394
    aput-wide v2, v4, v0

    .line 395
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/videotranscoder/task/MediaSource;->getDisplayTimeMs()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;-><init>(Ljava/lang/String;)V

    .line 399
    new-instance v1, Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-direct {v1, v4}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;-><init>([J)V

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->setSnapSegments(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V

    .line 400
    return-void
.end method


# virtual methods
.method public run(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->runInternal(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    return-void

    .line 115
    :catch_0
    move-exception v0

    throw v0

    .line 117
    :catch_1
    move-exception v0

    throw v0

    .line 119
    :catch_2
    move-exception v0

    .line 120
    new-instance v1, Lcom/snapchat/videotranscoder/task/TranscodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception during transcoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tryAbort()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->ABORTED:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 228
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->mCurrentTranscoder:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->abort()V

    .line 232
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method
