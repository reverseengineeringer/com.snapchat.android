.class public Lcom/brightcove/player/edge/GetVideoTask;
.super Lcom/brightcove/player/edge/EdgeTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private videoListener:Lcom/brightcove/player/edge/VideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/brightcove/player/edge/GetVideoTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/edge/GetVideoTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/brightcove/player/edge/EdgeTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getById(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 5

    .prologue
    .line 39
    iput-object p2, p0, Lcom/brightcove/player/edge/GetVideoTask;->videoListener:Lcom/brightcove/player/edge/VideoListener;

    .line 42
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/net/URI;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/brightcove/player/edge/GetVideoTask;->baseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/brightcove/player/edge/GetVideoTask;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/videos/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/edge/GetVideoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getByReferenceId(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 5

    .prologue
    .line 49
    iput-object p2, p0, Lcom/brightcove/player/edge/GetVideoTask;->videoListener:Lcom/brightcove/player/edge/VideoListener;

    .line 52
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/net/URI;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/brightcove/player/edge/GetVideoTask;->baseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/brightcove/player/edge/GetVideoTask;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/videos/ref:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/edge/GetVideoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/edge/GetVideoTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 60
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/brightcove/player/edge/GetVideoTask;->buildVideoFromJSON(Lorg/json/JSONObject;)Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/brightcove/player/edge/GetVideoTask;->videoListener:Lcom/brightcove/player/edge/VideoListener;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/edge/VideoListener;->onVideo(Lcom/brightcove/player/model/Video;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/edge/GetVideoTask;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/brightcove/player/edge/GetVideoTask;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/brightcove/player/edge/GetVideoTask;->videoListener:Lcom/brightcove/player/edge/VideoListener;

    invoke-virtual {v2, v0}, Lcom/brightcove/player/edge/VideoListener;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/brightcove/player/edge/GetVideoTask;->errors:Ljava/util/List;

    const-string v1, "mediaRequestInvalidJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/edge/GetVideoTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/brightcove/player/edge/GetVideoTask;->errors:Ljava/util/List;

    const-string v1, "mediaRequestNoJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/edge/GetVideoTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/edge/GetVideoTask;->errors:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No data was found that matched your request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brightcove/player/edge/GetVideoTask;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
