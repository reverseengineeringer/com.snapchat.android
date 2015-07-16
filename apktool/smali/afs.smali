.class public final Lafs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lafr;

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

.field public d:Lafq;

.field public e:Lbky;

.field public f:Z

.field public g:I

.field protected h:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected i:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final j:Laft;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Laft;

    invoke-direct {v0}, Laft;-><init>()V

    new-instance v1, Lafr;

    invoke-direct {v1}, Lafr;-><init>()V

    invoke-direct {p0, v0, v1}, Lafs;-><init>(Laft;Lafr;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Laft;Lafr;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lafs;->b:Ljava/util/Map;

    .line 43
    iput v2, p0, Lafs;->k:I

    .line 44
    iput-boolean v2, p0, Lafs;->f:Z

    .line 45
    iput v2, p0, Lafs;->g:I

    .line 193
    new-instance v0, Lafs$1;

    invoke-direct {v0, p0}, Lafs$1;-><init>(Lafs;)V

    iput-object v0, p0, Lafs;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 205
    new-instance v0, Lafs$2;

    invoke-direct {v0, p0}, Lafs$2;-><init>(Lafs;)V

    iput-object v0, p0, Lafs;->i:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 56
    iput-object p1, p0, Lafs;->j:Laft;

    .line 57
    iput-object p2, p0, Lafs;->a:Lafr;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v0, p0, Lafs;->b:Ljava/util/Map;

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

    .line 114
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iget-object v0, p0, Lafs;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lafs;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    iput v5, p0, Lafs;->k:I

    .line 119
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->stopPlayback()V

    .line 120
    iput-boolean v5, p0, Lafs;->f:Z

    .line 121
    return-void
.end method

.method public final b()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lafs;->e:Lbky;

    if-eqz v0, :cond_8

    .line 223
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->clear()V

    .line 224
    iget-object v0, p0, Lafs;->a:Lafr;

    invoke-virtual {v0}, Lafr;->b()V

    .line 227
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 228
    const-string v0, "pubId"

    iget-object v1, p0, Lafs;->e:Lbky;

    invoke-virtual {v1}, Lbky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "id"

    iget-object v1, p0, Lafs;->e:Lbky;

    invoke-virtual {v1}, Lbky;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "name"

    iget-object v1, p0, Lafs;->e:Lbky;

    invoke-virtual {v1}, Lbky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lafs;->e:Lbky;

    invoke-virtual {v0}, Lbky;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbla;

    .line 234
    iget-object v7, p0, Lafs;->j:Laft;

    invoke-virtual {v0}, Lbla;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    invoke-virtual {v0}, Lbla;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-direct {v1, v2, v8}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;)V

    :goto_1
    invoke-virtual {v0}, Lbla;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbla;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 235
    :cond_0
    :goto_2
    if-eqz v1, :cond_6

    .line 236
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lafs;->e:Lbky;

    invoke-virtual {v7}, Lbky;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v0}, Lbla;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v12

    .line 238
    iget-object v0, p0, Lafs;->a:Lafr;

    iget-object v0, v0, Lafr;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/media/VideoProperties;->a:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    sget-object v7, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->HLS:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    if-ne v0, v7, :cond_5

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

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v7, Laft;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-eq v2, v8, :cond_0

    iget-object v2, v7, Laft;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    move-result-object v2

    sget-object v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    if-eq v2, v8, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v8, v7, Laft;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    iget-object v8, v8, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lakn;

    const-string v9, "STREAMING"

    const-string v10, "MINIMUM_VERSION_SUPPORTING_HLS"

    const/16 v11, 0x13

    invoke-virtual {v8, v9, v10, v11}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-lt v2, v8, :cond_4

    move v2, v3

    :goto_4
    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {v0}, Lbla;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Laft;->a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_4

    .line 239
    :cond_5
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_3

    .line 241
    :cond_6
    new-array v1, v12, [Ljava/lang/Object;

    iget-object v2, p0, Lafs;->e:Lbky;

    invoke-virtual {v2}, Lbky;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lbla;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    goto/16 :goto_0

    .line 246
    :cond_7
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v1, p0, Lafs;->i:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 247
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v1, p0, Lafs;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 249
    iget-boolean v0, p0, Lafs;->f:Z

    if-eqz v0, :cond_8

    .line 250
    iget-object v0, p0, Lafs;->c:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->start()V

    .line 253
    :cond_8
    return-void
.end method
