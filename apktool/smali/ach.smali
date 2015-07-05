.class public final Lach;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lace;
.implements Lalb$a;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lawp;

.field final c:Ladj;

.field final d:Ladd;

.field protected e:Ladj$a;

.field protected f:Ladj$a;

.field protected g:Ladj$a;

.field private final h:Lalb;

.field private final i:Lacc;

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Labq;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v1

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v2

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v3

    sget-object v4, Ladc;->a:Lawp;

    new-instance v5, Lacc;

    invoke-direct {v5}, Lacc;-><init>()V

    new-instance v6, Lbfq;

    invoke-direct {v6}, Lbfq;-><init>()V

    invoke-static {}, Labq;->a()Labq;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lach;-><init>(Ladj;Ladd;Lalb;Lawp;Lacc;Ljavax/inject/Provider;Labq;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Ladj;Ladd;Lalb;Lawp;Lacc;Ljavax/inject/Provider;Labq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ladj;",
            "Ladd;",
            "Lalb;",
            "Lawp;",
            "Lacc;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Labq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lach;->a:Ljava/util/Map;

    .line 115
    new-instance v0, Lach$1;

    invoke-direct {v0, p0}, Lach$1;-><init>(Lach;)V

    iput-object v0, p0, Lach;->e:Ladj$a;

    .line 139
    new-instance v0, Lach$2;

    invoke-direct {v0, p0}, Lach$2;-><init>(Lach;)V

    iput-object v0, p0, Lach;->f:Ladj$a;

    .line 161
    new-instance v0, Lach$3;

    invoke-direct {v0, p0}, Lach$3;-><init>(Lach;)V

    iput-object v0, p0, Lach;->g:Ladj$a;

    .line 71
    iput-object p1, p0, Lach;->c:Ladj;

    .line 72
    iput-object p2, p0, Lach;->d:Ladd;

    .line 73
    iput-object p4, p0, Lach;->b:Lawp;

    .line 74
    iput-object p3, p0, Lach;->h:Lalb;

    .line 75
    iput-object p5, p0, Lach;->i:Lacc;

    .line 76
    iput-object p6, p0, Lach;->j:Ljavax/inject/Provider;

    .line 77
    iput-object p7, p0, Lach;->k:Labq;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lach;->c:Ladj;

    iget-object v1, p0, Lach;->g:Ladj$a;

    invoke-virtual {v0, v1}, Ladj;->a(Ladj$a;)V

    .line 83
    return-void
.end method

.method public final a(Lacf;)V
    .locals 0
    .param p1    # Lacf;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 88
    return-void
.end method

.method public final a(Lalc;)V
    .locals 3
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lach;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lach;->k:Labq;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    const-string v0, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v1, v0, v2}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 288
    :cond_0
    return-void
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 10
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v0, p0, Lach;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 236
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p3}, Luc;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const-string v1, "IntroVideoMediaLoader"

    const-string v2, "DISCOVER-MEDIA: Downloaded intro video for %s (executed with %s priority)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :try_start_0
    iget-object v1, p0, Lach;->b:Lawp;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lbfl;->mBuffer:[B

    iget v4, p2, Lbfl;->mSize:I

    invoke-virtual {v1, v2, v3, v4}, Lawp;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lach;->d:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 268
    :goto_1
    iget-object v2, p0, Lach;->k:Labq;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v4, p0, Lach;->d:Ladd;

    invoke-virtual {v4, v0}, Ladd;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {p3}, Luc;->d()Z

    move-result v4

    invoke-virtual {p3}, Luc;->c()I

    move-result v5

    int-to-long v6, v5

    const-string v5, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v2, v5, v3}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v2, v2, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "return_size_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 273
    :cond_1
    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lach;->c:Ladj;

    invoke-virtual {v1}, Ladj;->b()V

    .line 275
    iget-object v1, p0, Lach;->c:Ladj;

    new-array v2, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->INTRO_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Ladj;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 278
    :cond_2
    iget-object v1, p0, Lach;->k:Labq;

    invoke-virtual {v1, v0}, Labq;->c(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto/16 :goto_0

    .line 250
    :cond_3
    :try_start_1
    const-string v1, "IntroVideoMediaLoader"

    const-string v2, "DISCOVER-MEDIA: Cannot cache intro video for %s, cache write failed."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lach;->d:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_1
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v1

    const-string v1, "IntroVideoMediaLoader"

    const-string v2, "DISCOVER-MEDIA: Cannot cache intro video for %s, external storage is not available."

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lach;->d:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v1, v8

    .line 260
    goto/16 :goto_1

    .line 264
    :cond_4
    const-string v1, "IntroVideoMediaLoader"

    const-string v2, "DISCOVER-MEDIA: Failed to download intro video for %s."

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lach;->d:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 103
    return-void
.end method

.method final a(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v0, p0, Lach;->a:Ljava/util/Map;

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lach;->d:Ladd;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p1, v1}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v1, v0, 0x0

    .line 183
    iget-object v0, p0, Lach;->i:Lacc;

    invoke-virtual {v0}, Lacc;->a()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v0, "IntroVideoMediaLoader"

    const-string v6, "DISCOVER-MEDIA: Requesting download for %s intro video (%s)."

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v6, Lalc$a;

    invoke-direct {v6}, Lalc$a;-><init>()V

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v7, v6, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lalc$a;->e:Ljava/lang/String;

    iput-object v0, v6, Lalc$a;->d:Ljava/lang/String;

    iput-object v5, v6, Lalc$a;->f:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IntroVideo-"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lalc$a;->g:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v6, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "DISCOVER"

    aput-object v5, v0, v3

    const-string v3, "STORIES"

    aput-object v3, v0, v2

    iget-object v3, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v3, v0, v9

    iput-object v0, v6, Lalc$a;->h:[Ljava/lang/String;

    const-string v0, "DISCOVER"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v6, v0, v3, v5}, Lalc$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lalc$a;

    move-result-object v0

    invoke-virtual {v0}, Lalc$a;->a()Lalc;

    move-result-object v0

    iget-object v3, p0, Lach;->h:Lalb;

    invoke-virtual {v3, v0, p0}, Lalb;->a(Lalc;Lalb$a;)V

    iget-object v0, p0, Lach;->k:Labq;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-static {v7}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v7

    const-string v8, "publisher_name"

    invoke-virtual {v7, v8, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v7, "intro_video_url"

    invoke-virtual {v5, v7, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v0, v6, v3, v5}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lach;->k:Labq;

    invoke-virtual {v0, p1}, Labq;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    move v0, v1

    .line 190
    :goto_2
    return v0

    .line 183
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lach;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lach;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lach;->d:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p1, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lach;->c:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$a;

    const/4 v2, 0x0

    iget-object v3, p0, Lach;->e:Ladj$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$a;)V

    .line 93
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lach;->c:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$a;

    const/4 v2, 0x0

    iget-object v3, p0, Lach;->f:Ladj$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$a;)V

    .line 98
    return-void
.end method

.method public final d()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
