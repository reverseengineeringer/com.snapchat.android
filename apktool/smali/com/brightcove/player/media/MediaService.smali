.class public Lcom/brightcove/player/media/MediaService;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "error"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "findVideo",
        "findPlaylist"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/media/MediaService$1;,
        Lcom/brightcove/player/media/MediaService$OnFindMediaListener;
    }
.end annotation


# static fields
.field public static final COMMAND:Ljava/lang/String; = "command"

.field public static final DEFAULT_MEDIA_DELIVERY:Ljava/lang/String; = "http"

.field public static final DEFAULT_QUERY_BASE_URL:Ljava/lang/String; = "https://api.brightcove.com/services/library"

.field public static final FIND_PLAYLIST_BY_ID:Ljava/lang/String; = "find_playlist_by_id"

.field public static final FIND_PLAYLIST_BY_REFERENCE_ID:Ljava/lang/String; = "find_playlist_by_reference_id"

.field public static final FIND_VIDEO_BY_ID:Ljava/lang/String; = "find_video_by_id"

.field public static final FIND_VIDEO_BY_REFERENCE_ID:Ljava/lang/String; = "find_video_by_reference_id"

.field private static final FLVURL:Ljava/lang/String; = "FLVURL"

.field public static final HLS_MEDIA_DELIVERY:Ljava/lang/String; = "http_ios"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final KK_QUERY_BASE_URL:Ljava/lang/String; = "https://api.brightcove.co.jp/services/library"

.field public static final MEDIA_DELIVERY:Ljava/lang/String; = "media_delivery"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final REFERENCE_ID:Ljava/lang/String; = "reference_id"

.field public static final TAG:Ljava/lang/String;

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final VIDEO_FIELDS:Ljava/lang/String; = "video_fields"

.field public static final VIDEO_ID:Ljava/lang/String; = "video_id"


# instance fields
.field private findMediaListener:Lcom/brightcove/player/media/MediaService$OnFindMediaListener;

.field private queryBaseURL:Ljava/lang/String;

.field private readToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/brightcove/player/media/MediaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/media/MediaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/media/MediaService;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    const-class v0, Lcom/brightcove/player/media/MediaService;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readTokenRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    if-nez p3, :cond_2

    .line 130
    const-string p3, "https://api.brightcove.com/services/library"

    .line 133
    :cond_2
    iput-object p2, p0, Lcom/brightcove/player/media/MediaService;->readToken:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/brightcove/player/media/MediaService;->initializeListeners()V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->readToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/brightcove/player/media/MediaService;Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/media/MediaService;->respondWithError(Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V

    return-void
.end method

.method public static buildCuePointFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/CuePoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/brightcove/player/model/CuePoint;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 422
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const-string v2, "missingCuePointProperty"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "time"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_0
    return-object v0

    .line 428
    :cond_0
    const-string v2, "typeEnum"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    const-string v2, "missingCuePointProperty"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "typeEnum"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 437
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    move-object v1, v0

    .line 439
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    const-string v5, "time"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 443
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 444
    :cond_2
    const-string v5, "typeEnum"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 445
    const-string v0, "typeEnum"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/brightcove/player/media/MediaService;->buildSerializable(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 451
    :cond_4
    sget-object v0, Lcom/brightcove/player/media/CuePointFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/brightcove/player/media/MediaService;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V

    .line 453
    new-instance v0, Lcom/brightcove/player/model/CuePoint;

    invoke-direct {v0, v2, v1, v4}, Lcom/brightcove/player/model/CuePoint;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static buildHLSSourceCollectionFromURL(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/brightcove/player/model/SourceCollection;
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    const/4 v0, 0x0

    .line 374
    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 375
    new-instance v2, Lcom/brightcove/player/model/Source;

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-direct {v2, v1, v0}, Lcom/brightcove/player/model/Source;-><init>(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)V

    .line 376
    new-instance v0, Lcom/brightcove/player/model/SourceCollection;

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-direct {v0, v2, v1}, Lcom/brightcove/player/model/SourceCollection;-><init>(Lcom/brightcove/player/model/Source;Lcom/brightcove/player/media/DeliveryType;)V

    .line 379
    :cond_0
    return-object v0
.end method

.method public static buildPlaylistFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/Playlist;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/brightcove/player/model/Playlist;"
        }
    .end annotation

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jsonRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 553
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    const-string v0, "referenceId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 558
    const-string v0, "referenceId"

    const-string v2, "referenceId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_2
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 562
    const-string v0, "name"

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_3
    const-string v0, "shortDescription"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 566
    const-string v0, "shortDescription"

    const-string v2, "shortDescription"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_4
    const-string v0, "thumbnailURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 571
    const-string v0, "thumbnailURL"

    const-string v2, "thumbnailURL"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 578
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 579
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 580
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 581
    if-eqz v4, :cond_6

    .line 582
    invoke-static {v4, p1, p2}, Lcom/brightcove/player/media/MediaService;->buildVideoFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/Video;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_7
    sget-object v0, Lcom/brightcove/player/media/PlaylistFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/brightcove/player/media/MediaService;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V

    .line 589
    new-instance v0, Lcom/brightcove/player/model/Playlist;

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/Playlist;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method private static buildSerializable(Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 4

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 462
    instance-of v1, p0, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 463
    check-cast p0, Ljava/io/Serializable;

    .line 475
    :goto_0
    return-object p0

    .line 464
    :cond_0
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 465
    check-cast p0, Lorg/json/JSONObject;

    .line 466
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 468
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 470
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->buildSerializable(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method private static buildSourceCollectionFromVideoFullLength(Lorg/json/JSONObject;)Lcom/brightcove/player/model/SourceCollection;
    .locals 3

    .prologue
    .line 388
    const-string v0, "videoFullLength"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 390
    invoke-static {v0}, Lcom/brightcove/player/media/MediaService;->buildSourceFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Source;

    move-result-object v0

    .line 391
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v2, Lcom/brightcove/player/model/SourceCollection;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/brightcove/player/model/SourceCollection;-><init>(Ljava/util/Set;Lcom/brightcove/player/media/DeliveryType;)V

    return-object v2
.end method

.method public static buildSourceFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Source;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 489
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 491
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "url"

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_0
    const-string v0, "videoDuration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    const-string v0, "duration"

    const-string v3, "videoDuration"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_1
    const-string v0, "encodingRate"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    const-string v0, "bitRate"

    const-string v3, "encodingRate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_2
    const-string v0, "videoContainer"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 504
    const-string v0, "videoContainer"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    :try_start_0
    const-string v0, "url"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    if-eqz v0, :cond_6

    .line 510
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 515
    :goto_0
    if-nez v0, :cond_7

    .line 519
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_4
    :goto_1
    sget-object v0, Lcom/brightcove/player/media/SourceFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/brightcove/player/media/MediaService;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V

    .line 535
    new-instance v0, Lcom/brightcove/player/model/Source;

    invoke-direct {v0, v2}, Lcom/brightcove/player/model/Source;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_5
    move v0, v1

    .line 512
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 520
    :cond_7
    const-string v0, "MP4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 521
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 522
    :cond_8
    const-string v0, "M2TS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 523
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 524
    :cond_9
    const-string v0, "FLV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 525
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->FLV:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 526
    :cond_a
    const-string v0, "WVM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 527
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->WVM:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 529
    :cond_b
    const-string v0, "deliveryType"

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static buildVideoCuePoints(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    const-string v1, "cuePoints"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    const-string v0, "cuePoints"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 405
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 406
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/brightcove/player/media/MediaService;->buildCuePointFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/CuePoint;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 410
    :cond_1
    return-object v0
.end method

.method public static buildVideoFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/Video;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/brightcove/player/model/Video;"
        }
    .end annotation

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jsonRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-static {p0, p2}, Lcom/brightcove/player/media/MediaService;->buildVideoProperties(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 193
    invoke-static {p0}, Lcom/brightcove/player/media/MediaService;->buildVideoSourceCollections(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    .line 194
    invoke-static {p0, p1, p2}, Lcom/brightcove/player/media/MediaService;->buildVideoCuePoints(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 195
    sget-object v0, Lcom/brightcove/player/media/VideoFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/brightcove/player/media/MediaService;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V

    .line 199
    if-eqz v3, :cond_1

    .line 200
    new-instance v0, Lcom/brightcove/player/model/Video;

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_1
    new-instance v0, Lcom/brightcove/player/model/Video;

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private static buildVideoProperties(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v0, "accountId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "pubId"

    const-string v2, "accountId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    const-string v0, "referenceId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    const-string v0, "referenceId"

    const-string v2, "referenceId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_2
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    const-string v0, "name"

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    const-string v0, "shortDescription"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    const-string v0, "shortDescription"

    const-string v2, "shortDescription"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_4
    const-string v0, "length"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    const-string v0, "duration"

    const-string v2, "length"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_5
    const-string v0, "videoStillURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    const-string v0, "videoStillURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    :try_start_0
    const-string v2, "stillImageUri"

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_6
    :goto_0
    const-string v0, "customFields"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 252
    const-string v0, "customFields"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 253
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 255
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 257
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 258
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    if-eqz v0, :cond_7

    .line 261
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 246
    :catch_0
    move-exception v2

    const-string v2, "invalidURI"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 265
    const-string v0, "customFields"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_9
    return-object v1
.end method

.method private static buildVideoSourceCollections(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/SourceCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 276
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 279
    const-string v0, "HLSURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "HLSURL"

    invoke-static {p0, v0}, Lcom/brightcove/player/media/MediaService;->buildHLSSourceCollectionFromURL(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/brightcove/player/model/SourceCollection;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/brightcove/player/media/MediaService;->getRenditionSources(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 293
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 296
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 297
    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v1

    .line 299
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 300
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 301
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/media/DeliveryType;

    .line 308
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 309
    new-instance v6, Lcom/brightcove/player/model/SourceCollection;

    invoke-direct {v6, v1, v0}, Lcom/brightcove/player/model/SourceCollection;-><init>(Ljava/util/Set;Lcom/brightcove/player/media/DeliveryType;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_4
    const-string v0, "videoFullLength"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 317
    invoke-static {p0}, Lcom/brightcove/player/media/MediaService;->buildSourceCollectionFromVideoFullLength(Lorg/json/JSONObject;)Lcom/brightcove/player/model/SourceCollection;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v1

    .line 320
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 321
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_5
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "FLVURL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    const-string v0, "FLVURL"

    invoke-static {p0, v0}, Lcom/brightcove/player/media/MediaService;->buildHLSSourceCollectionFromURL(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/brightcove/player/model/SourceCollection;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_6

    .line 333
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_6
    return-object v2
.end method

.method private static getRenditionSources(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    const-string v1, "renditions"

    invoke-static {p0, v1}, Lcom/brightcove/player/media/MediaService;->getRenditionSources(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 344
    const-string v1, "WVMRenditions"

    invoke-static {p0, v1}, Lcom/brightcove/player/media/MediaService;->getRenditionSources(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 345
    const-string v1, "IOSRenditions"

    invoke-static {p0, v1}, Lcom/brightcove/player/media/MediaService;->getRenditionSources(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 346
    return-object v0
.end method

.method private static getRenditionSources(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 353
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    .line 356
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 357
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->buildSourceFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Source;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-object v1
.end method

.method private static parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jsonAndPropertiesRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    if-nez p2, :cond_2

    .line 153
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 169
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_4
    return-void
.end method

.method private respondWithError(Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    const-string v1, "mediaRequestError"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "errors"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 599
    return-void
.end method


# virtual methods
.method protected initializeListeners()V
    .locals 2

    .prologue
    .line 602
    new-instance v0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;-><init>(Lcom/brightcove/player/media/MediaService;Lcom/brightcove/player/media/MediaService$1;)V

    iput-object v0, p0, Lcom/brightcove/player/media/MediaService;->findMediaListener:Lcom/brightcove/player/media/MediaService$OnFindMediaListener;

    .line 603
    const-string v0, "findVideo"

    iget-object v1, p0, Lcom/brightcove/player/media/MediaService;->findMediaListener:Lcom/brightcove/player/media/MediaService$OnFindMediaListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/media/MediaService;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 604
    const-string v0, "findPlaylist"

    iget-object v1, p0, Lcom/brightcove/player/media/MediaService;->findMediaListener:Lcom/brightcove/player/media/MediaService$OnFindMediaListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/media/MediaService;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 605
    return-void
.end method
