.class public Lcom/brightcove/player/display/VideoDisplayComponent;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "bufferedUpdate",
        "completed",
        "didInterruptContent",
        "didPause",
        "didPlay",
        "didResumeContent",
        "didSeekTo",
        "didSetSource",
        "didStop",
        "error",
        "pause",
        "play",
        "progress",
        "sourceNotPlayable",
        "stop",
        "videoDurationChanged",
        "videoSizeKnown",
        "willChangeVideo"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "completed",
        "didSetSource",
        "pause",
        "play",
        "prebufferNextVideo",
        "seekTo",
        "setSource",
        "stop",
        "videoDurationChanged",
        "willChangeVideo",
        "willInterruptContent",
        "willResumeContent",
        "readyToPlay",
        "setVolume"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

.field protected static final ON_PLAY_SEEK_THRESHOLD:I = 0x3e8

.field private static final PROGRESS_INTERVAL:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcom/brightcove/player/analytics/Analytics;

.field protected context:Landroid/content/Context;

.field protected currentSource:Lcom/brightcove/player/model/Source;

.field protected currentVideo:Lcom/brightcove/player/model/Video;

.field protected duration:I

.field private fromSeekPosition:I

.field private hasErrored:Z

.field private hasPlaybackStarted:Z

.field private hasPrepared:Z

.field protected hasSurface:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field protected nextSource:Lcom/brightcove/player/model/Source;

.field protected nextVideo:Lcom/brightcove/player/model/Video;

.field onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

.field onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

.field onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

.field onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

.field onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

.field onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

.field onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

.field onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

.field onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

.field onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

.field protected playheadPosition:I

.field protected renderView:Lcom/brightcove/player/view/RenderView;

.field protected reseeking:Z

.field protected seekPosition:I

.field protected seekPositionWhenPrepared:I

.field protected updater:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/view/RenderView;Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 176
    const-class v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0, p2, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 910
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$4;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 919
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$5;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$5;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 948
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$6;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$6;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 973
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$7;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$7;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 994
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$8;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$8;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1003
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$9;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$9;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1027
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$10;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$10;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderViewAndEventEmitterRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Lcom/brightcove/player/analytics/Analytics;

    invoke-interface {p1}, Lcom/brightcove/player/view/RenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/brightcove/player/analytics/Analytics;-><init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->analytics:Lcom/brightcove/player/analytics/Analytics;

    .line 183
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    .line 184
    invoke-interface {p1}, Lcom/brightcove/player/view/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->setHolderType()V

    .line 186
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->initializeListeners()V

    .line 187
    return-void
.end method

.method static synthetic access$1000(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/brightcove/player/display/VideoDisplayComponent;I)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->play(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    return v0
.end method

.method static synthetic access$2102(Lcom/brightcove/player/display/VideoDisplayComponent;I)I
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    return p1
.end method

.method static synthetic access$2200(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    return v0
.end method

.method static synthetic access$802(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    return p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method private createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 376
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 378
    if-eqz v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 385
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 386
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 387
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 388
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 389
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 390
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 391
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 396
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/brightcove/player/display/VideoDisplayComponent;->setDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 404
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->setupSubtitles(Lcom/brightcove/player/model/Video;Landroid/media/MediaPlayer;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->duration:I

    .line 416
    :goto_2
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v1}, Lcom/brightcove/player/view/RenderView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->setSurface(Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "error"

    const-string v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 398
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;

    .line 399
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected static getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/Video;",
            "Lcom/brightcove/player/model/Source;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "headers"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 348
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/brightcove/player/model/Source;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "headers"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    check-cast v0, Ljava/util/Map;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    if-eqz v1, :cond_1

    .line 357
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "headers = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    return-object v1

    :cond_0
    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 364
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private play(I)V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, -0x1

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play: position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playheadPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seekPositionWhenPrepared = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_2

    .line 592
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 597
    :goto_0
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_3

    .line 599
    iput v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    .line 600
    iput p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    .line 601
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 607
    :cond_0
    :goto_1
    iput v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    .line 609
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->startUpdater()V

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 624
    :goto_2
    return-void

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v1}, Lcom/brightcove/player/view/RenderView;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->setSurface(Landroid/media/MediaPlayer;Landroid/view/Surface;)V

    goto :goto_0

    .line 602
    :cond_3
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_0

    .line 603
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    .line 604
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_1

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "readyToPlay"

    new-instance v2, Lcom/brightcove/player/display/VideoDisplayComponent$3;

    invoke-direct {v2, p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$3;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;I)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_2
.end method

.method private setDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 423
    return-void
.end method

.method private setHolderType()V
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 203
    :cond_0
    return-void
.end method

.method private setSurface(Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 629
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 630
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 632
    :cond_0
    return-void
.end method

.method private setupSubtitles(Lcom/brightcove/player/model/Video;Landroid/media/MediaPlayer;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    new-instance v2, Landroid/media/SubtitleController;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v3

    invoke-direct {v2, v1, v3, p2}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 434
    new-instance v1, Landroid/media/WebVttRenderer;

    iget-object v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 435
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    check-cast v1, Landroid/media/SubtitleController$Anchor;

    invoke-virtual {p2, v2, v1}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    .line 439
    :try_start_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaFormat;

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v1, 0x385

    const/4 v3, 0x0

    invoke-interface {v0, p2, v1, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method protected destroyPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->stopUpdater()V

    .line 459
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 466
    iput-boolean v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    .line 467
    iput-boolean v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    .line 472
    :cond_0
    return-void
.end method

.method protected emitVideoSize(II)V
    .locals 3

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emitVideoSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v1}, Lcom/brightcove/player/view/RenderView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v1}, Lcom/brightcove/player/view/RenderView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getVideoWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getVideoHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0, p1, p2}, Lcom/brightcove/player/view/RenderView;->setVideoSize(II)V

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 832
    const-string v1, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v1, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "videoSizeKnown"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 836
    :cond_1
    return-void
.end method

.method public getAnalytics()Lcom/brightcove/player/analytics/Analytics;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->analytics:Lcom/brightcove/player/analytics/Analytics;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getRenderView()Lcom/brightcove/player/view/RenderView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    check-cast v0, Landroid/view/SurfaceView;

    .line 296
    :cond_0
    return-object v0
.end method

.method protected initializeListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    .line 208
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    .line 209
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    .line 210
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    .line 211
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    .line 212
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    .line 213
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    .line 214
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    .line 215
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    .line 216
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    .line 218
    const-string v0, "setSource"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 219
    const-string v0, "play"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 220
    const-string v0, "seekTo"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 221
    const-string v0, "pause"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 222
    const-string v0, "stop"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 223
    const-string v0, "prebufferNextVideo"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 224
    const-string v0, "completed"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 225
    const-string v0, "willInterruptContent"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 226
    const-string v0, "willResumeContent"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 227
    const-string v0, "setVolume"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 228
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 891
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 898
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method protected openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    .line 321
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->renderView:Lcom/brightcove/player/view/RenderView;

    invoke-interface {v0}, Lcom/brightcove/player/view/RenderView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openVideo: surface = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "readyToPlay"

    new-instance v2, Lcom/brightcove/player/display/VideoDisplayComponent$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent$2;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalidURL"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected startUpdater()V
    .locals 7

    .prologue
    .line 231
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/brightcove/player/display/VideoDisplayComponent$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    .line 267
    return-void
.end method

.method protected stopUpdater()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopUpdater: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    .line 275
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 847
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 859
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 860
    return-void

    .line 852
    :cond_1
    const-string v0, "invalidSurface"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "error"

    const-string v3, "errorMessage"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 841
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "releaseWhenSurfaceDestroyed"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    if-eq v0, v1, :cond_1

    .line 878
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 885
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 886
    return-void

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    goto :goto_0
.end method
