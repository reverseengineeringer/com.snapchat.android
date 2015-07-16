.class public Lcom/snapchat/videotranscoder/video/VideoProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/video/VideoProvider$1;,
        Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;,
        Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoProvider"


# instance fields
.field private mDurationUs:J

.field private mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

.field private mVideoDecoderDone:Z

.field private mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

.field private mVideoExtractorDone:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 7
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 42
    invoke-direct {p0, p2, p4}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-boolean v6, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractorDone:Z

    .line 24
    iput-boolean v6, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoderDone:Z

    .line 44
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mediaSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;-><init>(Lcom/snapchat/videotranscoder/video/VideoProvider;Lcom/snapchat/videotranscoder/video/VideoProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 48
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    new-instance v3, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;

    invoke-direct {v3, p0, v4}, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;-><init>(Lcom/snapchat/videotranscoder/video/VideoProvider;Lcom/snapchat/videotranscoder/video/VideoProvider$1;)V

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getTransformationMatrix()[F

    move-result-object v4

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    .line 54
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->setDecoderCodec(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 55
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    check-cast v0, Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->setEncoder(Lcom/snapchat/videotranscoder/video/VideoEncoder;)V

    .line 56
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getFilter()Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Z)V

    .line 58
    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mDurationUs:J

    .line 59
    return-void

    :cond_2
    move v0, v6

    .line 56
    goto :goto_0
.end method

.method static synthetic access$202(Lcom/snapchat/videotranscoder/video/VideoProvider;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractorDone:Z

    return p1
.end method

.method static synthetic access$302(Lcom/snapchat/videotranscoder/video/VideoProvider;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoderDone:Z

    return p1
.end method


# virtual methods
.method public getPercentComplete()I
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->getLastPresentationTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mDurationUs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public processFrame()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mDone:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 86
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractorDone:Z

    if-nez v0, :cond_0

    .line 87
    const-string v0, "VideoProvider"

    const-string v1, "Calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->processFrame()V

    .line 89
    const-string v0, "VideoProvider"

    const-string v1, "done Calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoderDone:Z

    if-nez v0, :cond_3

    .line 94
    const-string v0, "VideoProvider"

    const-string v1, "Calling video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->processFrame()V

    .line 96
    const-string v0, "VideoProvider"

    const-string v1, "done Calling video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_1
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoProvider;->stageComplete()V

    .line 103
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 83
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "VideoProvider"

    const-string v1, "releasing video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->release()V

    .line 68
    iput-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 70
    const-string v0, "VideoProvider"

    const-string v1, "releasing video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->stop()V

    .line 72
    iput-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->mVideoDecoder:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    .line 74
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->release()V

    .line 75
    return-void
.end method
