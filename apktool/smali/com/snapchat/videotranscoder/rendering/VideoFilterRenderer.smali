.class public Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFilterRenderer"


# instance fields
.field private volatile mAborted:Z

.field private volatile mAudioDecoderDone:Z

.field private mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

.field private volatile mAudioExtractorDone:Z

.field private mAudioThread:Ljava/lang/Runnable;

.field private mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

.field private mChangedShaders:Z

.field private mChangedSplit:Z

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private volatile mRestarting:Z

.field private mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

.field private mSplitLoc:F

.field private mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

.field private volatile mVideoExtractorDone:Z

.field private mVideoExtractorThread:Ljava/lang/Runnable;

.field private mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

.field private volatile mVideoFilterDecoderDone:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/cts/InputSurface;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Ljava/util/concurrent/ExecutorService;)V

    .line 115
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Ljava/util/concurrent/ExecutorService;)V
    .locals 5
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/cts/InputSurface;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractorDone:Z

    .line 43
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioDecoderDone:Z

    .line 44
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    .line 45
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z

    .line 46
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoderDone:Z

    .line 47
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRestarting:Z

    .line 49
    iput-object v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioThread:Ljava/lang/Runnable;

    .line 50
    iput-object v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorThread:Ljava/lang/Runnable;

    .line 52
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedShaders:Z

    .line 53
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedSplit:Z

    .line 54
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 55
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mSplitLoc:F

    .line 72
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v0

    const-string v1, "VideoFilterRenderer"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/Utils;->haveLooper(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "There is no looper thread"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mediaSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "displaySurface is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    iput-object p2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    .line 83
    iput-object p3, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 84
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->makeCurrent()V

    .line 86
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 90
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getTransformationMatrix()[F

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->setDecoderCodec(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0, p3}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->setInputSurface(Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    .line 100
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getAudioChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    if-ne v0, v1, :cond_5

    .line 101
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 103
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->setDecoderCodec(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 107
    :cond_5
    iput-object p4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 108
    return-void
.end method

.method static synthetic access$1000(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/video/VideoExtractor;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoderDone:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRestarting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioDecoderDone:Z

    return v0
.end method

.method static synthetic access$502(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioDecoderDone:Z

    return p1
.end method

.method static synthetic access$600(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractorDone:Z

    return v0
.end method

.method static synthetic access$702(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractorDone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z

    return v0
.end method

.method static synthetic access$902(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z

    return p1
.end method

.method private componentsFinished()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioDecoderDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractorDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoderDone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFilters()V
    .locals 3

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedShaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedSplit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mSplitLoc:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->changeSplit(F)V

    .line 286
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    .line 321
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->abort()V

    .line 322
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->abort()V

    .line 323
    return-void
.end method

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
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedShaders:Z

    .line 303
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mLeftFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 304
    iput-object p2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRightFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 305
    return-void
.end method

.method public changeSplit(F)V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mChangedSplit:Z

    .line 313
    iput p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mSplitLoc:F

    .line 314
    return-void
.end method

.method public prepareThreads()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;

    invoke-direct {v0, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioThread:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;

    invoke-direct {v0, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorThread:Ljava/lang/Runnable;

    .line 196
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->release()V

    .line 124
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->stop()V

    .line 130
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->release()V

    .line 136
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing audio track decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->stop()V

    .line 142
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    .line 144
    :cond_3
    return-void
.end method

.method public render(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioThread:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioThread:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorThread:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorThread:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->componentsFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->updateFilters()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoderDone:Z

    if-nez v0, :cond_3

    .line 219
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Calling rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->processFrame()V

    .line 221
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Done calling rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->componentsFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z

    if-nez v0, :cond_4

    .line 226
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRestarting:Z

    if-nez v0, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->restartComponents()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRestarting:Z

    .line 234
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->addImmediately()V

    goto :goto_0

    .line 240
    :cond_5
    return-void
.end method

.method public restartComponents()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;

    invoke-direct {v2, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->setVolume(F)V

    .line 292
    :cond_0
    return-void
.end method
