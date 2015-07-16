.class public Lcom/snapchat/videotranscoder/video/VideoEncoder;
.super Lcom/snapchat/videotranscoder/pipeline/Encoder;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoEncoder"


# instance fields
.field private mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 26
    const-string v0, "VideoEncoder"

    const-string v1, "Done Configuring video codec"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "VideoEncoder"

    const-string v1, "Creating input surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/snapchat/videotranscoder/cts/InputSurface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->startCodec()V

    .line 33
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->makeCurrent()V

    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->setupBuffers()V

    .line 35
    return-void
.end method


# virtual methods
.method protected addOrRetrieveMixerTrack(Landroid/media/MediaFormat;)I
    .locals 2
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->hasVideoTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->getVideoTrack()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    goto :goto_0
.end method

.method public getInputSurface()Lcom/snapchat/videotranscoder/cts/InputSurface;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    return-object v0
.end method

.method public signalEndOfInputStream()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->signalEndOfInputStream()V

    .line 43
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->stop()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->release()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->mInputSurface:Lcom/snapchat/videotranscoder/cts/InputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method
