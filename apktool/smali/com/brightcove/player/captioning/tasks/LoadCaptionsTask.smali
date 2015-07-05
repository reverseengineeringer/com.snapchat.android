.class public Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "didLoadCaptions",
        "closedCaptioningError"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {}
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;,
        Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URI;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/brightcove/player/event/Component;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

.field private currentTTMLDocument:Lcom/brightcove/player/model/TTMLDocument;

.field private currentWebVTTDocument:Lcom/brightcove/player/model/WebVTTDocument;

.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private lastError:Ljava/lang/String;

.field private lastException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide an EventEmitter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-class v0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    invoke-static {p1, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 67
    iput-object p2, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;Lcom/brightcove/player/model/WebVTTDocument;)Lcom/brightcove/player/model/WebVTTDocument;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentWebVTTDocument:Lcom/brightcove/player/model/WebVTTDocument;

    return-object p1
.end method

.method static synthetic access$102(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;Lcom/brightcove/player/model/TTMLDocument;)Lcom/brightcove/player/model/TTMLDocument;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentTTMLDocument:Lcom/brightcove/player/model/TTMLDocument;

    return-object p1
.end method

.method private doGetRequestAsStream(Ljava/net/URI;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;)V
    .locals 5

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a valid URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    if-nez p2, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a listener to process the InputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "issuing GET request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;->onStreamReady(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    :cond_2
    return-void

    .line 139
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 139
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private emitErrorMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "errorMessage"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "error"

    iget-object v2, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "closedCaptioningError"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Ljava/net/URI;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->doInBackground([Ljava/net/URI;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URI;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    array-length v0, p1

    if-ne v0, v2, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a single URI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput-object v3, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->WEBVTT:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    if-ne v0, v1, :cond_3

    .line 83
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    new-instance v1, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$1;-><init>(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;)V

    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->doGetRequestAsStream(Ljava/net/URI;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :cond_2
    :goto_0
    return-object v3

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "exception while issuing HTTP request"

    iput-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    .line 91
    invoke-virtual {p0, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->cancel(Z)Z

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    const-string v1, "unexpected exception parsing WebVTT response"

    iput-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    .line 95
    invoke-virtual {p0, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->cancel(Z)Z

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    sget-object v1, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->TTML:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    if-ne v0, v1, :cond_2

    .line 99
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    new-instance v1, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$2;

    invoke-direct {v1, p0}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$2;-><init>(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;)V

    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->doGetRequestAsStream(Ljava/net/URI;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const-string v1, "exception while issuing HTTP request"

    iput-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    .line 108
    invoke-virtual {p0, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->cancel(Z)Z

    goto :goto_0

    .line 109
    :catch_3
    move-exception v0

    .line 110
    const-string v1, "exception parsing DFXP TTML response"

    iput-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    .line 112
    invoke-virtual {p0, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->cancel(Z)Z

    goto :goto_0

    .line 113
    :catch_4
    move-exception v0

    .line 114
    const-string v1, "unexpected exception parsing DFXP TTML response"

    iput-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastException:Ljava/lang/Exception;

    .line 116
    invoke-virtual {p0, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->cancel(Z)Z

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->lastError:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->emitErrorMessage(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    sget-object v2, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->TTML:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    if-ne v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentTTMLDocument:Lcom/brightcove/player/model/TTMLDocument;

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "ttmlDocument"

    iget-object v2, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentTTMLDocument:Lcom/brightcove/player/model/TTMLDocument;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "didLoadCaptions"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->captionsType:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    sget-object v2, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->WEBVTT:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentWebVTTDocument:Lcom/brightcove/player/model/WebVTTDocument;

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "webvttDocument"

    iget-object v2, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentWebVTTDocument:Lcom/brightcove/player/model/WebVTTDocument;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
