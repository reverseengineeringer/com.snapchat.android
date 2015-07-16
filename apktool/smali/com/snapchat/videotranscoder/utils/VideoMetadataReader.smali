.class public Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoMetadataReader"


# instance fields
.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private final mVideoFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;-><init>(Ljava/io/File;Landroid/media/MediaMetadataRetriever;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Landroid/media/MediaMetadataRetriever;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaMetadataRetriever;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "videoFile is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mVideoFile:Ljava/io/File;

    .line 36
    iput-object p2, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 37
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private checkExists()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method private checkNotReleased()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->released()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VideoMetadataReader already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method private checkPreconditions()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkNotReleased()V

    .line 138
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkExists()V

    .line 139
    return-void
.end method

.method private getMetadata(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to extract metadata file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-object v0
.end method

.method private released()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->released()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    .line 122
    :cond_0
    return-void
.end method

.method public getDurationMs()J
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkPreconditions()V

    .line 96
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duration string metadata is not valid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getHeight()I
    .locals 5

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkPreconditions()V

    .line 79
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Height string metadata is not valid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkPreconditions()V

    .line 113
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->checkPreconditions()V

    .line 62
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Width string metadata is not valid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->released()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    goto :goto_0
.end method
