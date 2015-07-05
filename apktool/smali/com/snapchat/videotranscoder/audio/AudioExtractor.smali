.class public Lcom/snapchat/videotranscoder/audio/AudioExtractor;
.super Lcom/snapchat/videotranscoder/pipeline/Extractor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioExtractor"


# instance fields
.field private final mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/utils/MimeTools;)V

    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/utils/MimeTools;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/utils/MimeTools;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/pipeline/Extractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 24
    iput-object p3, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    .line 25
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->setInputTrack()V

    .line 26
    return-void
.end method


# virtual methods
.method protected setInputTrack()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->mMimeTools:Lcom/snapchat/videotranscoder/utils/MimeTools;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->mInputTrack:I

    .line 31
    return-void
.end method
