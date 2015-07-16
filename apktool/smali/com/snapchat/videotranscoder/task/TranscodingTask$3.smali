.class Lcom/snapchat/videotranscoder/task/TranscodingTask$3;
.super Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;->concatenateBitmap(Lcom/snapchat/videotranscoder/task/BitmapMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

.field final synthetic val$bitmapMediaSource:Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

.field final synthetic val$durationUs:J


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/BitmapMediaSource;J)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->val$bitmapMediaSource:Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

    iput-wide p6, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->val$durationUs:J

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
    .line 364
    new-instance v0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->val$durationUs:J

    invoke-direct {v0, p1, v2, v3, p3}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v0
.end method

.method protected createVideoProvider(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
    .locals 9
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
    .line 356
    new-instance v1, Lcom/snapchat/videotranscoder/video/ImageProvider;

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    # getter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$300(Lcom/snapchat/videotranscoder/task/TranscodingTask;)Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->val$bitmapMediaSource:Lcom/snapchat/videotranscoder/task/BitmapMediaSource;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x1e

    iget-wide v6, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->val$durationUs:J

    move-object v3, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/snapchat/videotranscoder/video/ImageProvider;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/pipeline/Encoder;Landroid/graphics/Bitmap;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v1
.end method
