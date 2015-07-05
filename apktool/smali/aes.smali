.class public final Laes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laer;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

.field public d:Laeq;

.field public e:Lbjx;

.field public f:Z

.field protected g:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected h:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final i:Laet;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Laet;

    invoke-direct {v0}, Laet;-><init>()V

    new-instance v1, Laer;

    invoke-direct {v1}, Laer;-><init>()V

    invoke-direct {p0, v0, v1}, Laes;-><init>(Laet;Laer;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Laet;Laer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Laes;->b:Ljava/util/Map;

    .line 43
    iput v2, p0, Laes;->j:I

    .line 44
    iput-boolean v2, p0, Laes;->f:Z

    .line 159
    new-instance v0, Laes$1;

    invoke-direct {v0, p0}, Laes$1;-><init>(Laes;)V

    iput-object v0, p0, Laes;->g:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 170
    new-instance v0, Laes$2;

    invoke-direct {v0, p0}, Laes$2;-><init>(Laes;)V

    iput-object v0, p0, Laes;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 55
    iput-object p1, p0, Laes;->i:Laet;

    .line 56
    iput-object p2, p0, Laes;->a:Laer;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    iget-object v0, p0, Laes;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 113
    iget-object v0, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iget-object v0, p0, Laes;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Laes;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iput v5, p0, Laes;->j:I

    .line 118
    iget-object v0, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->stopPlayback()V

    .line 119
    iput-boolean v5, p0, Laes;->f:Z

    .line 120
    return-void
.end method

.method public final b()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Laes;->e:Lbjx;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->clear()V

    .line 188
    iget-object v0, p0, Laes;->a:Laer;

    invoke-virtual {v0}, Laer;->b()V

    .line 191
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v0, "pubId"

    iget-object v1, p0, Laes;->e:Lbjx;

    invoke-virtual {v1}, Lbjx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "id"

    iget-object v1, p0, Laes;->e:Lbjx;

    invoke-virtual {v1}, Lbjx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "name"

    iget-object v1, p0, Laes;->e:Lbjx;

    invoke-virtual {v1}, Lbjx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Laes;->e:Lbjx;

    invoke-virtual {v0}, Lbjx;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjz;

    .line 198
    iget-object v7, p0, Laes;->i:Laet;

    invoke-virtual {v0}, Lbjz;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    invoke-virtual {v0}, Lbjz;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-direct {v1, v2, v8}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;)V

    :goto_1
    invoke-virtual {v0}, Lbjz;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbjz;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 199
    :cond_0
    :goto_2
    if-eqz v1, :cond_7

    .line 200
    const-string v2, "RemoteVideoViewController"

    const-string v7, "Selected rendition for id:%s, type:%s: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Laes;->e:Lbjx;

    invoke-virtual {v9}, Lbjx;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v0}, Lbjz;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    aput-object v1, v8, v12

    invoke-static {v2, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Laes;->a:Laer;

    iget-object v0, v0, Laer;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    sget-object v7, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    if-ne v0, v7, :cond_6

    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    :goto_3
    new-instance v7, Lcom/brightcove/player/model/Source;

    iget-object v1, v1, Lcom/snapchat/android/discover/ui/media/VideoProperties;->b:Ljava/lang/String;

    invoke-direct {v7, v1, v0}, Lcom/brightcove/player/model/Source;-><init>(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)V

    new-instance v1, Lcom/brightcove/player/model/SourceCollection;

    invoke-direct {v1, v7, v0}, Lcom/brightcove/player/model/SourceCollection;-><init>(Lcom/brightcove/player/model/Source;Lcom/brightcove/player/media/DeliveryType;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/brightcove/player/model/Video;

    invoke-direct {v1, v5, v0}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {v2, v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->add(Lcom/brightcove/player/model/Video;)V

    goto :goto_0

    .line 198
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v7, Laet;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-ne v2, v8, :cond_3

    const-string v2, "VideoRenditionSelector"

    const-string v7, "Selecting HLS url because configuration says so."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v7, Laet;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-eq v2, v8, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v8, v7, Laet;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    iget-object v8, v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lajt;

    const-string v9, "STREAMING"

    const-string v10, "MINIMUM_VERSION_SUPPORTING_HLS"

    const/16 v11, 0x13

    invoke-virtual {v8, v9, v10, v11}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-lt v2, v8, :cond_4

    move v2, v3

    :goto_4
    if-eqz v2, :cond_5

    const-string v2, "VideoRenditionSelector"

    const-string v7, "Selecting HLS url based on client decision."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    const-string v1, "VideoRenditionSelector"

    const-string v2, "Selecting best MP4 url because configuration says so."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbjz;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Laet;->a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;

    move-result-object v1

    goto/16 :goto_2

    .line 203
    :cond_6
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_3

    .line 205
    :cond_7
    const-string v1, "RemoteVideoViewController"

    const-string v2, "Failed to select rendition for id:%s, type:%s"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Laes;->e:Lbjx;

    invoke-virtual {v8}, Lbjx;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0}, Lbjz;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v1, v2, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 210
    :cond_8
    iget-boolean v0, p0, Laes;->f:Z

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Laes;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->start()V

    .line 214
    :cond_9
    return-void
.end method
