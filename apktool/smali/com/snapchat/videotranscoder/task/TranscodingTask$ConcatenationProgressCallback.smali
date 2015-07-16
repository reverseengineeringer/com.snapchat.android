.class Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConcatenationProgressCallback"
.end annotation


# instance fields
.field final mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

.field final mSourceDuration:J

.field final mTotalProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

.field final synthetic this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .param p2    # Lcom/snapchat/videotranscoder/task/MediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 198
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 200
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->mTotalProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    .line 202
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/MediaSource;->getDisplayTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->mSourceDuration:J

    .line 203
    return-void
.end method


# virtual methods
.method public onProgressUpdated(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 207
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->mSourceDuration:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    .line 208
    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    # getter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mDurationConcatenatedWithoutConsideringCurrentSourceMs:J
    invoke-static {v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$000(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 210
    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    # getter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mTotalDurationMs:J
    invoke-static {v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$100(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 212
    int-to-long v2, v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    # getter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mLastPercentComplete:J
    invoke-static {v1}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$200(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->this$0:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    int-to-long v2, v0

    # setter for: Lcom/snapchat/videotranscoder/task/TranscodingTask;->mLastPercentComplete:J
    invoke-static {v1, v2, v3}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->access$202(Lcom/snapchat/videotranscoder/task/TranscodingTask;J)J

    .line 214
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->mTotalProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->onProgressUpdated(I)V

    .line 216
    :cond_0
    return-void
.end method
