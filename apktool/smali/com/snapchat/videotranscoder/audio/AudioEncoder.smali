.class public Lcom/snapchat/videotranscoder/audio/AudioEncoder;
.super Lcom/snapchat/videotranscoder/pipeline/Encoder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AUDIOENCODER"


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    .line 22
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
    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->hasAudioTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 33
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->getAudioTrack()I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->mMixer:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    goto :goto_0
.end method
