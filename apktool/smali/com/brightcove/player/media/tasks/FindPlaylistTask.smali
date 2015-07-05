.class public Lcom/brightcove/player/media/tasks/FindPlaylistTask;
.super Lcom/brightcove/player/media/tasks/FindMediaTask;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brightcove/player/media/tasks/FindMediaTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method


# virtual methods
.method public findPlaylistById(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "find_playlist_by_id"

    const-string v1, "playlist_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->executeWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public findPlaylistByReferenceId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "find_playlist_by_reference_id"

    const-string v1, "reference_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->executeWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    if-nez p1, :cond_1

    .line 62
    const-string v1, "mediaRequestNoResults"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->event:Lcom/brightcove/player/event/Event;

    iget-object v1, v1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "errors"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->event:Lcom/brightcove/player/event/Event;

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 85
    return-void

    .line 63
    :cond_1
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    const-string v1, "mediaRequestInvalidJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-static {p1, v1, v0}, Lcom/brightcove/player/media/MediaService;->buildPlaylistFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/Playlist;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->event:Lcom/brightcove/player/event/Event;

    iget-object v2, v2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v3, "playlist"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    const-string v1, "mediaRequestInvalidJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :catch_2
    move-exception v1

    const-string v1, "mediaRequestNoJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
