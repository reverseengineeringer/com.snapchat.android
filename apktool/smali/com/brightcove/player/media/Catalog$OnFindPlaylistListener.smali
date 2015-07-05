.class Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/media/Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFindPlaylistListener"
.end annotation


# instance fields
.field private playlistListener:Lcom/brightcove/player/media/PlaylistListener;

.field final synthetic this$0:Lcom/brightcove/player/media/Catalog;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/media/Catalog;Lcom/brightcove/player/media/PlaylistListener;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;->this$0:Lcom/brightcove/player/media/Catalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;->playlistListener:Lcom/brightcove/player/media/PlaylistListener;

    .line 208
    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "errors"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 215
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;->playlistListener:Lcom/brightcove/player/media/PlaylistListener;

    invoke-interface {v2, v0}, Lcom/brightcove/player/media/PlaylistListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "playlist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Playlist;

    .line 221
    iget-object v1, p0, Lcom/brightcove/player/media/Catalog$OnFindPlaylistListener;->playlistListener:Lcom/brightcove/player/media/PlaylistListener;

    invoke-interface {v1, v0}, Lcom/brightcove/player/media/PlaylistListener;->onPlaylist(Lcom/brightcove/player/model/Playlist;)V

    .line 223
    :cond_1
    return-void
.end method
