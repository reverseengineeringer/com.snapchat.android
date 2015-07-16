.class public abstract Lcom/snapchat/videotranscoder/pipeline/Extractor;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "EXTRACTOR"


# instance fields
.field protected mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field public mExtractor:Landroid/media/MediaExtractor;

.field private mFile:Ljava/lang/String;

.field public mInputTrack:I

.field private mLastPresentationTimeUs:J

.field protected volatile mShouldAbort:Z


# direct methods
.method protected constructor <init>(Landroid/media/MediaExtractor;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p2}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mInputTrack:I

    .line 26
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mShouldAbort:Z

    .line 46
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p2}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mInputTrack:I

    .line 26
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mShouldAbort:Z

    .line 35
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mFile:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "EXTRACTOR"

    const-string v1, "Setting extractor to stop"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mShouldAbort:Z

    .line 94
    return-void
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 54
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mInputTrack:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request track is undefined "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mInputTrack:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getLastPresentationTimeUs()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    return-wide v0
.end method

.method public processFrame()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Decoder is null"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-string v0, "EXTRACTOR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dequeingInputBuffer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/videotranscoder/pipeline/Codec;->dequeueInputBuffer(J)I

    move-result v1

    .line 68
    const-string v0, "EXTRACTOR"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bufferIndex is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "EXTRACTOR"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getting buffer with shouldAbort: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mShouldAbort:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->getBufferInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    iget-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 75
    if-ltz v3, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mShouldAbort:Z

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->queueInputBuffer(IIIJI)V

    .line 78
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor out of sync last:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    iput-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mLastPresentationTimeUs:J

    .line 82
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->queueInputBuffer(IIIJI)V

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Extractor;->stageComplete()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restart()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 104
    :cond_0
    return-void
.end method

.method public setDecoderCodec(Lcom/snapchat/videotranscoder/pipeline/Codec;)V
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Codec;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->mDecoderCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 51
    return-void
.end method

.method public abstract setInputTrack()V
.end method
