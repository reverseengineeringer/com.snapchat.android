.class public Lcom/snapchat/videotranscoder/audio/AudioDecoder;
.super Lcom/snapchat/videotranscoder/pipeline/Decoder;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AUDIODECODER"


# instance fields
.field private mEncoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field protected mLastTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    .line 27
    return-void
.end method


# virtual methods
.method protected checkPresentationTime(I)J
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 78
    const-string v2, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio decoder: pending buffer of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " At "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 80
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio decoder out of sync last:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    .line 89
    :goto_1
    return-wide v0

    .line 79
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    goto :goto_1
.end method

.method protected getFrameFromDecoder()V
    .locals 6

    .prologue
    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    .line 35
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->dequeueOutputBuffer(J)I

    move-result v0

    .line 36
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returned index was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-gez v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->handleDequeueError(I)V

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isConfigBuffer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "AUDIODECODER"

    const-string v2, "audio decoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audio decoder: returned buffer for time "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audio decoder: output buffer is now pending: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    goto :goto_0
.end method

.method protected outputFrame()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mEncoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/videotranscoder/pipeline/Codec;->dequeueInputBuffer(J)I

    move-result v1

    .line 54
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 55
    const-string v0, "AUDIODECODER"

    const-string v1, "no audio encoder input buffer"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio decoder: attempting to process pending buffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio encoder: returned input buffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mEncoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 63
    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->checkPresentationTime(I)J

    move-result-wide v4

    .line 64
    if-ltz v3, :cond_1

    .line 66
    iget-object v6, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v7, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    invoke-virtual {v6, v7}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 67
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mEncoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->queueInputBuffer(IIIJI)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->releaseBuffers()V

    goto :goto_0
.end method

.method public processFrame()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    iget v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->getFrameFromDecoder()V

    .line 106
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->outputFrame()V

    .line 109
    :cond_1
    return-void
.end method

.method protected releaseBuffers()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->releaseOutputBuffer(IZ)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "AUDIODECODER"

    const-string v1, "audio decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->stageComplete()V

    .line 98
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mFrameToProcess:I

    .line 99
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->flush()V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mLastTimeStamp:J

    .line 118
    return-void
.end method

.method public setEncoder(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->mEncoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 31
    return-void
.end method
