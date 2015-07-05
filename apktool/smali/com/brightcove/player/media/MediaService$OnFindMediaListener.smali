.class Lcom/brightcove/player/media/MediaService$OnFindMediaListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/media/MediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFindMediaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/media/MediaService;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/media/MediaService;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/media/MediaService;Lcom/brightcove/player/media/MediaService$1;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;-><init>(Lcom/brightcove/player/media/MediaService;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4

    .prologue
    .line 614
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 615
    const-string v0, "token"

    iget-object v2, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->readToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/brightcove/player/media/MediaService;->access$100(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v0, "media_delivery"

    const-string v2, "http"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "options"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "options"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 621
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 626
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "videoID"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    new-instance v2, Lcom/brightcove/player/media/tasks/FindVideoTask;

    iget-object v0, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/media/MediaService;->access$200(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iget-object v3, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->access$300(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/brightcove/player/media/tasks/FindVideoTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "videoID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/brightcove/player/media/tasks/FindVideoTask;->findVideoById(Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "videoReferenceID"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    new-instance v2, Lcom/brightcove/player/media/tasks/FindVideoTask;

    iget-object v0, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/media/MediaService;->access$400(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iget-object v3, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->access$300(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/brightcove/player/media/tasks/FindVideoTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "videoReferenceID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/brightcove/player/media/tasks/FindVideoTask;->findVideoByReferenceId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 642
    iget-object v1, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # invokes: Lcom/brightcove/player/media/MediaService;->respondWithError(Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V
    invoke-static {v1, p1, v0}, Lcom/brightcove/player/media/MediaService;->access$700(Lcom/brightcove/player/media/MediaService;Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V

    goto :goto_0

    .line 632
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "playlistID"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    new-instance v2, Lcom/brightcove/player/media/tasks/FindPlaylistTask;

    iget-object v0, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/media/MediaService;->access$500(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iget-object v3, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->access$300(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playlistID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->findPlaylistById(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 643
    :catch_1
    move-exception v0

    .line 644
    iget-object v1, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # invokes: Lcom/brightcove/player/media/MediaService;->respondWithError(Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V
    invoke-static {v1, p1, v0}, Lcom/brightcove/player/media/MediaService;->access$700(Lcom/brightcove/player/media/MediaService;Lcom/brightcove/player/event/Event;Ljava/lang/Exception;)V

    goto :goto_0

    .line 635
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "playlistReferenceID"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    new-instance v2, Lcom/brightcove/player/media/tasks/FindPlaylistTask;

    iget-object v0, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/media/MediaService;->access$600(Lcom/brightcove/player/media/MediaService;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    iget-object v3, p0, Lcom/brightcove/player/media/MediaService$OnFindMediaListener;->this$0:Lcom/brightcove/player/media/MediaService;

    # getter for: Lcom/brightcove/player/media/MediaService;->queryBaseURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/brightcove/player/media/MediaService;->access$300(Lcom/brightcove/player/media/MediaService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playlistReferenceID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/brightcove/player/media/tasks/FindPlaylistTask;->findPlaylistByReferenceId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyNotFound"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
.end method
