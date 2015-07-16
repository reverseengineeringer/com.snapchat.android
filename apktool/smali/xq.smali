.class public final Lxq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final a:Laku;

.field private final b:Lcom/snapchat/videotranscoder/utils/MimeTools;

.field private final c:Lban;


# direct methods
.method public constructor <init>(Laku;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v0

    new-instance v1, Lban;

    invoke-direct {v1}, Lban;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lxq;-><init>(Laku;Lcom/snapchat/videotranscoder/utils/MimeTools;Lban;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Laku;Lcom/snapchat/videotranscoder/utils/MimeTools;Lban;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lxq;->a:Laku;

    .line 58
    iput-object p2, p0, Lxq;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    .line 59
    iput-object p3, p0, Lxq;->c:Lban;

    .line 60
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lxq;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMediaFormatFromFile(Ljava/lang/String;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lxq;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioSampleRate(Landroid/media/MediaFormat;)I

    move-result v1

    .line 97
    iget-object v2, p0, Lxq;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v2, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioChannelCount(Landroid/media/MediaFormat;)I

    move-result v0

    .line 98
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 100
    const-string v1, "bitrate"

    const v2, 0xe000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "audio/mp4a-latm"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 115
    new-instance v1, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;-><init>(Ljava/io/File;)V

    .line 117
    :try_start_0
    new-instance v7, Lavc;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getHeight()I

    move-result v2

    invoke-direct {v7, v0, v2}, Lavc;-><init>(II)V

    .line 118
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getDurationMs()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 122
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    .line 125
    new-instance v10, Lxw;

    invoke-direct {v10, v7}, Lxw;-><init>(Lavc;)V

    .line 126
    long-to-int v0, v8

    const v1, 0x1a6667

    div-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x8

    const v1, 0x3d0900

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 128
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    iget-object v1, p0, Lxq;->a:Laku;

    invoke-virtual {v1}, Laku;->q()[F

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, p0, Lxq;->a:Laku;

    iget-object v4, v1, Laku;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    iget-object v1, p0, Lxq;->a:Laku;

    invoke-virtual {v1}, Laku;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->SILENCE:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    :goto_0
    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;-><init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;)V

    .line 138
    new-instance v6, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    new-array v1, v13, [Lcom/snapchat/videotranscoder/task/MediaSource;

    aput-object v0, v1, v12

    iget-object v0, p0, Lxq;->a:Laku;

    iget-object v0, v0, Laku;->mTranscodingState:Lxp;

    invoke-virtual {v0}, Lxp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11}, Lxw;->a(I)Lavc;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lok;

    invoke-direct {v0, v7}, Lok;-><init>(Lavc;)V

    iget-object v3, p0, Lxq;->c:Lban;

    invoke-virtual {v3, v0}, Lban;->a(Ljava/lang/Throwable;)V

    move-object v0, v7

    :cond_0
    const-string v3, "video/avc"

    invoke-virtual {v0}, Lavc;->b()I

    move-result v4

    invoke-virtual {v0}, Lavc;->a()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lavc;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-virtual {v0}, Lavc;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v13

    const-string v3, "height"

    invoke-virtual {v0}, Lavc;->a()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "width"

    invoke-virtual {v0}, Lavc;->b()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    invoke-virtual {v4, v0, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "durationUs"

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v4, v0, v8, v9}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    const-string v0, "frame-rate"

    const/16 v3, 0x1e

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    const/16 v3, 0xa

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v0, "video/avc"

    invoke-direct {v3, v0, v4}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    invoke-direct {p0, p1}, Lxq;->b(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v0, v6

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;-><init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    return-object v6

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_1
    new-instance v2, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read video metadata: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    throw v0

    .line 128
    :cond_1
    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    goto/16 :goto_0
.end method
