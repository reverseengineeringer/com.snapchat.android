.class public Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranscodingConfiguration"


# instance fields
.field private final mAudioEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

.field private final mOutputPath:Ljava/lang/String;

.field private final mShouldWriteSnapSegmentMetadata:Z

.field private final mSources:[Lcom/snapchat/videotranscoder/task/MediaSource;

.field private final mVideoEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;


# direct methods
.method public constructor <init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V
    .locals 2
    .param p1    # [Lcom/snapchat/videotranscoder/task/MediaSource;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media sources to transcode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputPath is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least one video or audio encoder configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mSources:[Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 41
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mOutputPath:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mVideoEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 43
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mAudioEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 44
    iput-boolean p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mShouldWriteSnapSegmentMetadata:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getAudioEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mAudioEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mSources:[Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0
.end method

.method public getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mVideoEncoderConfiguration:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public shouldWriteSnapSegmentMetadata()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->mShouldWriteSnapSegmentMetadata:Z

    return v0
.end method
