.class Lcom/snapchat/videotranscoder/task/TranscodingTask$2;
.super Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;->concatenateVideoFile(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

.field final synthetic val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createAudioProvider(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 314
    sget-object v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$4;->$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$AudioChannelSource:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getAudioChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled audio channel source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioProvider;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-direct {v0, p1, v1, p3}, Lcom/snapchat/videotranscoder/audio/AudioProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 319
    :goto_0
    return-object v0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 319
    new-instance v0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;

    invoke-direct {v0, p1, v2, v3, p3}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    goto :goto_0

    .line 321
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to create an audio provider for a disabled track."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createVideoProvider(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
    .locals 3
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 300
    sget-object v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$4;->$SwitchMap$com$snapchat$videotranscoder$task$VideoFileMediaSource$VideoChannelSource:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getVideoChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled video channel source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_0
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoProvider;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    # getter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;
    invoke-static {v1}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$300(Lcom/snapchat/videotranscoder/task/TranscodingTask;)Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->val$videoMediaSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/snapchat/videotranscoder/video/VideoProvider;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v0

    .line 304
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to create an video provider for a disabled track."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
