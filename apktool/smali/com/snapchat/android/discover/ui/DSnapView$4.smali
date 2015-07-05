.class final Lcom/snapchat/android/discover/ui/DSnapView$4;
.super Lavj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lady;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field final synthetic d:J

.field final synthetic e:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Lady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 1

    .prologue
    .line 974
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->e:Lcom/snapchat/android/discover/ui/DSnapView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lady;

    iput-boolean p3, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->b:Z

    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-wide p5, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->d:J

    invoke-direct {p0}, Lavj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 14

    .prologue
    .line 977
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->e:Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lady;

    iget-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->b:Z

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->d:J

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v5, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ladf;->d(Ljava/lang/String;)I

    move-result v5

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v8, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v8, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ladf;->e(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x0

    if-nez v4, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v9, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v2, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v11

    new-instance v12, Ladb;

    invoke-direct {v12}, Ladb;-><init>()V

    iget-object v13, v10, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iput-object v13, v12, Ladb;->a:Ljava/lang/String;

    iget-object v13, v10, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    iput-object v13, v12, Ladb;->b:Ljava/lang/String;

    iget-object v13, v10, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iput-object v13, v12, Ladb;->c:Ljava/lang/String;

    iget-object v13, v9, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iput-object v13, v12, Ladb;->e:Ljava/lang/String;

    iget-object v13, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iput-object v13, v12, Ladb;->d:Ljava/lang/String;

    invoke-static {}, Layd;->a()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Ladb;->l:Ljava/lang/String;

    invoke-static {}, Layd;->b()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Ladb;->m:Ljava/lang/String;

    sget-object v13, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v13, :cond_1

    const/4 v13, 0x1

    iput-boolean v13, v12, Ladb;->n:Z

    :cond_1
    iget v13, v10, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iput v13, v12, Ladb;->o:I

    iget v10, v10, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    iput v10, v12, Ladb;->p:I

    iget-object v10, v9, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v12, Ladb;->u:I

    iput v5, v12, Ladb;->v:I

    iget-object v10, v9, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v12, Ladb;->w:I

    iget-object v10, v9, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iput-object v10, v12, Ladb;->x:Ljava/lang/String;

    iget v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iput v9, v12, Ladb;->y:I

    iput v8, v12, Ladb;->z:I

    iput-object v11, v12, Ladb;->A:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-object v0, v12, Ladb;->B:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-boolean v4, v12, Ladb;->C:Z

    iput-wide v6, v12, Ladb;->D:J

    sget-object v9, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v1, v9, :cond_4

    iget-object v1, v2, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laef;

    invoke-virtual {v1}, Laef;->b()V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->getRootView()Landroid/view/View;

    move-result-object v1

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v12, v9}, Lady;->a(Landroid/view/View;Ladb;Ljava/util/List;)Laim;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v9, v2, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v10, Lbdj;

    sget-object v11, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->DISCOVER:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v10, v1, v11}, Lbdj;-><init>(Laim;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v9, v10}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v9, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v9, v9, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v10, v10, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v11, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v13, v13, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    invoke-virtual {v3}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v3

    if-nez v12, :cond_9

    if-eqz v4, :cond_6

    new-instance v2, Lhc;

    invoke-direct {v2}, Lhc;-><init>()V

    iput-object v1, v2, Lhc;->publisherId:Ljava/lang/String;

    iput-object v10, v2, Lhc;->dsnapId:Ljava/lang/String;

    iput-object v9, v2, Lhc;->editionId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v0

    iput-object v0, v2, Lhc;->mediaType:Lhy;

    invoke-static {v6, v7}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lhc;->timeViewed:Ljava/lang/Double;

    if-gez v5, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    add-int/lit8 v0, v11, 0x1

    int-to-long v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lhc;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lhc;->snapIndexPos:Ljava/lang/Long;

    :cond_2
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 978
    :cond_3
    :goto_2
    return-void

    .line 977
    :cond_4
    iget-object v1, v2, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    new-instance v2, Lgx;

    invoke-direct {v2}, Lgx;-><init>()V

    iput-object v1, v2, Lgx;->publisherId:Ljava/lang/String;

    iput-object v10, v2, Lgx;->dsnapId:Ljava/lang/String;

    iput-object v9, v2, Lgx;->editionId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v1

    iput-object v1, v2, Lgx;->mediaType:Lhy;

    invoke-static {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v2, Lgx;->longformType:Lhy;

    invoke-static {v6, v7}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lgx;->timeViewed:Ljava/lang/Double;

    if-gez v5, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    add-int/lit8 v0, v11, 0x1

    int-to-long v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lgx;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgx;->snapIndexPos:Ljava/lang/Long;

    :cond_7
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_c

    new-instance v4, Lgp;

    invoke-direct {v4}, Lgp;-><init>()V

    iput-object v1, v4, Lgp;->publisherId:Ljava/lang/String;

    iput-object v13, v4, Lgp;->adsnapId:Ljava/lang/String;

    iput-object v9, v4, Lgp;->editionId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v0

    iput-object v0, v4, Lgp;->mediaType:Lhy;

    invoke-static {v6, v7}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v4, Lgp;->timeViewed:Ljava/lang/Double;

    if-gez v5, :cond_b

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_a

    add-int/lit8 v0, v11, 0x1

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lgp;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgp;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgp;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgp;->adIndexCount:Ljava/lang/Long;

    :cond_a
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    new-instance v4, Lgl;

    invoke-direct {v4}, Lgl;-><init>()V

    iput-object v1, v4, Lgl;->publisherId:Ljava/lang/String;

    iput-object v13, v4, Lgl;->adsnapId:Ljava/lang/String;

    iput-object v9, v4, Lgl;->editionId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lhy;

    move-result-object v1

    iput-object v1, v4, Lgl;->mediaType:Lhy;

    invoke-static {v6, v7}, Lavf;->a(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v4, Lgl;->timeViewed:Ljava/lang/Double;

    invoke-static {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v4, Lgl;->longformType:Lhy;

    if-gez v5, :cond_e

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_d

    add-int/lit8 v0, v11, 0x1

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lgl;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgl;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgl;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgl;->adIndexCount:Ljava/lang/Long;

    :cond_d
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
