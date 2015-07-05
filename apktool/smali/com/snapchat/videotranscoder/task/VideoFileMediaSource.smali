.class public Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
.super Lcom/snapchat/videotranscoder/task/FileMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;,
        Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFileMediaSource"


# instance fields
.field private INVALID_DISPLAY_TIME:J

.field private final mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

.field private mDisplayTimeMs:J

.field private mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private final mOverlayBitmap:Landroid/graphics/Bitmap;

.field private final mTransformationMatrix:[F

.field private final mVideoChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/FileUtils;->getInstance()Lcom/snapchat/videotranscoder/utils/FileUtils;

    move-result-object v7

    new-instance v8, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;-><init>(Ljava/io/File;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;-><init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;Lcom/snapchat/videotranscoder/utils/FileUtils;Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;Lcom/snapchat/videotranscoder/utils/FileUtils;Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/videotranscoder/utils/FileUtils;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p8    # Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0, p1, p7}, Lcom/snapchat/videotranscoder/task/FileMediaSource;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/utils/FileUtils;)V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->INVALID_DISPLAY_TIME:J

    .line 29
    sget-object v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 30
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->INVALID_DISPLAY_TIME:J

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mDisplayTimeMs:J

    .line 82
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "videoChannelSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    if-nez p6, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "audioChannelSource is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    if-ne p5, v0, :cond_3

    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->DISABLED:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    if-ne p6, v0, :cond_3

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media channels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mTransformationMatrix:[F

    .line 90
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 91
    if-eqz p4, :cond_4

    :goto_0
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 92
    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mVideoChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    .line 93
    iput-object p6, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    .line 96
    :try_start_0
    invoke-virtual {p8}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mDisplayTimeMs:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p8}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    .line 101
    return-void

    .line 91
    :cond_4
    sget-object p4, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_1
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read duration metadata: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    invoke-virtual {p8}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    throw v0
.end method


# virtual methods
.method public getAudioChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    return-object v0
.end method

.method public getDisplayTimeMs()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mDisplayTimeMs:J

    return-wide v0
.end method

.method public getFilter()Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-object v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTransformationMatrix()[F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mTransformationMatrix:[F

    return-object v0
.end method

.method public getVideoChannelSource()Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->mVideoChannelSource:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    return-object v0
.end method
