.class Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->prepareThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$400(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$900(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1000(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/video/VideoExtractor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$900(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1000(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/video/VideoExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->processFrame()V

    .line 181
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Done calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractorDone:Z
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$900(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mAborted:Z
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$400(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;->this$0:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    # getter for: Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->mVideoExtractor:Lcom/snapchat/videotranscoder/video/VideoExtractor;
    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->access$1000(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/video/VideoExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->restart()V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;->printStackTrace()V

    .line 194
    :cond_3
    :goto_1
    return-void

    .line 191
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method
