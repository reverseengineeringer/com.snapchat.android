.class public final Loy;
.super Lcom/snapchat/android/analytics/framework/EasyMetric;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "TRANSCODING"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Loy;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Laku;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 4

    .prologue
    .line 33
    const-string v0, "transcoding_status"

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/task/Task$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 34
    const-string v0, "retries"

    iget-object v1, p1, Laku;->mTranscodingState:Lxp;

    invoke-virtual {v1}, Lxp;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 35
    const-string v0, "video_width"

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 37
    const-string v0, "video_height"

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 39
    const-string v0, "bit_rate"

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "bitrate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 41
    const-string v0, "frame_rate"

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "frame-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 44
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "durationUs"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 46
    const-string v1, "media_duration"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 47
    const-string v0, "transcoding_orientation"

    iget v1, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loy;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 49
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 50
    return-void
.end method
