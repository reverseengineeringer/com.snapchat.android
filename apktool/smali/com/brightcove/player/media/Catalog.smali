.class public Lcom/brightcove/player/media/Catalog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "findPlaylist",
        "findVideo"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "error"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;,
        Lcom/brightcove/player/media/Catalog$OnFindVideoListener;
    }
.end annotation


# static fields
.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlistID"

.field public static final PLAYLIST_REFERENCE_ID:Ljava/lang/String; = "playlistReferenceID"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoID"

.field public static final VIDEO_REFERENCE_ID:Ljava/lang/String; = "videoReferenceID"


# instance fields
.field private eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private mediaService:Lcom/brightcove/player/media/MediaService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 55
    new-instance v0, Lcom/brightcove/player/media/MediaService;

    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/media/MediaService;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brightcove/player/media/Catalog;->mediaService:Lcom/brightcove/player/media/MediaService;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 59
    new-instance v0, Lcom/brightcove/player/media/MediaService;

    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {v0, v1, p1, p2}, Lcom/brightcove/player/media/MediaService;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brightcove/player/media/Catalog;->mediaService:Lcom/brightcove/player/media/MediaService;

    .line 60
    return-void
.end method


# virtual methods
.method public findPlaylistByID(Ljava/lang/String;Lcom/brightcove/player/media/PlaylistListener;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/media/Catalog;->findPlaylistByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/PlaylistListener;)V

    .line 150
    return-void
.end method

.method public findPlaylistByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/PlaylistListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/media/PlaylistListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v1, "playlistID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    if-eqz p2, :cond_0

    .line 165
    const-string v1, "options"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "findPlaylist"

    new-instance v3, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;

    invoke-direct {v3, p0, p3}, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;-><init>(Lcom/brightcove/player/media/Catalog;Lcom/brightcove/player/media/PlaylistListener;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 170
    return-void
.end method

.method public findPlaylistByReferenceID(Ljava/lang/String;Lcom/brightcove/player/media/PlaylistListener;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/media/Catalog;->findPlaylistByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/PlaylistListener;)V

    .line 180
    return-void
.end method

.method public findPlaylistByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/PlaylistListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/media/PlaylistListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v1, "playlistReferenceID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz p2, :cond_0

    .line 196
    const-string v1, "options"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "findPlaylist"

    new-instance v3, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;

    invoke-direct {v3, p0, p3}, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;-><init>(Lcom/brightcove/player/media/Catalog;Lcom/brightcove/player/media/PlaylistListener;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 201
    return-void
.end method

.method public findVideoByID(Ljava/lang/String;Lcom/brightcove/player/media/VideoListener;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/media/Catalog;->findVideoByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/VideoListener;)V

    .line 70
    return-void
.end method

.method public findVideoByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/VideoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/media/VideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v1, "videoID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    if-eqz p2, :cond_0

    .line 84
    const-string v1, "options"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "findVideo"

    new-instance v3, Lcom/brightcove/player/media/Catalog$OnFindVideoListener;

    invoke-direct {v3, p0, p3}, Lcom/brightcove/player/media/Catalog$OnFindVideoListener;-><init>(Lcom/brightcove/player/media/Catalog;Lcom/brightcove/player/media/VideoListener;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 88
    return-void
.end method

.method public findVideoByReferenceID(Ljava/lang/String;Lcom/brightcove/player/media/VideoListener;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/media/Catalog;->findVideoByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/VideoListener;)V

    .line 98
    return-void
.end method

.method public findVideoByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/media/VideoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/media/VideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string v1, "videoReferenceID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    if-eqz p2, :cond_0

    .line 113
    const-string v1, "options"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v2, "findVideo"

    new-instance v3, Lcom/brightcove/player/media/Catalog$OnFindVideoListener;

    invoke-direct {v3, p0, p3}, Lcom/brightcove/player/media/Catalog$OnFindVideoListener;-><init>(Lcom/brightcove/player/media/Catalog;Lcom/brightcove/player/media/VideoListener;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 117
    return-void
.end method

.method public getEventEmitter()Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/brightcove/player/media/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 232
    return-void
.end method
