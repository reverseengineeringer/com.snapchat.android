.class final Larg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larg;


# direct methods
.method constructor <init>(Larg;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Larg$1;->a:Larg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    .line 394
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v14, v0, Larg;->k:Ljava/lang/Object;

    monitor-enter v14

    .line 395
    :try_start_0
    const-string v0, "MediaSnapViewSession"

    const-string v1, "SNAP-VIEW: renderer started for %s (active=%b)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Larg$1;->a:Larg;

    iget-object v4, v4, Larg;->c:Laje;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Larg$1;->a:Larg;

    invoke-virtual {v4}, Larg;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->g:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->c()V

    .line 402
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laje;->c(Z)V

    .line 403
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->j:Laun;

    invoke-virtual {v0}, Laun;->a()V

    .line 404
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->l:Lark;

    iget-object v1, p0, Larg$1;->a:Larg;

    invoke-interface {v0, v1}, Lark;->a(Larj;)V

    .line 406
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    instance-of v0, v0, Lajr;

    if-eqz v0, :cond_5

    .line 407
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    check-cast v0, Lajr;

    .line 408
    invoke-virtual {v0}, Lajr;->F()D

    move-result-wide v4

    .line 409
    iget-object v7, v0, Lajr;->mUsername:Ljava/lang/String;

    .line 410
    invoke-virtual {v0}, Lajr;->as()Ljava/lang/String;

    move-result-object v8

    .line 411
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->c:Laje;

    invoke-virtual {v1}, Laje;->d()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v0}, Laop;->c(Lajr;)Llr;

    move-result-object v9

    .line 413
    iget-object v6, v0, Lajr;->mStoryId:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->c:Laje;

    invoke-virtual {v1}, Laje;->Y()Z

    move-result v3

    .line 415
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->c:Laje;

    invoke-virtual {v1}, Laje;->ak()I

    move-result v13

    .line 416
    iget-object v12, v0, Lajr;->mStoryFilterId:Ljava/lang/String;

    .line 418
    iget-object v1, v0, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v10

    invoke-static {v1, v10}, Latm;->a(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    .line 421
    :goto_0
    invoke-virtual {v0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v11

    .line 423
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v1, v0, Larg;->h:Lany;

    invoke-virtual/range {v1 .. v13}, Lany;->a(Ljava/lang/String;ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 430
    :goto_1
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v2, v0, Larg;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    invoke-virtual {v0}, Laje;->ai()Z

    move-result v0

    iget-object v1, p0, Larg$1;->a:Larg;

    invoke-virtual {v1}, Larg;->d()Z

    move-result v3

    if-eqz v0, :cond_6

    const-string v0, "video"

    move-object v1, v0

    :goto_2
    iget-object v0, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 431
    :cond_0
    :goto_3
    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->r:Lnn;

    iget-object v1, v0, Lnn;->mSnapViews:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, v0, Lnn;->mSnapEngagement:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 435
    :cond_1
    invoke-static {}, Laje;->r()Z

    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->k()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    .line 436
    :goto_4
    if-eqz v1, :cond_a

    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    invoke-virtual {v0}, Laje;->e()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 438
    :goto_5
    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->i:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v2, p0, Larg$1;->a:Larg;

    iget-object v2, v2, Larg;->c:Laje;

    iget-object v3, p0, Larg$1;->a:Larg;

    iget v3, v3, Larg;->o:I

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Laje;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->c:Laje;

    iget-object v2, p0, Larg$1;->a:Larg;

    iget-object v2, v2, Larg;->b:Lajv;

    invoke-static {v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laje;Lajv;)V

    .line 446
    :cond_2
    if-eqz v0, :cond_b

    .line 447
    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v0, p0, Larg$1;->a:Larg;

    iget v0, v0, Larg;->p:I

    int-to-float v0, v0

    iget-object v2, p0, Larg$1;->a:Larg;

    iget v2, v2, Larg;->q:I

    int-to-float v2, v2

    iget-object v3, p0, Larg$1;->a:Larg;

    iget v3, v3, Larg;->o:I

    iget-object v4, v1, Larg;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Larg;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v2

    div-float v0, v4, v0

    sub-float v0, v5, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v4, v1, Larg;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, v1, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, v1, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Larg;->c:Laje;

    invoke-virtual {v0}, Laje;->G()D

    move-result-wide v4

    double-to-int v0, v4

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v1}, Larg;->d()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/snapchat/android/ui/SnapTimerView;->setIsStory(Z)V

    iget-object v2, v1, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    int-to-long v4, v0

    int-to-long v6, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/snapchat/android/ui/SnapTimerView;->a(JJ)V

    iget-object v2, v1, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Larg;->a(J)V

    .line 453
    :cond_3
    :goto_6
    monitor-exit v14

    return-void

    .line 419
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 426
    :cond_5
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->h:Lany;

    iget-object v1, p0, Larg$1;->a:Larg;

    iget-object v1, v1, Larg;->c:Laje;

    invoke-virtual {v1}, Laje;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Larg$1;->a:Larg;

    iget-object v2, v2, Larg;->c:Laje;

    invoke-virtual {v2}, Laje;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lany;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 430
    :cond_6
    :try_start_1
    const-string v0, "image"

    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    iget-object v0, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewNextSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_8

    const-string v0, "story"

    :goto_7
    iget-object v3, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewNextSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "type"

    invoke-virtual {v3, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v3, "context"

    invoke-virtual {v1, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewNextSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto/16 :goto_3

    :cond_8
    const-string v0, "feed"

    goto :goto_7

    .line 435
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    .line 436
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 449
    :cond_b
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->e:Lcom/snapchat/android/ui/SnapTimerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public final a(III)V
    .locals 6

    .prologue
    .line 362
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v1, v0, Larg;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    const-string v0, "MediaSnapViewSession"

    const-string v2, "SNAP-VIEW: renderer prepared for %s (active=%b). duration:%dms, width:%d, height:%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Larg$1;->a:Larg;

    iget-object v5, v5, Larg;->c:Laje;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Larg$1;->a:Larg;

    invoke-virtual {v5}, Larg;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->c:Laje;

    invoke-virtual {v0}, Laje;->F()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 374
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 375
    iget-object v2, p0, Larg$1;->a:Larg;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Larg;->o:I

    .line 376
    const-string v2, "MediaSnapViewSession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SNAP-VIEW: Snap canonical cap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms, media length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms, picked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Larg$1;->a:Larg;

    iget v3, v3, Larg;->o:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Larg$1;->a:Larg;

    iput p2, v0, Larg;->p:I

    .line 380
    iget-object v0, p0, Larg$1;->a:Larg;

    iput p3, v0, Larg;->q:I

    .line 381
    iget-object v0, p0, Larg$1;->a:Larg;

    const/4 v2, 0x1

    iput-boolean v2, v0, Larg;->n:Z

    .line 382
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-boolean v0, v0, Larg;->m:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->g()V

    .line 386
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V
    .locals 6

    .prologue
    .line 461
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v1, v0, Larg;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    const-string v0, "MediaSnapViewSession"

    const-string v2, "SNAP-VIEW: renderer error for %s (active=%b), errorCode:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Larg$1;->a:Larg;

    iget-object v5, v5, Larg;->c:Laje;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Larg$1;->a:Larg;

    invoke-virtual {v5}, Larg;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    if-ne p1, v0, :cond_1

    .line 468
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v0, v0, Larg;->f:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v4, 0x7f0c0051

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 470
    const-string v0, "MediaSnapViewSession"

    const-string v2, "SNAP-VIEW: MARKING snap %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Larg$1;->a:Larg;

    iget-object v5, v5, Larg;->c:Laje;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Larg$1;->a:Larg;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Larg;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 490
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 473
    :cond_1
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    if-ne p1, v0, :cond_2

    .line 477
    iget-object v0, p0, Larg$1;->a:Larg;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Larg;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 479
    :cond_2
    :try_start_1
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 483
    iget-object v0, p0, Larg$1;->a:Larg;

    invoke-virtual {v0}, Larg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Larg$1;->a:Larg;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Larg;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 497
    iget-object v0, p0, Larg$1;->a:Larg;

    iget-object v1, v0, Larg;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    const-string v0, "MediaSnapViewSession"

    const-string v2, "SNAP-VIEW: renderer complete for %s (active=%b)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Larg$1;->a:Larg;

    iget-object v5, v5, Larg;->c:Laje;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Larg$1;->a:Larg;

    invoke-virtual {v5}, Larg;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Larg$1;->a:Larg;

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0, v2}, Larg;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 502
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
