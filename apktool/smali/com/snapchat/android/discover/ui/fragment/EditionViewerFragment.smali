.class public Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Laej$b;
.implements Lavh$a;
.implements Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;
.implements Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;


# instance fields
.field public a:Lcom/snapchat/android/discover/model/ChannelPage;
    .annotation build Lchc;
    .end annotation
.end field

.field private b:Lafm;

.field private c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
    .annotation build Lchd;
    .end annotation
.end field

.field private d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

.field private final e:Lawq;

.field private final f:Lcom/squareup/otto/Bus;

.field private final g:Lacy;

.field private final h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final i:Laef;

.field private final j:Lalw;

.field private final k:Laej;

.field private l:Lavh;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field private s:I

.field private t:Z

.field private final u:Lbhk;

.field private v:J

.field private w:Lacr;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 99
    new-instance v1, Lawq;

    invoke-direct {v1}, Lawq;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-static {}, Lacy;->a()Lacy;

    move-result-object v3

    new-instance v4, Lbhk;

    invoke-direct {v4}, Lbhk;-><init>()V

    new-instance v5, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v5}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Laef;->a()Laef;

    move-result-object v6

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v7

    invoke-static {}, Laej;->a()Laej;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>(Lawq;Lcom/squareup/otto/Bus;Lacy;Lbhk;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lalw;Laej;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lawq;Lcom/squareup/otto/Bus;Lacy;Lbhk;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lalw;Laej;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->s:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->v:J

    .line 113
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    .line 114
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lawq;

    .line 115
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lacy;

    .line 116
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    .line 117
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->u:Lbhk;

    .line 118
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 119
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lalw;

    .line 120
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Laej;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lafm;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lafm;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:I

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v0, v0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    iget-object v1, v1, Laef;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 280
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lafw;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-direct {v2, v3, v4, v0}, Lafw;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lafw;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-direct {v1, v2, v3}, Lafw;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setAlpha(F)V

    .line 323
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
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

    .line 383
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    .line 385
    sparse-switch p1, :sswitch_data_0

    .line 404
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setLockedInPlace(Z)V

    .line 407
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 382
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 387
    :sswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbx;

    invoke-direct {v3, v1}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 390
    :sswitch_1
    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbx;

    invoke-direct {v3, v2}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 392
    goto :goto_2

    .line 396
    :sswitch_2
    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbbx;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 398
    goto :goto_2

    .line 385
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
    .line 327
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a()V

    .line 329
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$2;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 368
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
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    if-eqz v0, :cond_5

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->v:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    iget-object v5, v5, Lacr;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    int-to-long v6, v5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    iget-object v5, v5, Lacr;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    int-to-long v8, v5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    invoke-virtual {v5, v10}, Laef;->d(Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    iget-object v5, v5, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v5

    iget v12, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->s:I

    new-instance v13, Lhe;

    invoke-direct {v13}, Lhe;-><init>()V

    invoke-static {v2, v3}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v13, Lhe;->timeViewed:Ljava/lang/Double;

    iput-object v0, v13, Lhe;->editionId:Ljava/lang/String;

    iput-object v4, v13, Lhe;->publisherId:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v13, Lhe;->numSnapsViewed:Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v13, Lhe;->numLongformViewed:Ljava/lang/Long;

    iput-object v5, v13, Lhe;->source:Llv;

    sget-object v0, Llv;->STORY:Llv;

    if-ne v5, v0, :cond_0

    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v13, Lhe;->viewLocationPos:Ljava/lang/Long;

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    long-to-int v0, v10

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v13, Lhe;->snapIndexCount:Ljava/lang/Long;

    :cond_1
    invoke-static {v13}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    iget-object v2, v0, Lacr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Lacq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-virtual {v5, v6, v0}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v6, "type"

    const-string v7, "abandoned"

    invoke-virtual {v0, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v6, "reachability"

    iget-object v5, v5, Lacq;->a:Lama;

    invoke-virtual {v5}, Lama;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_2

    .line 431
    :pswitch_0
    sget-object v0, Lhu;->SWIPE_BEGINNING:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lhu;->SWIPE_END:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lhu;->ENTER_BACKGROUND:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lhu;->SWIPE_DOWN:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lhu;->AUTO_ADVANCE:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lhu;->BACK_PRESSED:Lhu;

    iput-object v0, v13, Lhe;->exitEvent:Lhu;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 441
    :cond_4
    iget-object v0, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Lacq;

    iget-object v4, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    iget-object v5, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v6, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->b:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    iget-object v2, v2, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->e:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v7, "DISCOVER_EDITION_VIEW_SUMMARY"

    invoke-static {v7}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v7

    const-string v8, "session_id"

    invoke-virtual {v7, v8, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v7, "publisher_name"

    invoke-virtual {v4, v7, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "edition_id"

    invoke-virtual {v4, v5, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v0, v0, Lacq;->a:Lama;

    invoke-virtual {v0}, Lama;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v3, "count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v3, "source"

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 443
    :cond_5
    return-void

    .line 431
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

    new-instance v3, Lbbx;

    invoke-direct {v3, v0}, Lbbx;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 196
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbfk;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v3, v4}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeg;

    invoke-direct {v3, v1}, Lbeg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbq;

    sget-object v4, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v3, v4}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 199
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v3, Lbet;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-direct {v3, v0}, Lbet;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v0, v2}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Lavh;

    iput v1, v0, Lavh;->mRotation:I

    iget-object v1, v0, Lavh;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lavh;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->v:J

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
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Lavh;

    iget-object v0, v0, Lavh;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbx;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbbx;-><init>(I)V

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

.method public final f_()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lbbx;

    invoke-direct {v2, v1}, Lbbx;-><init>(I)V

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

.method protected final h()Lalv;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lalw;

    invoke-virtual {v0}, Lalw;->b()Lalv;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b()V

    .line 334
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
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

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->o:Ljava/lang/String;

    const-string v0, "archived_edition"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Z

    const-string v0, "edition_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    const-string v0, "open_to_longform"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->q:Z

    const-string v0, "adapter_index"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->s:I

    const-string v0, "edition_open_origin"

    sget-object v3, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->values()[Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    const-string v0, "open_to_start"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    move-object v2, p0

    :goto_0
    iput v0, v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->p:I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lacy;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lacy;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lacy;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    invoke-static {v2}, Lacy;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    invoke-interface {v0, v2}, Lade;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    invoke-virtual {v0, v2}, Laef;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Laef;

    invoke-virtual {v3, v2}, Laef;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    move v0, v1

    move-object v2, p0

    goto :goto_0

    :cond_3
    move-object v2, p0

    goto :goto_0

    .line 130
    :cond_4
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->t:Z

    .line 131
    new-instance v0, Lacr;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->r:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-direct {v0, v1}, Lacr;-><init>(Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    .line 133
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:Z

    if-eqz v0, :cond_5

    .line 135
    new-instance v0, Lafk;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    invoke-direct {v0, v1, v2, v3}, Lafk;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lafm;

    .line 141
    :goto_2
    new-instance v0, Lavh;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lavh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Lavh;

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Lavh;

    iput-object p0, v0, Lavh;->mScreenRotationListener:Lavh$a;

    .line 143
    return-void

    .line 138
    :cond_5
    new-instance v0, Lafn;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->w:Lacr;

    invoke-direct {v0, v1, v2, v3}, Lafn;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lafm;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 149
    const v0, 0x7f04004f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    .line 150
    const v0, 0x7f0a01da

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOnSwipeOutListener(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setBackgroundColor(I)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lafm;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setColorFilter(I)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setFadeFullScreenListener(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Laej;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v2, v0, Laej;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Laej;->g:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Laej;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Laej$b;

    aput-object p0, v2, v3

    iget-object v3, v0, Laej;->h:Landroid/os/Handler;

    new-instance v4, Laej$13;

    invoke-direct {v4, v0, v1, v2}, Laej$13;-><init>(Laej;Ljava/lang/String;[Laej$b;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:Laej;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Ljava/lang/String;

    iget-object v2, v0, Laej;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Laej;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lawq;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawq;->a(Landroid/widget/ImageView;Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lafm;

    invoke-virtual {v0, v1}, Lafm;->a(Landroid/view/ViewGroup;)V

    .line 299
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 300
    iput-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lafm;

    .line 303
    :cond_1
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 304
    return-void

    .line 290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final y_()J
    .locals 2

    .prologue
    .line 372
    const-wide/32 v0, 0xea60

    return-wide v0
.end method
