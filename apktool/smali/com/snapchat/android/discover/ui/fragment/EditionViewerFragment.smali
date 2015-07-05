.class public Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lauj$a;
.implements Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;
.implements Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lauj$a;",
        "Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;",
        "Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;"
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/discover/model/ChannelPage;
    .annotation build Lcgb;
    .end annotation
.end field

.field private b:Laem;

.field private c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
    .annotation build Lcgc;
    .end annotation
.end field

.field private d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

.field private final e:Lavs;

.field private final f:Lcom/squareup/otto/Bus;

.field private final g:Laby;

.field private final h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final i:Ladf;

.field private final j:Lalb;

.field private k:Lauj;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field private r:Z

.field private final s:Lbgk;

.field private t:J

.field private u:Labr;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 103
    new-instance v1, Lavs;

    invoke-direct {v1}, Lavs;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-static {}, Laby;->a()Laby;

    move-result-object v3

    new-instance v4, Lbgk;

    invoke-direct {v4}, Lbgk;-><init>()V

    new-instance v5, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v5}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v6

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>(Lavs;Lcom/squareup/otto/Bus;Laby;Lbgk;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lalb;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Lavs;Lcom/squareup/otto/Bus;Laby;Lbgk;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lalb;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:J

    .line 115
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    .line 116
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lavs;

    .line 117
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Laby;

    .line 118
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    .line 119
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->s:Lbgk;

    .line 120
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 121
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lalb;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    iget-object v0, v0, Ladf;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    iget-object v1, v1, Ladf;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 279
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Laew;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-direct {v2, v3, v4, v0}, Laew;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Laew;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-direct {v1, v2, v3}, Laew;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setAlpha(F)V

    .line 326
    return-void
.end method

.method public final a(I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget v3, v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b:I

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->f()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    .line 411
    :goto_1
    const-string v3, "EditionViewerFragment"

    const-string v4, "onRotate %d with isLandscapeSupported %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    sparse-switch p1, :sswitch_data_0

    .line 432
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setLockedInPlace(Z)V

    .line 435
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 410
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 415
    :sswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbaw;

    invoke-direct {v3, v1}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 418
    :sswitch_1
    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbaw;

    invoke-direct {v3, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 420
    goto :goto_2

    .line 424
    :sswitch_2
    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbaw;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 426
    goto :goto_2

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1000 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a()V

    .line 332
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    if-eqz v0, :cond_4

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    iget-object v5, v5, Labr;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    iget-object v5, v5, Labr;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    int-to-long v8, v5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ladf;->d(Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    new-instance v5, Lgv;

    invoke-direct {v5}, Lgv;-><init>()V

    invoke-static {v2, v3}, Lavf;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lgv;->timeViewed:Ljava/lang/Double;

    iput-object v0, v5, Lgv;->editionId:Ljava/lang/String;

    iput-object v4, v5, Lgv;->publisherId:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lgv;->numSnapsViewed:Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lgv;->numLongformViewed:Ljava/lang/Long;

    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const-string v0, "DiscoverAnalytics"

    const-string v2, "Unsupported Discover exit method, will leave as null in logged event."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    long-to-int v0, v10

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lgv;->snapIndexCount:Ljava/lang/Long;

    :cond_0
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    iget-object v2, v0, Labr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-ne v5, v6, :cond_1

    iget-object v5, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-virtual {v5, v6, v0}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "type"

    const-string v7, "abandoned"

    invoke-virtual {v0, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v6, "reachability"

    iget-object v5, v5, Labq;->a:Lale;

    invoke-virtual {v5}, Lale;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_2

    .line 459
    :pswitch_0
    sget-object v0, Lhl;->SWIPE_BEGINNING:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lhl;->SWIPE_END:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lhl;->ENTER_BACKGROUND:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lhl;->SWIPE_DOWN:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lhl;->AUTO_ADVANCE:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lhl;->BACK_PRESSED:Lhl;

    iput-object v0, v5, Lgv;->exitEvent:Lhl;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    iget-object v4, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v5, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const-string v6, "DISCOVER_EDITION_VIEW_SUMMARY"

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "session_id"

    invoke-virtual {v6, v7, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v6, "publisher_name"

    invoke-virtual {v4, v6, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "edition_id"

    invoke-virtual {v4, v5, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v0, v0, Labq;->a:Lale;

    invoke-virtual {v0}, Lale;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v3, "count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 471
    :goto_3
    return-void

    .line 469
    :cond_4
    const-string v0, "EditionViewerFragment"

    const-string v2, "edition ID or view record is null when trying to report edition exit metrics."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbaw;

    invoke-direct {v3, v0}, Lbaw;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 196
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbel;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v3, v4}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbdg;

    invoke-direct {v3, v1}, Lbdg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbap;

    sget-object v4, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v3, v4}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 199
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbdt;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-direct {v3, v0}, Lbdt;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v0, v2}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Lauj;

    iput v1, v0, Lauj;->mRotation:I

    iget-object v1, v0, Lauj;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lauj;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:J

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(II)V

    .line 211
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Lauj;

    iget-object v0, v0, Lauj;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lbaw;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbaw;

    invoke-direct {v2, v1}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 223
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->BACK_PRESSED:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_1
    return v1

    .line 221
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Lala;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lalb;

    invoke-virtual {v0}, Lalb;->b()Lala;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 337
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    const-string v0, "open_to_dsnap_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    const-string v0, "archived_edition"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Z

    const-string v0, "edition_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    const-string v0, "open_to_longform"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:Z

    const-string v0, "edition_open_origin"

    sget-object v3, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->values()[Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v0, "open_to_start"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    move-object v2, p0

    :goto_0
    iput v0, v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Laby;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Laby;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Laby;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    invoke-static {v2}, Laby;->a(Ljava/lang/String;)V

    iget-object v0, v0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-interface {v0, v2}, Lace;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    invoke-virtual {v0, v2}, Ladf;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Ladf;

    invoke-virtual {v3, v2}, Ladf;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    move-object v2, p0

    goto :goto_0

    :cond_3
    move-object v2, p0

    goto :goto_0

    .line 131
    :cond_4
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Z

    .line 132
    new-instance v0, Labr;

    invoke-direct {v0}, Labr;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    sget-object v2, Lld;->CHAT:Lld;

    invoke-virtual {v0, v1, v2}, Labr;->a(Ljava/lang/String;Lld;)V

    .line 139
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Z

    if-eqz v0, :cond_6

    .line 141
    new-instance v0, Laek;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    invoke-direct {v0, v1, v2, v3}, Laek;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    .line 147
    :goto_2
    new-instance v0, Lauj;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lauj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Lauj;

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Lauj;

    iput-object p0, v0, Lauj;->mScreenRotationListener:Lauj$a;

    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 150
    return-void

    .line 144
    :cond_6
    new-instance v0, Laen;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Labr;

    invoke-direct {v0, v1, v2, v3}, Laen;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 346
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 357
    :goto_0
    return-object v0

    .line 348
    :pswitch_0
    const-string v0, "EditionViewerFragment"

    const-string v2, "creating DSnapPageVirtualTable cursor loader"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 351
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 156
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    .line 157
    const v0, 0x7f0a01dc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOnSwipeOutListener(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 164
    const v0, 0x7f0a01dd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setColorFilter(I)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setFadeFullScreenListener(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lavs;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lavs;->a(Landroid/widget/ImageView;Z)V

    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 296
    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Laem;

    invoke-virtual {v0, v1}, Laem;->a(Landroid/view/ViewGroup;)V

    .line 306
    :cond_1
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 307
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const-string v1, "EditionViewerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadFinished - loaderId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    invoke-virtual {v0, p2}, Laem;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laem;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Ljava/lang/String;

    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:I

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:I

    invoke-virtual {v1, v2, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(IZ)V

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPanel(I)V

    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:Z

    const-string v0, "EditionViewerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening page to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " longform? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Laem;

    invoke-virtual {v2}, Laem;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public final z_()J
    .locals 2

    .prologue
    .line 400
    const-wide/32 v0, 0xea60

    return-wide v0
.end method
