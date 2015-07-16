.class final Lcom/snapchat/android/discover/ui/DSnapView$4;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laey;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field final synthetic d:J

.field final synthetic e:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Laey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 1

    .prologue
    .line 986
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->e:Lcom/snapchat/android/discover/ui/DSnapView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Laey;

    iput-boolean p3, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->b:Z

    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-wide p5, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->d:J

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 15

    .prologue
    .line 989
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->e:Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Laey;

    iget-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->b:Z

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->d:J

    iget-object v5, v2, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v8, v2, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v5, :cond_0

    if-nez v8, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v0, v2, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v9, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v9}, Laef;->d(Ljava/lang/String;)I

    move-result v9

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v10, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v10}, Laef;->e(Ljava/lang/String;)I

    move-result v10

    const/4 v0, 0x0

    if-nez v4, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v11

    iget-object v12, v2, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v12, v12, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v12}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v12

    new-instance v13, Laeb;

    invoke-direct {v13}, Laeb;-><init>()V

    iget-object v14, v8, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iput-object v14, v13, Laeb;->a:Ljava/lang/String;

    iget-object v14, v8, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    iput-object v14, v13, Laeb;->b:Ljava/lang/String;

    iget-object v14, v8, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    iput-object v14, v13, Laeb;->c:Ljava/lang/String;

    iget-object v14, v5, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iput-object v14, v13, Laeb;->e:Ljava/lang/String;

    iget-object v14, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iput-object v14, v13, Laeb;->d:Ljava/lang/String;

    invoke-static {}, Lazb;->a()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Laeb;->l:Ljava/lang/String;

    invoke-static {}, Lazb;->b()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Laeb;->m:Ljava/lang/String;

    sget-object v14, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v14, :cond_3

    const/4 v14, 0x1

    iput-boolean v14, v13, Laeb;->n:Z

    :cond_3
    iget v14, v8, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iput v14, v13, Laeb;->o:I

    iget v8, v8, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    iput v8, v13, Laeb;->p:I

    iget-object v8, v5, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v13, Laeb;->u:I

    iput v9, v13, Laeb;->v:I

    iget-object v8, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v13, Laeb;->w:I

    iget-object v8, v5, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iput-object v8, v13, Laeb;->x:Ljava/lang/String;

    iget v8, v5, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iput v8, v13, Laeb;->y:I

    iput v10, v13, Laeb;->z:I

    iput-object v11, v13, Laeb;->A:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-object v0, v13, Laeb;->B:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-boolean v4, v13, Laeb;->C:Z

    iput-wide v6, v13, Laeb;->D:J

    iput-object v12, v13, Laeb;->E:Llv;

    sget-object v8, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v1, v8, :cond_5

    iget-object v1, v2, Lcom/snapchat/android/discover/ui/DSnapView;->e:Laff;

    invoke-virtual {v1}, Laff;->b()V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->getRootView()Landroid/view/View;

    move-result-object v1

    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v13, v8}, Laey;->a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, v2, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v11, Lbej;

    sget-object v12, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->DISCOVER:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v11, v1, v12}, Lbej;-><init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v8, v11}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v8, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v11, v5, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v12, v5, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, v5, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    invoke-virtual {v3}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v3

    iget-object v2, v2, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v2, v2, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v2

    if-nez v13, :cond_a

    if-eqz v4, :cond_7

    new-instance v4, Lhl;

    invoke-direct {v4}, Lhl;-><init>()V

    iput-object v1, v4, Lhl;->publisherId:Ljava/lang/String;

    iput-object v11, v4, Lhl;->dsnapId:Ljava/lang/String;

    iput-object v8, v4, Lhl;->editionId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v0

    iput-object v0, v4, Lhl;->mediaType:Lih;

    invoke-static {v6, v7}, Lawd;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v4, Lhl;->timeViewed:Ljava/lang/Double;

    iput-object v2, v4, Lhl;->source:Llv;

    if-gez v9, :cond_6

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    add-int/lit8 v0, v12, 0x1

    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lhl;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lhl;->snapIndexPos:Ljava/lang/Long;

    :cond_4
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, v2, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v4, Lhg;

    invoke-direct {v4}, Lhg;-><init>()V

    iput-object v1, v4, Lhg;->publisherId:Ljava/lang/String;

    iput-object v11, v4, Lhg;->dsnapId:Ljava/lang/String;

    iput-object v8, v4, Lhg;->editionId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v1

    iput-object v1, v4, Lhg;->mediaType:Lih;

    invoke-static {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v0

    iput-object v0, v4, Lhg;->longformType:Lih;

    invoke-static {v6, v7}, Lawd;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v4, Lhg;->timeViewed:Ljava/lang/Double;

    iput-object v2, v4, Lhg;->source:Llv;

    if-gez v9, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    add-int/lit8 v0, v12, 0x1

    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lhg;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lhg;->snapIndexPos:Ljava/lang/Long;

    :cond_8
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_d

    new-instance v4, Lgy;

    invoke-direct {v4}, Lgy;-><init>()V

    iput-object v1, v4, Lgy;->publisherId:Ljava/lang/String;

    iput-object v14, v4, Lgy;->adsnapId:Ljava/lang/String;

    iput-object v8, v4, Lgy;->editionId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v0

    iput-object v0, v4, Lgy;->mediaType:Lih;

    invoke-static {v6, v7}, Lawd;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v4, Lgy;->timeViewed:Ljava/lang/Double;

    iput-object v2, v4, Lgy;->source:Llv;

    if-gez v9, :cond_c

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_b

    add-int/lit8 v0, v12, 0x1

    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lgy;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgy;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgy;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgy;->adIndexCount:Ljava/lang/Long;

    :cond_b
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    new-instance v4, Lgu;

    invoke-direct {v4}, Lgu;-><init>()V

    iput-object v1, v4, Lgu;->publisherId:Ljava/lang/String;

    iput-object v14, v4, Lgu;->adsnapId:Ljava/lang/String;

    iput-object v8, v4, Lgu;->editionId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;Z)Lih;

    move-result-object v1

    iput-object v1, v4, Lgu;->mediaType:Lih;

    invoke-static {v6, v7}, Lawd;->a(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v4, Lgu;->timeViewed:Ljava/lang/Double;

    invoke-static {v0}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v0

    iput-object v0, v4, Lgu;->longformType:Lih;

    iput-object v2, v4, Lgu;->source:Llv;

    if-gez v9, :cond_f

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_e

    add-int/lit8 v0, v12, 0x1

    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lgu;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgu;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgu;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgu;->adIndexCount:Ljava/lang/Long;

    :cond_e
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method
