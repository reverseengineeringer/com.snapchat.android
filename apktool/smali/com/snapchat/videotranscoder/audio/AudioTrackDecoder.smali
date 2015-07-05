.class public Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
.super Lcom/snapchat/videotranscoder/audio/AudioDecoder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AUDIOTRACKDECODER"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 24
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 26
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_0

    .line 27
    const/16 v3, 0xc

    .line 31
    :goto_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 33
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 35
    return-void

    .line 29
    :cond_0
    const/4 v3, 0x4

    goto :goto_0
.end method


# virtual methods
.method public outputFrame()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "AUDIOTRACKDECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio track decoder: attempting to process pending buffer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mFrameToProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 46
    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->checkPresentationTime(I)J

    .line 47
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v2, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mFrameToProcess:I

    invoke-virtual {v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    new-array v2, v0, [B

    .line 50
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 52
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->releaseBuffers()V

    .line 55
    return-void
.end method

.method public setEncoder(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 73
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->stop()V

    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "AUDIOTRACKDECODER"

    const-string v1, "Releasing audio track"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 65
    const-string v0, "AUDIOTRACKDECODER"

    const-string v1, "Released audio track"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
