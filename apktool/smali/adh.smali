.class public final Ladh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lade;
.implements Lalw$a;


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

.field final b:Laxn;

.field final c:Laej;

.field final d:Laed;

.field protected e:Laej$a;

.field protected f:Laej$a;

.field protected g:Laej$a;

.field private final h:Lalw;

.field private final i:Ladc;

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

.field private final k:Lacq;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Laej;->a()Laej;

    move-result-object v1

    invoke-static {}, Laed;->a()Laed;

    move-result-object v2

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v3

    sget-object v4, Laec;->a:Laxn;

    new-instance v5, Ladc;

    invoke-direct {v5}, Ladc;-><init>()V

    new-instance v6, Lbgq;

    invoke-direct {v6}, Lbgq;-><init>()V

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ladh;-><init>(Laej;Laed;Lalw;Laxn;Ladc;Ljavax/inject/Provider;Lacq;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Laej;Laed;Lalw;Laxn;Ladc;Ljavax/inject/Provider;Lacq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laej;",
            "Laed;",
            "Lalw;",
            "Laxn;",
            "Ladc;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lacq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ladh;->a:Ljava/util/Map;

    .line 115
    new-instance v0, Ladh$1;

    invoke-direct {v0, p0}, Ladh$1;-><init>(Ladh;)V

    iput-object v0, p0, Ladh;->e:Laej$a;

    .line 139
    new-instance v0, Ladh$2;

    invoke-direct {v0, p0}, Ladh$2;-><init>(Ladh;)V

    iput-object v0, p0, Ladh;->f:Laej$a;

    .line 161
    new-instance v0, Ladh$3;

    invoke-direct {v0, p0}, Ladh$3;-><init>(Ladh;)V

    iput-object v0, p0, Ladh;->g:Laej$a;

    .line 71
    iput-object p1, p0, Ladh;->c:Laej;

    .line 72
    iput-object p2, p0, Ladh;->d:Laed;

    .line 73
    iput-object p4, p0, Ladh;->b:Laxn;

    .line 74
    iput-object p3, p0, Ladh;->h:Lalw;

    .line 75
    iput-object p5, p0, Ladh;->i:Ladc;

    .line 76
    iput-object p6, p0, Ladh;->j:Ljavax/inject/Provider;

    .line 77
    iput-object p7, p0, Ladh;->k:Lacq;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Ladh;->c:Laej;

    iget-object v1, p0, Ladh;->g:Laej$a;

    invoke-virtual {v0, v1}, Laej;->a(Laej$a;)V

    .line 83
    return-void
.end method

.method public final a(Ladf;)V
    .locals 0
    .param p1    # Ladf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 88
    return-void
.end method

.method public final a(Laly;)V
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Ladh;->a:Ljava/util/Map;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Ladh;->k:Lacq;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v0, v2, v1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 288
    :cond_0
    return-void
.end method

.method public final a(Laly;Lbgl;Lus;)V
    .locals 10
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v0, p0, Ladh;->a:Ljava/util/Map;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

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
    invoke-virtual {p3}, Lus;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v1, v8

    iget-object v2, p1, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 246
    :try_start_0
    iget-object v1, p0, Ladh;->b:Laxn;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lbgl;->mBuffer:[B

    iget v4, p2, Lbgl;->mSize:I

    invoke-virtual {v1, v2, v3, v4}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Ladh;->d:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 268
    :goto_1
    iget-object v2, p0, Ladh;->k:Lacq;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ladh;->d:Laed;

    invoke-virtual {v4, v0}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {p3}, Lus;->d()Z

    move-result v4

    invoke-virtual {p3}, Lus;->c()I

    move-result v5

    int-to-long v6, v5

    const-string v5, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v2, v5, v3}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v2, v2, Lacq;->a:Lama;

    invoke-virtual {v2}, Lama;->f()Ljava/lang/String;

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
    iget-object v1, p0, Ladh;->c:Laej;

    invoke-virtual {v1}, Laej;->c()V

    .line 275
    iget-object v1, p0, Ladh;->c:Laej;

    new-array v2, v9, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->INTRO_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Laej;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 278
    :cond_2
    iget-object v1, p0, Ladh;->k:Lacq;

    invoke-virtual {v1, v0}, Lacq;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto/16 :goto_0

    .line 250
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 252
    iget-object v1, p0, Ladh;->d:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v1

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 258
    iget-object v1, p0, Ladh;->d:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v1, v8

    .line 260
    goto :goto_1

    .line 264
    :cond_4
    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 265
    iget-object v1, p0, Ladh;->d:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v0, v2}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    return-void
.end method

.method final a(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v0, p0, Ladh;->a:Ljava/util/Map;

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Ladh;->d:Laed;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p1, v1}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v1, v0, 0x0

    .line 183
    iget-object v0, p0, Ladh;->i:Ladc;

    invoke-virtual {v0}, Ladc;->a()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v0, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v6, Laly$a;

    invoke-direct {v6}, Laly$a;-><init>()V

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v7, v6, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Laly$a;->e:Ljava/lang/String;

    iput-object v0, v6, Laly$a;->d:Ljava/lang/String;

    iput-object v5, v6, Laly$a;->f:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IntroVideo-"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Laly$a;->g:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v6, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "DISCOVER"

    aput-object v5, v0, v3

    const-string v3, "STORIES"

    aput-object v3, v0, v2

    iget-object v3, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v3, v0, v8

    iput-object v0, v6, Laly$a;->h:[Ljava/lang/String;

    const-string v0, "DISCOVER"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v6, v0, v3, v5}, Laly$a;->a(Ljava/lang/String;Ljava/lang/String;I)Laly$a;

    move-result-object v0

    invoke-virtual {v0}, Laly$a;->a()Laly;

    move-result-object v0

    iget-object v3, p0, Ladh;->h:Lalw;

    invoke-virtual {v3, v0, p0}, Lalw;->a(Laly;Lalw$a;)V

    iget-object v0, p0, Ladh;->k:Lacq;

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

    invoke-virtual {v0, v6, v3, v5}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Ladh;->k:Lacq;

    invoke-virtual {v0, p1}, Lacq;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    move v0, v1

    .line 190
    :goto_2
    return v0

    .line 183
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ladh;->j:Ljavax/inject/Provider;

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
    iget-object v0, p0, Ladh;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Ladh;->d:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p1, v2}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Ladh;->c:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$a;

    const/4 v2, 0x0

    iget-object v3, p0, Ladh;->e:Laej$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$a;)V

    .line 93
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Ladh;->c:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$a;

    const/4 v2, 0x0

    iget-object v3, p0, Ladh;->f:Laej$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$a;)V

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
