.class public Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
.super Lcom/snapchat/videotranscoder/video/VideoDecoder;
.source "SourceFile"


# static fields
.field private static final NOT_INITIALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoFilterDecoder"


# instance fields
.field private final ACCEPTABLE_DELAY_US:I

.field private mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private mPrevMonoUsec:J

.field private mPrevPresentUsec:J


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[F)V
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    new-instance v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-direct {v0, p1, p4}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 27
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    .line 28
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevPresentUsec:J

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->ACCEPTABLE_DELAY_US:I

    .line 48
    return-void
.end method

.method private shouldDraw()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x0

    .line 124
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    .line 127
    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevPresentUsec:J

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevPresentUsec:J

    sub-long/2addr v2, v4

    .line 133
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    add-long/2addr v4, v2

    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    .line 135
    const-wide/16 v8, 0x64

    sub-long/2addr v4, v8

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    .line 137
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    .line 138
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevPresentUsec:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevPresentUsec:J

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addImmediately()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->drawImage()V

    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->swapBuffers()Z

    .line 117
    return-void
.end method

.method public changeSplit(F)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->changeSplit(F)V

    .line 73
    :cond_0
    return-void
.end method

.method protected outputFrame()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 91
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->shouldDraw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->updateImage()V

    .line 100
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->drawImage()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->swapBuffers()Z

    .line 103
    iput v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mFrameToProcess:I

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "VideoFilterDecoder"

    const-string v1, "Rendering decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->stageComplete()V

    .line 107
    iput v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mFrameToProcess:I

    goto :goto_0
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->flush()V

    .line 58
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mPrevMonoUsec:J

    .line 59
    return-void
.end method

.method public setInputSurface(Lcom/snapchat/videotranscoder/cts/InputSurface;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 67
    return-void
.end method

.method public setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V

    .line 85
    return-void
.end method
