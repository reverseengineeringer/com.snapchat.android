.class public final Laca;
.super Lanv;
.source "SourceFile"


# instance fields
.field private final e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field private final f:Lcom/squareup/otto/Bus;

.field private final g:Ladf;

.field private final h:Landroid/content/res/Resources;

.field private final i:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final j:Lajx;

.field private final k:Lcom/snapchat/android/discover/model/ChannelPage;

.field private final l:Lcom/snapchat/android/discover/model/DSnapPage;

.field private final m:Lcom/snapchat/android/discover/model/DSnapPanel;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Lanw;Ladf;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lcom/snapchat/android/util/debug/ReleaseManager;Lajx;)V
    .locals 8

    .prologue
    .line 56
    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lanv;-><init>(Ljava/lang/String;JJ)V

    .line 57
    iput-object p3, p0, Laca;->g:Ladf;

    .line 58
    iput-object p1, p0, Laca;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 59
    iput-object p4, p0, Laca;->f:Lcom/squareup/otto/Bus;

    .line 60
    iput-object p5, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 61
    iput-object p7, p0, Laca;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    .line 62
    iput-object p6, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 63
    invoke-virtual {p2, p0}, Lanw;->a(Lanv;)V

    .line 64
    move-object/from16 v0, p8

    iput-object v0, p0, Laca;->h:Landroid/content/res/Resources;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Laca;->i:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 66
    move-object/from16 v0, p10

    iput-object v0, p0, Laca;->j:Lajx;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V
    .locals 11

    .prologue
    .line 45
    new-instance v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v2

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v3

    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v9

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v10

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v10}, Laca;-><init>(Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Lanw;Ladf;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;Lcom/snapchat/android/util/debug/ReleaseManager;Lajx;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)V
    .locals 12

    .prologue
    .line 76
    iget-object v0, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "DiscoverScreenshotDetectionSession"

    const-string v1, "Could not report screenshot, context is not valid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laca;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-nez v0, :cond_5

    .line 83
    :cond_1
    const-string v0, "splash"

    .line 84
    iget-object v1, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v3, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laca;->g:Ladf;

    iget-object v5, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ladf;->d(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lhi;

    invoke-direct {v5}, Lhi;-><init>()V

    iput-object v1, v5, Lhi;->publisherId:Ljava/lang/String;

    iput-object v2, v5, Lhi;->editionId:Ljava/lang/String;

    iput-object v3, v5, Lhi;->splashId:Ljava/lang/String;

    if-gez v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lhi;->snapIndexCount:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lhi;->snapIndexPos:Ljava/lang/Long;

    :cond_2
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    move-object v7, v0

    .line 117
    :goto_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    invoke-static {}, Lajx;->aP()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Lbbg;

    const/4 v1, 0x0

    iget-object v2, p0, Laca;->h:Landroid/content/res/Resources;

    const v3, 0x7f0c010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-object v4, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    const/4 v5, 0x1

    iget-object v6, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    .line 124
    iget-object v1, p0, Laca;->f:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 127
    :cond_3
    const-string v0, "DiscoverScreenshotDetectionSession"

    const-string v1, "Detected %s screenshot!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_5
    iget-object v0, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    iget-object v1, p0, Laca;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-ne v0, v1, :cond_b

    .line 90
    const-string v0, "longform"

    .line 91
    iget-object v1, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v3, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v5, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Laca;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-object v7, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Laca;->g:Ladf;

    iget-object v9, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ladf;->d(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v10, p0, Laca;->g:Ladf;

    iget-object v11, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ladf;->e(Ljava/lang/String;)I

    move-result v10

    if-nez v5, :cond_8

    new-instance v4, Lgw;

    invoke-direct {v4}, Lgw;-><init>()V

    iput-object v1, v4, Lgw;->publisherId:Ljava/lang/String;

    iput-object v2, v4, Lgw;->editionId:Ljava/lang/String;

    iput-object v3, v4, Lgw;->dsnapId:Ljava/lang/String;

    invoke-static {v6}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v1

    iput-object v1, v4, Lgw;->longformType:Lhy;

    if-gez v8, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    add-int/lit8 v1, v7, 0x1

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lgw;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lgw;->snapIndexPos:Ljava/lang/Long;

    :cond_6
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    move-object v7, v0

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    new-instance v3, Lgk;

    invoke-direct {v3}, Lgk;-><init>()V

    iput-object v1, v3, Lgk;->publisherId:Ljava/lang/String;

    iput-object v2, v3, Lgk;->editionId:Ljava/lang/String;

    iput-object v4, v3, Lgk;->adsnapId:Ljava/lang/String;

    invoke-static {v6}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v1

    iput-object v1, v3, Lgk;->longformType:Lhy;

    if-gez v8, :cond_a

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_9

    add-int/lit8 v1, v7, 0x1

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lgk;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgk;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgk;->adIndexPos:Ljava/lang/Long;

    int-to-long v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgk;->adIndexCount:Ljava/lang/Long;

    :cond_9
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    move-object v7, v0

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 103
    :cond_b
    const-string v0, "top snap"

    .line 104
    iget-object v1, p0, Laca;->k:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v2, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v3, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v4, v4, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v5, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Laca;->g:Ladf;

    iget-object v8, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ladf;->d(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v9, p0, Laca;->g:Ladf;

    iget-object v10, p0, Laca;->l:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ladf;->e(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Laca;->m:Lcom/snapchat/android/discover/model/DSnapPanel;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-nez v5, :cond_e

    new-instance v4, Lhb;

    invoke-direct {v4}, Lhb;-><init>()V

    iput-object v1, v4, Lhb;->publisherId:Ljava/lang/String;

    iput-object v2, v4, Lhb;->editionId:Ljava/lang/String;

    iput-object v3, v4, Lhb;->dsnapId:Ljava/lang/String;

    invoke-static {v10}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v1

    iput-object v1, v4, Lhb;->mediaType:Lhy;

    if-gez v7, :cond_d

    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_c

    add-int/lit8 v1, v6, 0x1

    int-to-long v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lhb;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lhb;->snapIndexPos:Ljava/lang/Long;

    :cond_c
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    move-object v7, v0

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    new-instance v3, Lgo;

    invoke-direct {v3}, Lgo;-><init>()V

    iput-object v1, v3, Lgo;->publisherId:Ljava/lang/String;

    iput-object v2, v3, Lgo;->editionId:Ljava/lang/String;

    iput-object v4, v3, Lgo;->adsnapId:Ljava/lang/String;

    invoke-static {v10}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v1

    iput-object v1, v3, Lgo;->mediaType:Lhy;

    if-gez v7, :cond_10

    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_f

    add-int/lit8 v1, v6, 0x1

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lgo;->snapIndexCount:Ljava/lang/Long;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgo;->snapIndexPos:Ljava/lang/Long;

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgo;->adIndexPos:Ljava/lang/Long;

    int-to-long v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lgo;->adIndexCount:Ljava/lang/Long;

    :cond_f
    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    move-object v7, v0

    goto/16 :goto_2

    :cond_10
    const/4 v1, 0x0

    goto :goto_6
.end method
