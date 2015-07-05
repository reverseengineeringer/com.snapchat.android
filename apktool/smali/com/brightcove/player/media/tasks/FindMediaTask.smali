.class public Lcom/brightcove/player/media/tasks/FindMediaTask;
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
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected event:Lcom/brightcove/player/event/Event;

.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field protected httpService:Lcom/brightcove/player/media/HttpService;

.field protected options:Ljava/util/Map;
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

.field protected queryBaseURL:Ljava/lang/String;

.field protected uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/brightcove/player/media/tasks/FindMediaTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/media/tasks/FindMediaTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventEmitterRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseURLRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    const-string v0, "token"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tokenRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    const-string v0, "media_delivery"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaDeliveryRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_7
    iput-object p1, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 85
    iput-object p2, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->event:Lcom/brightcove/player/event/Event;

    .line 86
    iput-object p3, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->queryBaseURL:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->options:Ljava/util/Map;

    .line 88
    new-instance v0, Lcom/brightcove/player/media/HttpService;

    invoke-direct {v0}, Lcom/brightcove/player/media/HttpService;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->httpService:Lcom/brightcove/player/media/HttpService;

    .line 89
    return-void
.end method


# virtual methods
.method public buildURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    .prologue
    .line 161
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->options:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 162
    const-string v0, "command"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->options:Ljava/util/Map;

    const-string v2, "video_fields"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    if-nez v0, :cond_1

    .line 166
    const-string v0, "video_fields"

    sget-object v2, Lcom/brightcove/player/media/VideoFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/brightcove/player/util/StringUtil;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->queryBaseURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brightcove/player/media/HttpService;->buildURIWithQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1
    const-string v2, "accountId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 169
    const-string v0, "accountId"

    .line 173
    :goto_1
    const-string v2, "video_fields"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",accountId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/media/tasks/FindMediaTask;->doInBackground([Ljava/net/URI;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URI;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eq v0, v4, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uriRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    aget-object v1, p1, v5

    iput-object v1, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->uri:Ljava/net/URI;

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->httpService:Lcom/brightcove/player/media/HttpService;

    iget-object v2, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Lcom/brightcove/player/media/HttpService;->doJSONGetRequest(Ljava/net/URI;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, "uriError"

    invoke-static {v2}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/brightcove/player/media/tasks/FindMediaTask;->emitError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "Not a valid JSON Response"

    invoke-virtual {p0, v2, v1}, Lcom/brightcove/player/media/tasks/FindMediaTask;->emitError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected emitError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
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

    .line 147
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindMediaTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "error"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    return-void
.end method

.method public executeWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaAPICommandRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idFieldRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URI;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/brightcove/player/media/tasks/FindMediaTask;->buildURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/media/tasks/FindMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void
.end method

.method public executeWithURI(Ljava/net/URI;)V
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uriRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URI;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/media/tasks/FindMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
