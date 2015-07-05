.class public Lcom/snapchat/videotranscoder/audio/AudioProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/audio/AudioProvider$1;,
        Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;,
        Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioProvider"


# instance fields
.field private mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

.field private mAudioDecoderDone:Z

.field private mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

.field private mAudioExtractorDone:Z

.field private mDurationUs:J


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 22
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractorDone:Z

    .line 23
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoderDone:Z

    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoder is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mediaSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stageDoneCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 46
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    .line 47
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->setDecoderCodec(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->setEncoder(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V

    .line 50
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mDurationUs:J

    .line 51
    return-void
.end method

.method static synthetic access$202(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractorDone:Z

    return p1
.end method

.method static synthetic access$302(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoderDone:Z

    return p1
.end method


# virtual methods
.method public getPercentComplete()I
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->getLastPresentationTimeUs()J

    move-result-wide v0

    .line 117
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mDurationUs:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public processFrame()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mDone:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 78
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractorDone:Z

    if-nez v0, :cond_0

    .line 79
    const-string v0, "AudioProvider"

    const-string v1, "Calling audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->processFrame()V

    .line 81
    const-string v0, "AudioProvider"

    const-string v1, "done Calling audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoderDone:Z

    if-nez v0, :cond_3

    .line 86
    const-string v0, "AudioProvider"

    const-string v1, "Calling audio decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->processFrame()V

    .line 88
    const-string v0, "AudioProvider"

    const-string v1, "done Calling audio decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_1
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioProvider;->stageComplete()V

    .line 95
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 75
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "AudioProvider"

    const-string v1, "releasing audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->release()V

    .line 60
    iput-object v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 62
    const-string v0, "AudioProvider"

    const-string v1, "releasing audio, decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->stop()V

    .line 64
    iput-object v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoder:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    .line 66
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->release()V

    .line 67
    return-void
.end method
