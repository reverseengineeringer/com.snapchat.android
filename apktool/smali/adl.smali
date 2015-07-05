.class public final Ladl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladl$b;,
        Ladl$c;,
        Ladl$a;
    }
.end annotation


# instance fields
.field final a:Laeg;

.field public final b:Lcom/squareup/otto/Bus;

.field public final c:Ladm;

.field public final d:Lalb;

.field public final e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field final f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

.field final g:Lcom/snapchat/android/discover/model/database/table/EditionTable;

.field final h:Landroid/content/Context;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ladl$c;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ladm$a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ladl$c;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field public n:Z

.field public final o:Labx$a;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 99
    invoke-static {}, Laeg;->a()Laeg;

    move-result-object v1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Ladm;

    invoke-direct {v3}, Ladm;-><init>()V

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v5}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ladl;-><init>(Laeg;Lcom/squareup/otto/Bus;Ladm;Lalb;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Landroid/content/Context;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V

    .line 103
    return-void
.end method

.method private constructor <init>(Laeg;Lcom/squareup/otto/Bus;Ladm;Lalb;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Landroid/content/Context;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladl;->i:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladl;->j:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladl;->k:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladl;->l:Ljava/util/Map;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladl;->n:Z

    .line 458
    new-instance v0, Ladl$4;

    invoke-direct {v0, p0}, Ladl$4;-><init>(Ladl;)V

    iput-object v0, p0, Ladl;->o:Labx$a;

    .line 111
    iput-object p1, p0, Ladl;->a:Laeg;

    .line 112
    iput-object p2, p0, Ladl;->b:Lcom/squareup/otto/Bus;

    .line 113
    iput-object p3, p0, Ladl;->c:Ladm;

    .line 114
    iput-object p4, p0, Ladl;->d:Lalb;

    .line 115
    iput-object p5, p0, Ladl;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 116
    iput-object p6, p0, Ladl;->h:Landroid/content/Context;

    .line 117
    iput-object p7, p0, Ladl;->f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 118
    iput-object p8, p0, Ladl;->g:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 119
    iput-object p9, p0, Ladl;->m:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    .line 120
    return-void
.end method

.method private a(Ljava/lang/String;Ladl$c;)V
    .locals 8
    .param p2    # Ladl$c;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    iget-boolean v0, p2, Ladl$c;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-eqz v0, :cond_2

    .line 344
    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: %s - Caching link status publisher available? %s \n %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p2, Ladl$c;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ladl;->l:Ljava/util/Map;

    iget-object v1, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    iget-object v0, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->NOT_AVAILABLE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lauh;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ladl$3;

    invoke-direct {v1, p0, p2}, Ladl$3;-><init>(Ladl;Ladl$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 349
    :cond_1
    iget-object v0, p2, Ladl$c;->e:Ladl$a;

    if-eqz v0, :cond_2

    .line 350
    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: %s - Calling callback for link status %s \n %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p2, Ladl$c;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p2, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    new-instance v0, Ladl$2;

    invoke-direct {v0, p0, p2}, Ladl$2;-><init>(Ladl;Ladl$c;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 360
    :cond_2
    return-void
.end method

.method static a(Ladl$c;)Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Ladl$c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ladl$c;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;)V
    .locals 6

    .prologue
    .line 412
    iget-object v1, p0, Ladl;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl$c;

    .line 414
    if-nez v0, :cond_0

    .line 415
    const-string v0, "DiscoverDeepLinkController"

    const-string v2, "DISCOVER-LINK: %s - Link status ignored:\n %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    monitor-exit v1

    .line 429
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v2, "DiscoverDeepLinkController"

    const-string v3, "DISCOVER-LINK: %s - Link status determined\n %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iput-object p2, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    .line 421
    invoke-direct {p0, p1, v0}, Ladl;->a(Ljava/lang/String;Ladl$c;)V

    .line 423
    invoke-static {v0}, Ladl;->a(Ladl$c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    const-string v0, "DiscoverDeepLinkController"

    const-string v2, "DISCOVER-LINK: %s fully loaded after link"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_1
    :try_start_1
    iget-object v2, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 435
    iget-object v1, p0, Ladl;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl$c;

    .line 437
    if-nez v0, :cond_0

    .line 438
    const-string v0, "DiscoverDeepLinkController"

    const-string v2, "DISCOVER-LINK: %s - Publisher availability %s region: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    monitor-exit v1

    .line 455
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v2, "DiscoverDeepLinkController"

    const-string v3, "DISCOVER-LINK: %s - Publisher availability determined %s region: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    const/4 v2, 0x1

    iput-boolean v2, v0, Ladl$c;->b:Z

    .line 446
    iput-object p3, v0, Ladl$c;->c:Ljava/lang/String;

    .line 447
    invoke-direct {p0, p1, v0}, Ladl;->a(Ljava/lang/String;Ladl$c;)V

    .line 449
    invoke-static {v0}, Ladl;->a(Ladl$c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    const-string v0, "DiscoverDeepLinkController"

    const-string v2, "DISCOVER-LINK: %s fully loaded after link"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 453
    :cond_1
    :try_start_1
    iget-object v2, p0, Ladl;->j:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
