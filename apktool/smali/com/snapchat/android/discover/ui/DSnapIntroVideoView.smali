.class public Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
.super Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
.source "SourceFile"


# instance fields
.field protected a:Laeq;

.field private final b:Laeu;

.field private c:Landroid/view/View;

.field private d:Lcom/snapchat/android/ui/TextureVideoView;

.field private e:Lcom/snapchat/android/discover/model/ChannelPage;

.field private f:Laca;

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 52
    new-instance v0, Laeu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laeu;-><init>(Z)V

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laeu;Lazm;)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lbgk;Lcom/squareup/otto/Bus;Laeu;Lazm;)V
    .locals 12

    .prologue
    .line 65
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p10

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lazm;Lbgk;Lcom/squareup/otto/Bus;)V

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 49
    sget-object v2, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 191
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Laeq;

    .line 66
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laeu;Lazm;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 48
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 49
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 191
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Laeq;

    .line 57
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    new-instance v0, Laca;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Laca;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Laca;

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Laca;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Laca;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanv;->c:J

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "DSnapIntroVideoView"

    const-string v1, "Exited intro video page for channel %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->l:Ladf;

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ladf;->d(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v9, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    if-eq v0, v9, :cond_2

    new-instance v9, Lhj;

    invoke-direct {v9}, Lhj;-><init>()V

    invoke-static {v2, v3}, Lavf;->a(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lhj;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lhj;->fullView:Ljava/lang/Boolean;

    iput-object v4, v9, Lhj;->splashId:Ljava/lang/String;

    iput-object v5, v9, Lhj;->editionId:Ljava/lang/String;

    iput-object v6, v9, Lhj;->publisherId:Ljava/lang/String;

    invoke-static {v8}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v9, Lhj;->mediaType:Lhy;

    if-gez v7, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lhj;->snapIndexCount:Ljava/lang/Long;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lhj;->snapIndexPos:Ljava/lang/Long;

    :cond_1
    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    new-instance v0, Lmp$a;

    invoke-direct {v0}, Lmp$a;-><init>()V

    iput-object v6, v0, Lmp$a;->mChannelName:Ljava/lang/String;

    iput-object v5, v0, Lmp$a;->mEditionName:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v0, Lmp$a;->mPosition:I

    invoke-virtual {v0}, Lmp$a;->a()Lmp;

    move-result-object v0

    iget-object v1, v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    invoke-virtual {v0}, Lml;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdManager"

    const-string v6, "EndAdSplash for adKey:%s, viewTime:%s ms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lmj;->mConfiguration:Lmk;

    iget-object v5, v5, Lmk;->mStudySettings:Lajt;

    const-string v6, "AdManager"

    const-string v7, "ad_splash_impression_duration"

    invoke-virtual {v5, v6, v7}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-ltz v5, :cond_5

    iget-object v2, v1, Lmj;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v3, Lmj$2;

    invoke-direct {v3, v1, v0, v4}, Lmj$2;-><init>(Lmj;Lml;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_2
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    invoke-virtual {v0}, Laeu;->b()V

    .line 144
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    goto/16 :goto_0

    .line 132
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const-string v0, "AdManager"

    const-string v1, "endAdSplash(%s,%d) not shown long enough %d for recordImpression"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v4

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "DSnapIntroVideoView"

    const-string v1, "Entering intro video page for channel %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-boolean v7, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdt;

    invoke-direct {v1, v6}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    new-instance v5, Lmp$a;

    invoke-direct {v5}, Lmp$a;-><init>()V

    iput-object v4, v5, Lmp$a;->mChannelName:Ljava/lang/String;

    iput-object v3, v5, Lmp$a;->mEditionName:Ljava/lang/String;

    iput v6, v5, Lmp$a;->mPosition:I

    iput-object v1, v5, Lmp$a;->mAdUnitId:Ljava/lang/String;

    iput-object v2, v5, Lmp$a;->mTargetingParams:Ljava/util/Map;

    invoke-virtual {v5}, Lmp$a;->a()Lmp;

    move-result-object v1

    iget-object v0, v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lmj;

    const-string v2, "AdManager"

    const-string v3, "BeginAdSplash for adKey: "

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lml;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v8}, Lmj;->a(Lml;Lmn;)V

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->m:Laby;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1, v8}, Laby;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laeu;->c:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    invoke-virtual {v0}, Laeu;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 75
    const-string v0, "DSnapIntroVideoView"

    const-string v1, "Initializing for intro video URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    .line 78
    const v0, 0x7f0a01f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    iget-boolean v2, v0, Laeu;->d:Z

    invoke-virtual {v0, v1, v2}, Laeu;->a(Lcom/snapchat/android/ui/TextureVideoView;Z)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Laeu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Laeq;

    iput-object v1, v0, Laeu;->e:Laeq;

    .line 82
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 94
    :cond_0
    return v1
.end method

.method public final q_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->q_()V

    .line 152
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 154
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 156
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 157
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 158
    return-void
.end method

.method public setCanAdvance(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 189
    return-void
.end method
