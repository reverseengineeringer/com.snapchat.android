.class public Lcom/snapchat/videotranscoder/video/VideoDecoder;
.super Lcom/snapchat/videotranscoder/pipeline/Decoder;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "VIDEODECODER"


# instance fields
.field public mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

.field private mEncoder:Lcom/snapchat/videotranscoder/video/VideoEncoder;

.field private final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

.field tries:I


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/cts/OutputSurface;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->tries:I

    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputSurface is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 66
    iput-object p3, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 36
    new-instance v2, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLandroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # [F
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-virtual {p2, p1, p5, p6}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;->createOutputSurface(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)Lcom/snapchat/videotranscoder/cts/OutputSurface;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getFrameFromDecoder()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->dequeueOutputBuffer(J)I

    move-result v1

    .line 120
    const-string v2, "VIDEODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Buffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was returned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-gez v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->handleDequeueError(I)V

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isConfigBuffer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 130
    :cond_2
    const-string v2, "VIDEODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video decoder: returned buffer for time "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v4}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Rending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->releaseOutputBuffer(IZ)V

    .line 135
    iput v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mFrameToProcess:I

    goto :goto_0
.end method

.method public outputFrame()V
    .locals 6

    .prologue
    .line 141
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "output surface: await new image trie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->tries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->tries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->tries:I

    .line 143
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->checkForNewImage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mEncoder:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->getInputSurface()Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting encoder input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->drawImage()V

    .line 150
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;->setPresentationTime(J)V

    .line 151
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->swapBuffers()Z

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mFrameToProcess:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->tries:I

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "VIDEODECODER"

    const-string v1, "video decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mEncoder:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->signalEndOfInputStream()V

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->stageComplete()V

    .line 160
    :cond_2
    return-void
.end method

.method public processFrame()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 109
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mFrameToProcess:I

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->getFrameFromDecoder()V

    .line 112
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mFrameToProcess:I

    if-eq v0, v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->outputFrame()V

    .line 115
    :cond_1
    return-void
.end method

.method public setEncoder(Lcom/snapchat/videotranscoder/video/VideoEncoder;)V
    .locals 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mEncoder:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 84
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting encoder:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mEncoder:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Z)V
    .locals 3
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mDecoderOutputSurface not created"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting output surface shader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableOverlay(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V

    .line 80
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/Decoder;->stop()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "VIDEODECODER"

    const-string v1, "releasing output surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->release()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->mDecoderOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
