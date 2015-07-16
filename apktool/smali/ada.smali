.class public final Lada;
.super Laos;
.source "SourceFile"


# instance fields
.field private final e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final f:Lcom/squareup/otto/Bus;

.field private final g:Laef;

.field private final h:Landroid/content/res/Resources;

.field private final i:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final j:Lakr;

.field private final k:Lcom/snapchat/android/discover/model/ChannelPage;

.field private final l:Lcom/snapchat/android/discover/model/DSnapPage;

.field private final m:Lcom/snapchat/android/discover/model/DSnapPanel;

.field private final n:Lacr;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laot;Laef;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lcom/snapchat/android/util/debug/ReleaseManager;Lakr;Lacr;)V
    .locals 8

    .prologue
    .line 58
    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Laos;-><init>(Ljava/lang/String;JJ)V

    .line 59
    iput-object p3, p0, Lada;->g:Laef;

    .line 60
    iput-object p1, p0, Lada;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 61
    iput-object p4, p0, Lada;->f:Lcom/squareup/otto/Bus;

    .line 62
    iput-object p5, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 63
    iput-object p7, p0, Lada;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    .line 64
    iput-object p6, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 65
    invoke-virtual {p2, p0}, Laot;->a(Laos;)V

    .line 66
    move-object/from16 v0, p8

    iput-object v0, p0, Lada;->h:Landroid/content/res/Resources;

    .line 67
    move-object/from16 v0, p9

    iput-object v0, p0, Lada;->i:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 68
    move-object/from16 v0, p10

    iput-object v0, p0, Lada;->j:Lakr;

    .line 69
    move-object/from16 v0, p11

    iput-object v0, p0, Lada;->n:Lacr;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lacr;)V
    .locals 12

    .prologue
    .line 47
    new-instance v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Laot;->a()Laot;

    move-result-object v2

    invoke-static {}, Laef;->a()Laef;

    move-result-object v3

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v9

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v10

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lada;-><init>(Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Laot;Laef;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lcom/snapchat/android/util/debug/ReleaseManager;Lakr;Lacr;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)V
    .locals 12

    .prologue
    .line 79
    iget-object v0, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lada;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-nez v0, :cond_5

    .line 86
    :cond_1
    const-string v0, "splash"

    .line 87
    iget-object v1, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v3, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lada;->g:Laef;

    iget-object v5, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laef;->d(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lada;->n:Lacr;

    iget-object v5, v5, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v5

    new-instance v6, Lhr;

    invoke-direct {v6}, Lhr;-><init>()V

    iput-object v1, v6, Lhr;->publisherId:Ljava/lang/String;

    iput-object v2, v6, Lhr;->editionId:Ljava/lang/String;

    iput-object v3, v6, Lhr;->splashId:Ljava/lang/String;

    iput-object v5, v6, Lhr;->source:Llv;

    if-gez v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v6, Lhr;->snapIndexCount:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v6, Lhr;->snapIndexPos:Ljava/lang/Long;

    :cond_2
    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 123
    :goto_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    invoke-static {}, Lakr;->aO()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    if-eqz v1, :cond_3

    .line 125
    new-instance v1, Lbcg;

    iget-object v2, p0, Lada;->h:Landroid/content/res/Resources;

    const v3, 0x7f0c010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-object v4, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    iget-object v5, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 130
    iget-object v2, p0, Lada;->f:Lcom/squareup/otto/Bus;

    invoke-virtual {v2, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 133
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto/16 :goto_0

    .line 87
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 93
    :cond_5
    iget-object v0, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    iget-object v1, p0, Lada;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-ne v0, v1, :cond_b

    .line 94
    const-string v0, "longform"

    .line 95
    iget-object v1, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v3, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v5, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lada;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-object v7, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lada;->g:Laef;

    iget-object v9, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laef;->d(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v10, p0, Lada;->g:Laef;

    iget-object v11, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laef;->e(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lada;->n:Lacr;

    iget-object v11, v11, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v11

    if-nez v5, :cond_8

    new-instance v4, Lhf;

    invoke-direct {v4}, Lhf;-><init>()V

    iput-object v1, v4, Lhf;->publisherId:Ljava/lang/String;

    iput-object v2, v4, Lhf;->editionId:Ljava/lang/String;

    iput-object v3, v4, Lhf;->dsnapId:Ljava/lang/String;

    invoke-static {v6}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v1

    iput-object v1, v4, Lhf;->longformType:Lih;

    iput-object v11, v4, Lhf;->source:Llv;

    if-gez v8, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    add-int/lit8 v1, v7, 0x1

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lhf;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lhf;->snapIndexPos:Ljava/lang/Long;

    :cond_6
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    new-instance v3, Lgt;

    invoke-direct {v3}, Lgt;-><init>()V

    iput-object v1, v3, Lgt;->publisherId:Ljava/lang/String;

    iput-object v2, v3, Lgt;->editionId:Ljava/lang/String;

    iput-object v4, v3, Lgt;->adsnapId:Ljava/lang/String;

    invoke-static {v6}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v1

    iput-object v1, v3, Lgt;->longformType:Lih;

    iput-object v11, v3, Lgt;->source:Llv;

    if-gez v8, :cond_a

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_9

    add-int/lit8 v1, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lgt;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgt;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgt;->adIndexPos:Ljava/lang/Long;

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgt;->adIndexCount:Ljava/lang/Long;

    :cond_9
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 108
    :cond_b
    const-string v0, "top snap"

    .line 109
    iget-object v1, p0, Lada;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v3, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v5, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lada;->g:Laef;

    iget-object v8, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laef;->d(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v9, p0, Lada;->g:Laef;

    iget-object v10, p0, Lada;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Laef;->e(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lada;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-object v11, p0, Lada;->n:Lacr;

    iget-object v11, v11, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v11

    if-nez v5, :cond_e

    new-instance v4, Lhk;

    invoke-direct {v4}, Lhk;-><init>()V

    iput-object v1, v4, Lhk;->publisherId:Ljava/lang/String;

    iput-object v2, v4, Lhk;->editionId:Ljava/lang/String;

    iput-object v3, v4, Lhk;->dsnapId:Ljava/lang/String;

    invoke-static {v10}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v1

    iput-object v1, v4, Lhk;->mediaType:Lih;

    iput-object v11, v4, Lhk;->source:Llv;

    if-gez v7, :cond_d

    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_c

    add-int/lit8 v1, v6, 0x1

    int-to-long v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lhk;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lhk;->snapIndexPos:Ljava/lang/Long;

    :cond_c
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    new-instance v3, Lgx;

    invoke-direct {v3}, Lgx;-><init>()V

    iput-object v1, v3, Lgx;->publisherId:Ljava/lang/String;

    iput-object v2, v3, Lgx;->editionId:Ljava/lang/String;

    iput-object v4, v3, Lgx;->adsnapId:Ljava/lang/String;

    invoke-static {v10}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v1

    iput-object v1, v3, Lgx;->mediaType:Lih;

    iput-object v11, v3, Lgx;->source:Llv;

    if-gez v7, :cond_10

    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_f

    add-int/lit8 v1, v6, 0x1

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lgx;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgx;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgx;->adIndexPos:Ljava/lang/Long;

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgx;->adIndexCount:Ljava/lang/Long;

    :cond_f
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_2

    :cond_10
    const/4 v1, 0x0

    goto :goto_6
.end method
