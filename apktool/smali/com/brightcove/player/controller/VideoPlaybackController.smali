.class public Lcom/brightcove/player/controller/VideoPlaybackController;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "completed",
        "cuePoint",
        "didSelectSource",
        "didSetVideo",
        "play",
        "selectSource",
        "setSource",
        "setVideoStill"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "completed",
        "cuePoint",
        "didSeekTo",
        "didSetSource",
        "play",
        "progress",
        "readyToPlay",
        "removeCuePoint",
        "setCuePoint",
        "setCuePoints",
        "setVideo",
        "willChangeVideo"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/controller/VideoPlaybackController$1;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;,
        Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private cuePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;"
        }
    .end annotation
.end field

.field private currentTime:I

.field private hasSeenPlayerReadyEvent:Z

.field onDidSeekToListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;

.field onDidSetSourceListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;

.field onPlayListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

.field onPlayerReadyListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;

.field onProgressUpdateListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;

.field onRemoveCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;

.field onSetCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;

.field onSetCuePointsListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;

.field onSetVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;

.field onSourceSelectedListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSourceSelectedListener;

.field onVideoCompletedListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;

.field onWillChangeVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;

.field private pendingSourcesToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation
.end field

.field private sourceToVideoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/brightcove/player/model/Source;",
            "Lcom/brightcove/player/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/controller/VideoPlaybackController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0}, Lcom/brightcove/player/controller/VideoPlaybackController;->initialize()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/controller/VideoPlaybackController;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I

    return v0
.end method

.method static synthetic access$002(Lcom/brightcove/player/controller/VideoPlaybackController;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->currentTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/brightcove/player/controller/VideoPlaybackController;II)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/controller/VideoPlaybackController;->emitCuePoints(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/brightcove/player/controller/VideoPlaybackController;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->sourceToVideoMapping:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brightcove/player/controller/VideoPlaybackController;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/brightcove/player/controller/VideoPlaybackController;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/brightcove/player/controller/VideoPlaybackController;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z

    return p1
.end method

.method private emitCuePoints(II)V
    .locals 5

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emitCuePoints: beginning = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/CuePoint;

    .line 294
    invoke-virtual {v0}, Lcom/brightcove/player/model/CuePoint;->getPositionType()Lcom/brightcove/player/model/CuePoint$PositionType;

    move-result-object v3

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    invoke-virtual {v3, v4}, Lcom/brightcove/player/model/CuePoint$PositionType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/brightcove/player/model/CuePoint;->getPosition()I

    move-result v3

    .line 297
    if-ge p1, v3, :cond_0

    if-gt v3, p2, :cond_0

    .line 298
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "emitCuePoints: batch = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v2, "startTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "endTime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "cue_points"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "cuePoint"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    :cond_2
    return-void
.end method


# virtual methods
.method public hasPendingSourcesToLoad()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->hasSeenPlayerReadyEvent:Z

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->pendingSourcesToLoad:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->sourceToVideoMapping:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->cuePoints:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lcom/brightcove/player/controller/VideoPlaybackController;->initializeListeners()V

    .line 119
    return-void
.end method

.method protected initializeListeners()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;

    .line 435
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onPlayerReadyListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;

    .line 436
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onDidSetSourceListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;

    .line 437
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onPlayListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

    .line 438
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;Lcom/brightcove/player/controller/VideoPlaybackController$1;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onProgressUpdateListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;

    .line 439
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onVideoCompletedListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;

    .line 440
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onRemoveCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;

    .line 441
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;

    .line 442
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetCuePointsListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;

    .line 443
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onDidSeekToListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;

    .line 444
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;-><init>(Lcom/brightcove/player/controller/VideoPlaybackController;)V

    iput-object v0, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onWillChangeVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;

    .line 446
    const-string v0, "readyToPlay"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onPlayerReadyListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayerReadyListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 447
    const-string v0, "setVideo"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetVideoListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 448
    const-string v0, "didSetSource"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onDidSetSourceListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSetSourceListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 449
    const-string v0, "play"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onPlayListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnPlayListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 450
    const-string v0, "progress"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onProgressUpdateListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnProgressUpdateListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 451
    const-string v0, "completed"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onVideoCompletedListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnVideoCompletedListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 452
    const-string v0, "removeCuePoint"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onRemoveCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnRemoveCuePointListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 453
    const-string v0, "setCuePoint"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetCuePointListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 454
    const-string v0, "setCuePoints"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onSetCuePointsListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnSetCuePointsListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 455
    const-string v0, "didSeekTo"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onDidSeekToListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnDidSeekToListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 456
    const-string v0, "willChangeVideo"

    iget-object v1, p0, Lcom/brightcove/player/controller/VideoPlaybackController;->onWillChangeVideoListener:Lcom/brightcove/player/controller/VideoPlaybackController$OnWillChangeVideoListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/controller/VideoPlaybackController;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 457
    return-void
.end method
