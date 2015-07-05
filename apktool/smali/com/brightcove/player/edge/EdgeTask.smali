.class abstract Lcom/brightcove/player/edge/EdgeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URI;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final CONTAINER:Ljava/lang/String; = "container"

.field private static final CUE_POINTS:Ljava/lang/String; = "cue_points"

.field private static final CUSTOM_FIELDS:Ljava/lang/String; = "custom_fields"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final FLV:Ljava/lang/String; = "flv"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LONG_DESCRIPTION:Ljava/lang/String; = "longDescription"

.field private static final M2TS:Ljava/lang/String; = "m2ts"

.field private static final MP4:Ljava/lang/String; = "mp4"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final POSTER:Ljava/lang/String; = "poster"

.field private static final REFERENCE_ID:Ljava/lang/String; = "reference_id"

.field private static final SOURCES:Ljava/lang/String; = "sources"

.field private static final SRC:Ljava/lang/String; = "src"

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final WVM:Ljava/lang/String; = "wvm"


# instance fields
.field protected account:Ljava/lang/String;

.field protected baseURL:Ljava/lang/String;

.field protected errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field protected httpService:Lcom/brightcove/player/media/HttpService;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private policy:Ljava/lang/String;

.field protected uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/brightcove/player/edge/EdgeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/edge/EdgeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/brightcove/player/edge/EdgeTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 85
    iput-object p2, p0, Lcom/brightcove/player/edge/EdgeTask;->baseURL:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/brightcove/player/edge/EdgeTask;->options:Ljava/util/Map;

    .line 87
    iput-object p4, p0, Lcom/brightcove/player/edge/EdgeTask;->account:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/brightcove/player/edge/EdgeTask;->policy:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/brightcove/player/media/HttpService;

    invoke-direct {v0}, Lcom/brightcove/player/media/HttpService;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->httpService:Lcom/brightcove/player/media/HttpService;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->errors:Ljava/util/List;

    .line 91
    return-void
.end method

.method private buildCuePointFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;)Lcom/brightcove/player/model/CuePoint;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 303
    const-string v2, "time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "missingCuePointProperty"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "time"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/brightcove/player/edge/EdgeTask;->errors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    const-string v2, "missingCuePointProperty"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "type"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/brightcove/player/edge/EdgeTask;->errors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 318
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    move-object v1, v0

    .line 320
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    const-string v5, "time"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    move v2, v0

    goto :goto_1

    .line 325
    :cond_2
    const-string v5, "type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 328
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 332
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 333
    const-string v3, "time"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v3, "type"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0, p1, v4, v0}, Lcom/brightcove/player/edge/EdgeTask;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)V

    .line 337
    new-instance v0, Lcom/brightcove/player/model/CuePoint;

    invoke-direct {v0, v2, v1, v4}, Lcom/brightcove/player/model/CuePoint;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private buildSourceFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Source;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    const-string v1, "url"

    const-string v2, "src"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    const-string v1, "container"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const-string v1, "container"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const-string v1, "deliveryType"

    sget-object v2, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 272
    const-string v2, "src"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v2, "container"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0, p1, v0, v1}, Lcom/brightcove/player/edge/EdgeTask;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)V

    .line 276
    new-instance v1, Lcom/brightcove/player/model/Source;

    invoke-direct {v1, v0}, Lcom/brightcove/player/model/Source;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 260
    :cond_2
    const-string v2, "m2ts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const-string v1, "deliveryType"

    sget-object v2, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_3
    const-string v2, "flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const-string v1, "deliveryType"

    sget-object v2, Lcom/brightcove/player/media/DeliveryType;->FLV:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_4
    const-string v2, "wvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    const-string v1, "deliveryType"

    sget-object v2, Lcom/brightcove/player/media/DeliveryType;->WVM:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_5
    const-string v1, "deliveryType"

    sget-object v2, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildSourcesFromJSON(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 4
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
    .line 236
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 237
    const-string v0, "sources"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 241
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/brightcove/player/edge/EdgeTask;->buildSourceFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Source;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v1
.end method

.method private buildVideoCuePoints(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/brightcove/player/event/EventEmitter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    const-string v1, "cue_points"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-string v0, "cue_points"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 287
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 288
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/brightcove/player/edge/EdgeTask;->buildCuePointFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;)Lcom/brightcove/player/model/CuePoint;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 292
    :cond_1
    return-object v0
.end method

.method private buildVideoProperties(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v0, "account_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "pubId"

    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string v0, "id"

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    const-string v0, "duration"

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2
    const-string v0, "poster"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    const-string v0, "poster"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :try_start_0
    const-string v2, "stillImageUri"

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    :goto_0
    const-string v0, "custom_fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 173
    const-string v0, "custom_fields"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 176
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 177
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 179
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
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

    .line 168
    iget-object v2, p0, Lcom/brightcove/player/edge/EdgeTask;->errors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 186
    const-string v0, "customFields"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    const-string v2, "account_id"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v2, "cue_points"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v2, "custom_fields"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v2, "duration"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v2, "poster"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v2, "sources"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0, p1, v1, v0}, Lcom/brightcove/player/edge/EdgeTask;->parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)V

    .line 201
    return-object v1
.end method

.method private buildVideoSourceCollections(Lorg/json/JSONObject;)Ljava/util/Set;
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
    .line 206
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-direct {p0, p1}, Lcom/brightcove/player/edge/EdgeTask;->buildSourcesFromJSON(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 208
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 211
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 215
    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v1

    .line 217
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 219
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/media/DeliveryType;

    .line 226
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 227
    new-instance v6, Lcom/brightcove/player/model/SourceCollection;

    invoke-direct {v6, v1, v0}, Lcom/brightcove/player/model/SourceCollection;-><init>(Ljava/util/Set;Lcom/brightcove/player/media/DeliveryType;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_3
    return-object v2
.end method

.method private emitError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/brightcove/player/edge/EdgeTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "error"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    return-void
.end method


# virtual methods
.method protected buildVideoFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Video;
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/brightcove/player/edge/EdgeTask;->buildVideoProperties(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 130
    invoke-direct {p0, p1}, Lcom/brightcove/player/edge/EdgeTask;->buildVideoSourceCollections(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    .line 131
    iget-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/edge/EdgeTask;->buildVideoCuePoints(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;)Ljava/util/List;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_0

    .line 135
    new-instance v0, Lcom/brightcove/player/model/Video;

    invoke-direct {v0, v1, v2, v3}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 140
    :goto_0
    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lcom/brightcove/player/model/Video;

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    check-cast p1, [Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/edge/EdgeTask;->doInBackground([Ljava/net/URI;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URI;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eq v0, v4, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uriRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    aget-object v0, p1, v5

    iput-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->uri:Ljava/net/URI;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v0, "BCOV-POLICY"

    iget-object v2, p0, Lcom/brightcove/player/edge/EdgeTask;->policy:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->options:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/brightcove/player/edge/EdgeTask;->options:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_2
    const/4 v0, 0x0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/brightcove/player/edge/EdgeTask;->httpService:Lcom/brightcove/player/media/HttpService;

    iget-object v3, p0, Lcom/brightcove/player/edge/EdgeTask;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3, v1}, Lcom/brightcove/player/media/HttpService;->doJSONGetRequest(Ljava/net/URI;Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "uriError"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/brightcove/player/edge/EdgeTask;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/brightcove/player/edge/EdgeTask;->emitError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "Not a valid JSON Response"

    invoke-direct {p0, v2, v1}, Lcom/brightcove/player/edge/EdgeTask;->emitError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected parseJSONProperties(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)V
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-static {v0}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 356
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_1
    return-void
.end method
