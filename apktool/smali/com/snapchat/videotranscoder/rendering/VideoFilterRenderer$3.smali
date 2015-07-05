.class Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->restartComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$600(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractor:Lcom/snapchat/videotranscoder/audio/AudioExtractor;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$600(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->restart()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$800(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioTrackDecoder:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$800(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->restart()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1100(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoder:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1100(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->restart()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioDecoderDone:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$502(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 261
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAudioExtractorDone:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$702(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 262
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$902(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 263
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoFilterDecoderDone:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1202(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 264
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mRestarting:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1302(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Lcom/snapchat/videotranscoder/rendering/TranscodingRenderingException;

    const-string v2, "Restart failed!"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/rendering/TranscodingRenderingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
