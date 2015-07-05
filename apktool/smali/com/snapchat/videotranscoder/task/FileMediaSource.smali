.class public abstract Lcom/snapchat/videotranscoder/task/FileMediaSource;
.super Lcom/snapchat/videotranscoder/task/MediaSource;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMediaSource"


# instance fields
.field private final mMediaPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/FileUtils;->getInstance()Lcom/snapchat/videotranscoder/utils/FileUtils;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/task/FileMediaSource;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/utils/FileUtils;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/utils/FileUtils;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/utils/FileUtils;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/MediaSource;-><init>()V

    .line 28
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mediaPath is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-virtual {p2, p1}, Lcom/snapchat/videotranscoder/utils/FileUtils;->checkExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    invoke-virtual {p2, p1}, Lcom/snapchat/videotranscoder/utils/FileUtils;->isNotZeroBytes(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File is empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/FileMediaSource;->mMediaPath:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getMediaPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/FileMediaSource;->mMediaPath:Ljava/lang/String;

    return-object v0
.end method
