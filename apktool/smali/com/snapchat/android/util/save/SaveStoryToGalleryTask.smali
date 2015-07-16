.class public final Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field private static final MAX_INITIALIZATION_PROGRESS_PERCENT:I = 0x5

.field private static final OUTPUT_AUDIO_BIT_RATE:I = 0x20000

.field private static final OUTPUT_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final OUTPUT_VIDEO_BITRATE_CAP:I = 0x3d0900

.field private static final OUTPUT_VIDEO_COLOR_FORMAT:I = 0x7f000789

.field private static final OUTPUT_VIDEO_FRAME_RATE:I = 0x1e

.field private static final OUTPUT_VIDEO_IFRAME_INTERVAL:I = 0x1

.field private static final OUTPUT_VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "SaveStoryToGalleryTask"


# instance fields
.field private final mAnalytics:Loc;

.field private final mClock:Lbhk;

.field private final mContext:Landroid/content/Context;

.field private mDidSetupSucceed:Z

.field private mEndTimeMs:J

.field private final mExceptionReporter:Lban;

.field private final mInitializationProgressPercent:I

.field private final mMediaSourceFactory:Lbhd;

.field private final mNotifications:Lbhc;

.field private final mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field private mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

.field private mStartTimeMs:J

.field private final mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

.field private final mStorySnapLogbooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private mStorySnaps:[Lakl;

.field private mTranscodingConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

.field private final mTranscodingProgressPercent:I

.field private mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

.field private final mVideoTranscoder:Lxu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/model/StoryGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;",
            "Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lxu;->a()Lxu;

    move-result-object v1

    new-instance v2, Lbhk;

    invoke-direct {v2}, Lbhk;-><init>()V

    invoke-static {}, Loc;->a()Loc;

    move-result-object v3

    new-instance v4, Lban;

    invoke-direct {v4}, Lban;-><init>()V

    new-instance v5, Lbhd;

    invoke-direct {v5, p1}, Lbhd;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lbhc;->a()Lbhc;

    move-result-object v10

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;-><init>(Lxu;Lbhk;Loc;Lban;Lbhd;Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lbhc;)V

    .line 134
    return-void
.end method

.method private constructor <init>(Lxu;Lbhk;Loc;Lban;Lbhd;Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lbhc;)V
    .locals 2
    .param p1    # Lxu;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbhk;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Loc;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lban;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lbhd;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p9    # Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p10    # Lbhc;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxu;",
            "Lbhk;",
            "Loc;",
            "Lban;",
            "Lbhd;",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/model/StoryGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;",
            "Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;",
            "Lbhc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mDidSetupSucceed:Z

    .line 101
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->INIT:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 152
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mVideoTranscoder:Lxu;

    .line 153
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhk;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mClock:Lbhk;

    .line 154
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loc;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mAnalytics:Loc;

    .line 155
    invoke-static {p4}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lban;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mExceptionReporter:Lban;

    .line 156
    invoke-static {p5}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhd;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    .line 157
    invoke-static {p6}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {p7}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    .line 159
    invoke-static {p8}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    .line 160
    invoke-static {p9}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 161
    invoke-static {p10}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhc;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotifications:Lbhc;

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mInitializationProgressPercent:I

    .line 164
    iget v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mInitializationProgressPercent:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingProgressPercent:I

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mInitializationProgressPercent:I

    return v0
.end method

.method private static a(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;)Lavc;
    .locals 5
    .param p0    # Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;-><init>(Ljava/io/File;)V

    .line 521
    :try_start_0
    new-instance v0, Lavc;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lavc;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
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

    .line 525
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    throw v0
.end method

.method private static a([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 5
    .param p0    # [Lcom/snapchat/videotranscoder/task/MediaSource;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/videotranscoder/utils/MimeTools;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 413
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 414
    instance-of v4, v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    if-eqz v4, :cond_0

    .line 415
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    .line 416
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMediaFormatFromFile(Ljava/lang/String;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioSampleRate(Landroid/media/MediaFormat;)I

    move-result v1

    .line 423
    invoke-virtual {p1, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioChannelCount(Landroid/media/MediaFormat;)I

    move-result v0

    .line 425
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 427
    const-string v0, "bitrate"

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 429
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "audio/mp4a-latm"

    invoke-direct {v0, v2, v1}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 433
    :goto_1
    return-object v0

    .line 413
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mDidSetupSucceed:Z

    if-nez v0, :cond_0

    .line 178
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    invoke-virtual {v0}, Laya;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    array-length v0, v0

    new-array v10, v0, [Lcom/snapchat/videotranscoder/task/MediaSource;

    move v8, v7

    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    array-length v0, v0

    if-ge v8, v0, :cond_8

    iget-object v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    aget-object v6, v0, v8

    invoke-virtual {v2}, Lbhd;->f()V

    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storySnap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_1
    const-string v1, "There was a setup issue with the transcoding operation"

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 232
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODER_SETUP:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    invoke-virtual {v1}, Lbhd;->e()V

    goto :goto_0

    .line 185
    :cond_1
    :try_start_2
    invoke-static {}, Lbhp;->b()V

    invoke-virtual {v6}, Lakl;->ai()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v6}, Lbhd;->a(Lakl;)Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v0

    :goto_2
    aput-object v0, v10, v8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mInitializationProgressPercent:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    array-length v3, v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    if-eq v0, v11, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, v2, Lbhd;->mSnapVideoDecryptor:Laxx;

    invoke-virtual {v6}, Lakl;->K()Laxw;

    move-result-object v1

    invoke-virtual {v6}, Lakl;->h()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Laxx;->a(Laxw;ZZ)Lajl;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Cannot decrypt snap video"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    invoke-virtual {v1}, Lbhd;->e()V

    throw v0

    .line 185
    :cond_4
    :try_start_3
    iget-object v0, v2, Lbhd;->mDecryptedSnapVideosToRelease:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lajl;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Decrypted video snap not found"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    iget-object v2, v2, Lbhd;->mImageTransformationMatrix:Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->adjustForTranscoderTransformation()[F

    move-result-object v2

    invoke-virtual {v3}, Lajl;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    invoke-virtual {v6}, Lakl;->ai()I

    move-result v6

    if-ne v6, v11, :cond_6

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    :goto_3
    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;-><init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;)V

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->SILENCE:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected media type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v10

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v10

    move v1, v7

    :goto_4
    if-ge v1, v4, :cond_b

    aget-object v0, v10, v1

    instance-of v5, v0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    if-eqz v5, :cond_9

    check-cast v0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v0, Lavc;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v0, v6, v5}, Lavc;-><init>(II)V

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    instance-of v5, v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    if-eqz v5, :cond_a

    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    invoke-static {v0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;)Lavc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unhandled media source type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lbhe;

    invoke-direct {v0}, Lbhe;-><init>()V

    invoke-virtual {v0, v3}, Lbhe;->a(Ljava/util/Collection;)Lavc;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Could not find a valid resolution for transcoding."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v1, "video/avc"

    invoke-virtual {v0}, Lavc;->b()I

    move-result v3

    invoke-virtual {v0}, Lavc;->a()I

    move-result v0

    invoke-static {v1, v3, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    const v3, 0x3d0900

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v1, "video/avc"

    invoke-direct {v3, v1, v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    invoke-static {v10, v2}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a([Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/utils/MimeTools;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mInitializationProgressPercent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;-><init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 186
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mVideoTranscoder:Lxu;

    iget-object v1, v1, Lxu;->a:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    iget-object v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mVideoTranscoder:Lxu;

    iget-object v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    new-instance v3, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$a;-><init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;Ljava/lang/Object;)V

    new-instance v4, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;

    invoke-direct {v4, p0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$b;-><init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)V

    invoke-virtual {v0, v2, v3, v4}, Lxu;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 212
    invoke-static {}, Lbhp;->b()V
    :try_end_3
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    :try_start_6
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_d

    .line 224
    const-string v0, "Transcoding failed!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_DURING_TRANSCODING:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    invoke-virtual {v1}, Lbhd;->e()V

    goto/16 :goto_0

    .line 215
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 221
    :catch_1
    move-exception v0

    .line 218
    :try_start_9
    const-string v1, "Failed to wait for transcoding synchronization object to fire"

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 219
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_INTERRUPTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    invoke-virtual {v1}, Lbhd;->e()V

    goto/16 :goto_0

    .line 229
    :cond_d
    :try_start_a
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Laxr;->a(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_a
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mMediaSourceFactory:Lbhd;

    invoke-virtual {v0}, Lbhd;->e()V

    .line 238
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 496
    if-eqz p2, :cond_0

    .line 497
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 498
    new-instance v0, Lom;

    invoke-direct {v0, p1, p2}, Lom;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mExceptionReporter:Lban;

    invoke-virtual {v1, v0}, Lban;->a(Ljava/lang/Throwable;)V

    .line 505
    return-void

    .line 500
    :cond_0
    new-instance v0, Lom;

    invoke-direct {v0, p1}, Lom;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingProgressPercent:I

    return v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 53
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/StorySnapLogbook;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mEndTimeMs:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v0}, Lakl;->ag()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lakl;->ah()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v8

    :goto_2
    if-eqz v0, :cond_11

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v0}, Lakl;->ag()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lakl;->ah()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v8

    :goto_5
    if-nez v0, :cond_10

    add-int/lit8 v0, v3, 0x1

    :goto_6
    move v3, v0

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    sget-object v4, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    if-eq v0, v4, :cond_8

    move-wide v4, v6

    :goto_7
    iget-object v9, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingTask:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    :goto_8
    iget-object v10, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mTranscodingConfiguration:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    const-string v11, "SAVE_ENTIRE_STORY"

    invoke-static {v11}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v11

    const-string v12, "success"

    sget-object v13, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->SUCCESS:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    if-ne v9, v13, :cond_a

    :goto_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v11, v12, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v8

    const-string v11, "reason"

    invoke-virtual {v9}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v8

    const-string v9, "transcoding_status"

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/Task$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v8, "count"

    add-int v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v8, "video_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "image_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "save_story_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getSources()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_a
    if-ge v0, v4, :cond_b

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/snapchat/videotranscoder/task/MediaSource;->getDisplayTimeMs()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_8
    iget-wide v4, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mEndTimeMs:J

    iget-wide v10, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStartTimeMs:J

    sub-long/2addr v4, v10

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    goto :goto_8

    :cond_a
    move v8, v2

    goto :goto_9

    :cond_b
    const-string v0, "media_duration"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v10}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->getVideoEncoderConfiguration()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "video_width"

    const-string v4, "width"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "video_height"

    const-string v5, "height"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "video_bitrate"

    const-string v5, "bitrate"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "video_framerate"

    const-string v5, "frame-rate"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_c
    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotifications:Lbhc;

    invoke-virtual {v0}, Lbhc;->c()V

    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    :goto_b
    return-void

    :cond_e
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotifications:Lbhc;

    invoke-virtual {v0}, Lbhc;->d()V

    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    goto :goto_b

    :cond_10
    move v0, v3

    goto/16 :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method protected final onPreExecute()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotificationsToShow:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mNotifications:Lbhc;

    invoke-virtual {v0}, Lbhc;->b()V

    .line 267
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->STARTED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStartTimeMs:J

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryGroup;->a(I)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 274
    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;->b(Z)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$1;-><init>(Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lakl;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 282
    iget-object v4, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    .line 284
    invoke-virtual {v4}, Lakl;->M()Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Story snap is not loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lakl;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    sget-object v0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;->FAILED_SNAPS_NOT_ALL_LOADED:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    iput-object v0, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mResult:Lcom/snapchat/android/util/save/SaveStoryToGalleryTask$Result;

    .line 287
    iput-boolean v2, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mDidSetupSucceed:Z

    .line 293
    :cond_2
    return-void

    .line 291
    :cond_3
    iget-object v5, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStorySnaps:[Lakl;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    move v1, v0

    .line 292
    goto :goto_1
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/util/save/SaveStoryToGalleryTask;->mStoryGroup:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryGroup;->a(I)V

    return-void
.end method
