.class public Lcom/snapchat/videotranscoder/video/ImageProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageProvider"

.field private static final US_PER_SECOND:J = 0xf4240L


# instance fields
.field private mCurrentFrame:I

.field private final mFramesPerSecond:I

.field private mOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

.field private mPresentationTimeUs:J

.field private final mTotalFrames:I

.field private final mUsPerFrame:J


# direct methods
.method protected constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Lcom/snapchat/videotranscoder/pipeline/Encoder;Landroid/graphics/Bitmap;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 6
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p8    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x0

    .line 74
    invoke-direct {p0, p3, p8}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mCurrentFrame:I

    .line 33
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mPresentationTimeUs:J

    .line 76
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputSurfaceFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoder is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    if-nez p8, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "doneCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    if-gtz p5, :cond_5

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Frames per second must be greater than 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5
    cmp-long v0, p6, v2

    if-gtz v0, :cond_6

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duration must be greater than 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_6
    iput p5, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mFramesPerSecond:I

    .line 90
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mFramesPerSecond:I

    int-to-long v0, v0

    mul-long/2addr v0, p6

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mTotalFrames:I

    .line 91
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mFramesPerSecond:I

    int-to-long v0, v0

    div-long v0, v4, v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mUsPerFrame:J

    .line 93
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->adjustForTranscoderTransformation()[F

    move-result-object v0

    invoke-virtual {p2, p1, v0, p4}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;->createOutputSurface(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)Lcom/snapchat/videotranscoder/cts/OutputSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/pipeline/Encoder;Landroid/graphics/Bitmap;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 9
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 51
    new-instance v2, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/videotranscoder/video/ImageProvider;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Lcom/snapchat/videotranscoder/pipeline/Encoder;Landroid/graphics/Bitmap;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getPercentComplete()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mCurrentFrame:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mTotalFrames:I

    div-int/2addr v0, v1

    return v0
.end method

.method public processFrame()V
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    check-cast v0, Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 118
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->getInputSurface()Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting encoder input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->drawImage()V

    .line 125
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mPresentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;->setPresentationTime(J)V

    .line 126
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/InputSurface;->swapBuffers()Z

    .line 128
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mPresentationTimeUs:J

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mUsPerFrame:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mPresentationTimeUs:J

    .line 129
    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mCurrentFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mCurrentFrame:I

    .line 131
    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mCurrentFrame:I

    iget v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mTotalFrames:I

    if-ne v1, v2, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->signalEndOfInputStream()V

    .line 133
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/ImageProvider;->stageComplete()V

    .line 135
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->release()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->mOutputSurface:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 107
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->release()V

    .line 108
    return-void
.end method
