.class public Lcom/snapchat/videotranscoder/video/VideoExtractor;
.super Lcom/snapchat/videotranscoder/pipeline/Extractor;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoExtractor"


# instance fields
.field private final mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/utils/MimeTools;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/utils/MimeTools;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/utils/MimeTools;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/pipeline/Extractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 25
    iput-object p3, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    .line 26
    const-string v0, "VideoExtractor"

    const-string v1, "Setting up extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->setInputTrack()V

    .line 28
    return-void
.end method


# virtual methods
.method protected setInputTrack()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoExtractor;->mInputTrack:I

    .line 33
    return-void
.end method
