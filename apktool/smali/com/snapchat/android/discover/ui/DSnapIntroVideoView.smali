.class public Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
.super Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
.source "SourceFile"


# instance fields
.field protected a:Lafq;

.field private final b:Lafu;

.field private c:Landroid/view/View;

.field private d:Lcom/snapchat/android/ui/TextureVideoView;

.field private e:Lcom/snapchat/android/discover/model/ChannelPage;

.field private f:Lada;

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

.field private k:Lacr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 54
    new-instance v0, Lafu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafu;-><init>(Z)V

    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lafu;Lbal;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lacy;Lacq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lbhk;Lcom/squareup/otto/Bus;Lafu;Lbal;)V
    .locals 12

    .prologue
    .line 67
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

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lacy;Lacq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laef;Lbal;Lbhk;Lcom/squareup/otto/Bus;)V

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 49
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 50
    sget-object v2, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 203
    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Lafq;

    .line 68
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lafu;Lbal;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 49
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 50
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 203
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Lafq;

    .line 59
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    new-instance v0, Lada;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lacr;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lada;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lacr;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Lada;

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Lada;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->f:Lada;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laos;->c:J

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 20

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    aput-object v4, v2, v3

    .line 133
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v2, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/TextureVideoView;->getDuration()I

    move-result v2

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/TextureVideoView;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->l:Laef;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Laef;->d(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    int-to-long v14, v3

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lacr;

    iget-object v13, v13, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v13}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v13

    sget-object v16, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    move-object/from16 v0, v16

    if-eq v5, v0, :cond_4

    new-instance v16, Lhs;

    invoke-direct/range {v16 .. v16}, Lhs;-><init>()V

    invoke-static {v6, v7}, Lawd;->a(J)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lhs;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->wasFullView()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lhs;->fullView:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    iput-object v8, v0, Lhs;->splashId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v9, v0, Lhs;->editionId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v10, v0, Lhs;->publisherId:Ljava/lang/String;

    invoke-static {v12}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lhs;->mediaType:Lih;

    move-object/from16 v0, v16

    iput-object v13, v0, Lhs;->source:Llv;

    const-wide/16 v12, 0x0

    cmp-long v5, v14, v12

    if-ltz v5, :cond_1

    invoke-static {v14, v15}, Lawd;->a(J)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lhs;->mediaDisplayTimeSec:Ljava/lang/Double;

    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-ltz v5, :cond_2

    invoke-static {v2, v3}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lhs;->snapTimeSec:Ljava/lang/Double;

    :cond_2
    if-gez v11, :cond_6

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lhs;->snapIndexCount:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lhs;->snapIndexPos:Ljava/lang/Long;

    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    new-instance v2, Lng$a;

    invoke-direct {v2}, Lng$a;-><init>()V

    iput-object v10, v2, Lng$a;->mChannelName:Ljava/lang/String;

    iput-object v9, v2, Lng$a;->mEditionName:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v2, Lng$a;->mPosition:I

    invoke-virtual {v2}, Lng$a;->a()Lng;

    move-result-object v2

    iget-object v3, v4, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    invoke-virtual {v2}, Lnc;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    iget-object v5, v3, Lna;->mConfiguration:Lnb;

    iget-object v5, v5, Lnb;->mStudySettings:Lakn;

    const-string v8, "AdManager"

    const-string v9, "ad_splash_impression_duration"

    invoke-virtual {v5, v8, v9}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_7

    iget-object v5, v3, Lna;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v6, Lna$2;

    invoke-direct {v6, v3, v2, v4}, Lna$2;-><init>(Lna;Lnc;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_4
    :goto_2
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 155
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    invoke-virtual {v2}, Lafu;->b()V

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    .line 157
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2
.end method

.method public final a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    aput-object v1, v0, v6

    .line 114
    iput-boolean v7, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbet;

    invoke-direct {v1, v6}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 117
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

    new-instance v5, Lng$a;

    invoke-direct {v5}, Lng$a;-><init>()V

    iput-object v4, v5, Lng$a;->mChannelName:Ljava/lang/String;

    iput-object v3, v5, Lng$a;->mEditionName:Ljava/lang/String;

    iput v6, v5, Lng$a;->mPosition:I

    iput-object v1, v5, Lng$a;->mAdUnitId:Ljava/lang/String;

    iput-object v2, v5, Lng$a;->mTargetingParams:Ljava/util/Map;

    invoke-virtual {v5}, Lng$a;->a()Lng;

    move-result-object v1

    iget-object v0, v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a:Lna;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lnc;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v8}, Lna;->a(Lnc;Lne;)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->m:Lacy;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1, v8}, Lacy;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lafu;->c:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    invoke-virtual {v0}, Lafu;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;Lacr;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 77
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lacr;

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    const v0, 0x7f0a01f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    .line 81
    const v0, 0x7f0a01f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/ui/TextureVideoView;

    iget-boolean v2, v0, Lafu;->d:Z

    invoke-virtual {v0, v1, v2}, Lafu;->a(Lcom/snapchat/android/ui/TextureVideoView;Z)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b:Lafu;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Lafq;

    iput-object v1, v0, Lafu;->e:Lafq;

    .line 85
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public final o_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->o_()V

    .line 164
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 166
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Z

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 168
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 169
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 170
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;->a()V

    .line 97
    :cond_0
    return v1
.end method

.method public setCanAdvance(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->i:Z

    .line 201
    return-void
.end method
