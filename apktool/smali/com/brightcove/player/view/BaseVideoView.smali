.class public abstract Lcom/brightcove/player/view/BaseVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "didChangeList",
        "didSelectSource",
        "pause",
        "play",
        "prebufferNextVideo",
        "readyToPlay",
        "seekTo",
        "selectSource",
        "setSource",
        "setVideo",
        "stop",
        "willChangeVideo"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "activityCreated",
        "activitySaveInstanceState",
        "activityStarted",
        "adProgress",
        "bufferedUpdate",
        "completed",
        "didLoadCaptions",
        "didPause",
        "didPlay",
        "didSeekTo",
        "didSetSource",
        "didSetVideo",
        "didStop",
        "hideSeekControls",
        "progress",
        "seekTo",
        "showSeekControls",
        "sourceNotPlayable",
        "videoDurationChanged",
        "willChangeVideo",
        "willInterruptContent"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected anchorView:Landroid/view/View;

.field private brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

.field private brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

.field private bufferedPercent:I

.field private currentIndex:I

.field private currentlyPlaying:Z

.field protected duration:I

.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private hasPendingPlay:Z

.field private hasSetSource:Z

.field protected imageView:Landroid/widget/ImageView;

.field protected listenerTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mediaController:Landroid/widget/MediaController;

.field private mediaControlsVisibilityManager:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

.field protected mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

.field protected playheadPosition:I

.field protected pluginManager:Lcom/brightcove/player/management/BrightcovePluginManager;

.field protected sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

.field protected videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

.field protected videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

.field private videoToSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/brightcove/player/model/Video;",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BaseVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    .line 176
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->init(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/view/BaseVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    .line 185
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->init(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/brightcove/player/view/BaseVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/model/Video;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/brightcove/player/view/BaseVideoView;)Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/brightcove/player/view/BaseVideoView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/view/BaseVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$200(Lcom/brightcove/player/view/BaseVideoView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/brightcove/player/view/BaseVideoView;I)I
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/brightcove/player/view/BaseVideoView;)I
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/brightcove/player/view/BaseVideoView;Z)Z
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/brightcove/player/view/BaseVideoView;->hasSetSource:Z

    return p1
.end method

.method static synthetic access$500(Lcom/brightcove/player/view/BaseVideoView;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z

    return v0
.end method

.method static synthetic access$502(Lcom/brightcove/player/view/BaseVideoView;Z)Z
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/brightcove/player/view/BaseVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/brightcove/player/view/BaseVideoView;Z)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentlyPlaying(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/brightcove/player/view/BaseVideoView;I)I
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/brightcove/player/view/BaseVideoView;->bufferedPercent:I

    return p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->prebufferNextVideo()V

    return-void
.end method

.method private addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/Video;",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1193
    check-cast v0, Ljava/util/List;

    .line 1195
    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "subtitleSources"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    return-void
.end method

.method private emitDidChangeList()V
    .locals 3

    .prologue
    .line 1114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1115
    const-string v1, "list"

    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "didChangeList"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 1117
    return-void
.end method

.method private getCurrentVideo()Lcom/brightcove/player/model/Video;
    .locals 3

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 926
    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 927
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 930
    :cond_0
    return-object v0
.end method

.method private hasNextVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1149
    const/4 v1, 0x0

    .line 1151
    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget v2, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1155
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private prebufferNextVideo()V
    .locals 5

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->hasNextVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1123
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brightcove/player/model/Source;

    .line 1125
    if-eqz v1, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v3, "prebufferNextVideo"

    invoke-static {v2, v3, v0, v1}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 1146
    :goto_0
    return-void

    .line 1130
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1131
    const-string v2, "video"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v2, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v3, "selectSource"

    new-instance v4, Lcom/brightcove/player/view/BaseVideoView$16;

    invoke-direct {v4, p0, v0}, Lcom/brightcove/player/view/BaseVideoView$16;-><init>(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/model/Video;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "prebufferNextVideo"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentIndexPrivate(I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 953
    if-ne p1, v1, :cond_0

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->hasSetSource:Z

    .line 956
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ne v0, v1, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 965
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "willChangeVideo"

    new-instance v3, Lcom/brightcove/player/view/BaseVideoView$15;

    invoke-direct {v3, p0, v1, p1}, Lcom/brightcove/player/view/BaseVideoView$15;-><init>(Lcom/brightcove/player/view/BaseVideoView;Ljava/util/UUID;I)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 985
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 986
    const-string v0, "index"

    iget v3, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 989
    const-string v3, "currentVideo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const/4 v0, 0x0

    .line 993
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 994
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 997
    :cond_1
    const-string v3, "nextVideo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string v0, "uuid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "willChangeVideo"

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private setCurrentlyPlaying(Z)V
    .locals 1

    .prologue
    .line 729
    iput-boolean p1, p0, Lcom/brightcove/player/view/BaseVideoView;->currentlyPlaying:Z

    .line 731
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 735
    :cond_0
    return-void
.end method

.method private updateIndex(II)V
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ne v0, p1, :cond_2

    .line 878
    :cond_0
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ge p1, v0, :cond_3

    .line 881
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    goto :goto_0

    .line 882
    :cond_3
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentlyPlaying:Z

    if-eqz v0, :cond_1

    .line 884
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->prebufferNextVideo()V

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/brightcove/player/model/Video;)V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 865
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->emitDidChangeList()V

    .line 866
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->updateIndex(II)V

    .line 867
    return-void
.end method

.method public add(Lcom/brightcove/player/model/Video;)V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brightcove/player/view/BaseVideoView;->add(ILcom/brightcove/player/model/Video;)V

    .line 854
    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 904
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->emitDidChangeList()V

    .line 905
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->updateIndex(II)V

    .line 906
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brightcove/player/view/BaseVideoView;->addAll(ILjava/util/Collection;)V

    .line 894
    return-void
.end method

.method public addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v1, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    return-void
.end method

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 1164
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    .line 1180
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "willChangeVideo"

    new-instance v3, Lcom/brightcove/player/view/BaseVideoView$17;

    invoke-direct {v3, p0, v1}, Lcom/brightcove/player/view/BaseVideoView$17;-><init>(Lcom/brightcove/player/view/BaseVideoView;Landroid/util/Pair;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_0
.end method

.method protected attachMediaController()V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachMediaController: mediaPlayer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaController = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->anchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 632
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$14;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$14;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 696
    :goto_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 698
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaControlsVisibilityManager:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-virtual {v0}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->setVisibilityState()V

    .line 699
    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->showMediaController()V

    .line 702
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    if-lez v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 707
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    .line 631
    goto :goto_0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    goto :goto_1
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1045
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1046
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1047
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V

    .line 1048
    if-eqz v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->emitDidChangeList()V

    .line 1051
    :cond_0
    return-void

    .line 1044
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOnCompletionListener()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 576
    return-void
.end method

.method public clearOnPreparedListener()V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 584
    return-void
.end method

.method public get(I)Lcom/brightcove/player/model/Video;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    return-object v0
.end method

.method public getAnalytics()Lcom/brightcove/player/analytics/Analytics;
    .locals 2

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1106
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getAnalytics()Lcom/brightcove/player/analytics/Analytics;

    move-result-object v0

    .line 1110
    :cond_0
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->bufferedPercent:I

    return v0
.end method

.method public getClosedCaptioningController()Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    return-object v0
.end method

.method public getClosedCaptioningView()Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    return v0
.end method

.method public getEventEmitter()Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    check-cast v0, Lcom/brightcove/player/event/RegisteringEventEmitter;

    invoke-virtual {v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->getRootEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaController()Landroid/widget/MediaController;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public getPlaybackController()Lcom/brightcove/player/controller/VideoPlaybackController;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

    return-object v0
.end method

.method public abstract getRenderView()Lcom/brightcove/player/view/RenderView;
.end method

.method public getSourceController()Lcom/brightcove/player/controller/DefaultSourceSelectionController;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    return-object v0
.end method

.method public getVideoDisplay()Lcom/brightcove/player/display/VideoDisplayComponent;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    return-object v0
.end method

.method public abstract getVideoHeight()I
.end method

.method public getVideoStillDisplay()Lcom/brightcove/player/display/VideoStillDisplayComponent;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    return-object v0
.end method

.method public abstract getVideoWidth()I
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 221
    new-instance v0, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaControlsVisibilityManager:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    .line 224
    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->resetMetaData()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 227
    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BaseVideoView;->setClickable(Z)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BaseVideoView;->setFocusable(Z)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BaseVideoView;->setFocusableInTouchMode(Z)V

    .line 231
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->imageView:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->addView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method protected initListeners()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaControlsVisibilityManager:Lcom/brightcove/player/controller/MediaControlsVisibilityManager;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/controller/MediaControlsVisibilityManager;->initListeners(Lcom/brightcove/player/event/EventEmitter;)V

    .line 400
    const-string v0, "sourceNotPlayable"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$1;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 408
    const-string v0, "videoDurationChanged"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$2;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$2;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 423
    new-instance v0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    .line 424
    const-string v1, "progress"

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 425
    const-string v1, "adProgress"

    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 428
    const-string v0, "didSetSource"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$3;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$3;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 460
    const-string v0, "didSetVideo"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$4;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$4;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 469
    const-string v0, "completed"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$5;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$5;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 482
    const-string v0, "bufferedUpdate"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$6;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$6;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 489
    const-string v0, "seekTo"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$7;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$7;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 499
    const-string v0, "didSeekTo"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$8;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$8;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 509
    const-string v0, "didPlay"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$9;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$9;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 518
    const-string v0, "didStop"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$10;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$10;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 525
    const-string v0, "didPause"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$11;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$11;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 532
    const-string v0, "willInterruptContent"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$12;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$12;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 547
    const-string v0, "didLoadCaptions"

    new-instance v1, Lcom/brightcove/player/view/BaseVideoView$13;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BaseVideoView$13;-><init>(Lcom/brightcove/player/view/BaseVideoView;)V

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 558
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentlyPlaying:Z

    return v0
.end method

.method public onControllerHide()V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 262
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLayout: changed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 195
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 207
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 208
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onMeasure: width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", height = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", videoWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", videoHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", widthMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/brightcove/player/util/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/brightcove/player/util/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 218
    return-void
.end method

.method protected onPrepared()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 564
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSizeChanged: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 201
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    const-string v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "pause"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 762
    return-void
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1017
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-le v0, p1, :cond_1

    .line 1021
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    .line 1037
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->emitDidChangeList()V

    .line 1038
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0

    .line 1024
    :cond_2
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ne v0, p1, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1028
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndex(I)V

    goto :goto_0

    .line 1029
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1030
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0

    .line 1032
    :cond_4
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentlyPlaying:Z

    if-eqz v0, :cond_0

    .line 1034
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->prebufferNextVideo()V

    goto :goto_0
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 1210
    return-void
.end method

.method public removeListeners()V
    .locals 4

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1214
    iget-object v3, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->listenerTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1217
    return-void
.end method

.method protected resetMetaData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iput v1, p0, Lcom/brightcove/player/view/BaseVideoView;->bufferedPercent:I

    .line 272
    iput v1, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    .line 274
    invoke-direct {p0, v1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentlyPlaying(Z)V

    .line 275
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 781
    const-string v1, "seekPosition"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iput p1, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 783
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "seekTo"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 784
    return-void
.end method

.method protected setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 249
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/brightcove/player/view/BaseVideoView;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 946
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 949
    :cond_2
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 302
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {v0, p1}, Lcom/brightcove/player/controller/VideoPlaybackController;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

    .line 303
    new-instance v0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-direct {v0, p1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    .line 304
    new-instance v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;-><init>(Landroid/widget/ImageView;Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    .line 305
    new-instance v0, Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-direct {v0, p1}, Lcom/brightcove/player/management/BrightcovePluginManager;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->pluginManager:Lcom/brightcove/player/management/BrightcovePluginManager;

    .line 306
    new-instance v0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;-><init>(Lcom/brightcove/player/view/BaseVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    .line 308
    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->initListeners()V

    .line 309
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLayoutParams: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BaseVideoView;->setChildLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, p1, v0, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 600
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 616
    :cond_0
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaController:Landroid/widget/MediaController;

    .line 617
    iput-object p3, p0, Lcom/brightcove/player/view/BaseVideoView;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    .line 618
    iput-object p2, p0, Lcom/brightcove/player/view/BaseVideoView;->anchorView:Landroid/view/View;

    .line 619
    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->attachMediaController()V

    .line 620
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 572
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 580
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->hasNextVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "prebufferNextVideo"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 804
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 806
    invoke-static {p1}, Lcom/brightcove/player/model/Video;->createVideo(Ljava/lang/String;)Lcom/brightcove/player/model/Video;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 807
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/brightcove/player/view/BaseVideoView;->hasNextVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "prebufferNextVideo"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 834
    if-eqz p1, :cond_2

    .line 835
    invoke-static {p1}, Lcom/brightcove/player/model/Video;->createVideo(Ljava/lang/String;)Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 836
    if-eqz p2, :cond_1

    .line 837
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "customFields"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_1
    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 841
    :cond_2
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BaseVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method protected setupClosedCaptioningRendering(Lcom/brightcove/player/model/Video;)V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningController:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v0, p1}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->checkIfCaptionsExist(Lcom/brightcove/player/model/Video;)Ljava/net/URI;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    if-nez v0, :cond_1

    .line 1230
    new-instance v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {p0}, Lcom/brightcove/player/view/BaseVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    .line 1231
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-virtual {v0, v1, p0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->initialize(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/view/BaseVideoView;)V

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->clear()V

    .line 1234
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->brightcoveClosedCaptioningView:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;->prepareLayout()V

    goto :goto_0
.end method

.method protected abstract showMediaController()V
.end method

.method public start()V
    .locals 3

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->hasSetSource:Z

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 745
    const-string v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "play"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BaseVideoView;->hasPendingPlay:Z

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 769
    const-string v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "stop"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    return-void
.end method
