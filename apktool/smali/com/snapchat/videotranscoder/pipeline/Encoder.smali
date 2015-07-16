.class public abstract Lcom/snapchat/videotranscoder/pipeline/Encoder;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ENCODER"


# instance fields
.field private lastTimeStamp:J

.field public final mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field private final mEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

.field public final mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

.field protected mOutputTrack:I


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V
    .locals 7
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Mixer;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/videotranscoder/utils/MimeTools;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v5, 0x1

    move-object v4, v3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/snapchat/videotranscoder/pipeline/Encoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/Codec;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/Codec;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/Mixer;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/Codec;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mOutputTrack:I

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->lastTimeStamp:J

    .line 62
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 63
    iput-object p3, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 64
    iput-object p4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 65
    return-void
.end method


# virtual methods
.method public abstract addOrRetrieveMixerTrack(Landroid/media/MediaFormat;)I
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param
.end method

.method public getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    return-object v0
.end method

.method public getEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public processFrame()V
    .locals 8

    .prologue
    .line 69
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mOutputTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "ENCODER"

    const-string v1, "Mixer is not started returning"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->dequeueOutputBuffer(J)I

    move-result v0

    .line 74
    if-gez v0, :cond_2

    .line 75
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->handleDequeueError(I)V

    .line 76
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->addOrRetrieveMixerTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mOutputTrack:I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isConfigBuffer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    const-string v1, "ENCODER"

    const-string v2, "encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 89
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->lastTimeStamp:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encoder out of sync last:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->lastTimeStamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    :cond_5
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->lastTimeStamp:J

    .line 93
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget v3, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mOutputTrack:I

    iget-object v4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v4}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 96
    :cond_6
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-string v1, "ENCODER"

    const-string v2, "encoder: EOS"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->stageComplete()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->stop()V

    .line 106
    return-void
.end method
