.class final Lcom/snapchat/android/ui/SnapView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapView;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Larj;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    const-string v2, "SnapView"

    const-string v3, "SNAP-VIEW: session started for %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v2}, Lcom/snapchat/android/ui/SnapView;->b(Lcom/snapchat/android/ui/SnapView;)Lank;

    move-result-object v3

    invoke-interface {p1}, Larj;->c()Lcom/snapchat/android/rendering/SnapMediaRenderer;

    move-result-object v4

    move v2, v1

    :goto_0
    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    iget-object v5, v3, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    if-eq v5, v4, :cond_0

    iget-object v5, v3, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    :cond_0
    iget-object v5, v3, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    if-eq v5, v4, :cond_1

    iget-object v5, v3, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 557
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v2, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Z)Z

    .line 560
    invoke-interface {p1}, Larj;->b()Laio;

    move-result-object v2

    .line 561
    invoke-interface {v2}, Laio;->d()Laje;

    move-result-object v3

    .line 562
    if-eqz v3, :cond_6

    .line 565
    sget-boolean v4, Lasu;->IS_GALAXY_S6:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Laje;->ai()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    :goto_1
    if-eqz v0, :cond_5

    .line 567
    const-string v0, "SnapView"

    const-string v2, "SNAP-VIEW: Skipping preload on S6"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 565
    goto :goto_1

    .line 570
    :cond_5
    const-string v0, "SnapView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SNAP-VIEW: Preloading next snap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Larj;->e()Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/snapchat/android/ui/SnapView;->b(Laje;Laio;Z)Larj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Larj;)Larj;

    .line 572
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/ui/SnapView;)Lark;

    move-result-object v1

    invoke-interface {v0, v1}, Larj;->a(Lark;)V

    .line 579
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyu;

    .line 580
    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v2

    invoke-interface {v0, v2}, Lyu;->a(Laje;)V

    goto :goto_3

    .line 574
    :cond_6
    const-string v0, "SnapView"

    const-string v2, "SNAP-VIEW: No snap to pre-load"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 587
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: primary session stopped for %s, reason %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Z)Z

    .line 591
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Laje;)V

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 617
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyu;

    .line 619
    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v2

    invoke-interface {v0, v2, p2, v4}, Lyu;->a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V

    goto :goto_1

    .line 598
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_3

    .line 602
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->f(Lcom/snapchat/android/ui/SnapView;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v3, "ALPHA-ONLY: Snap skipped, media player error"

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/ui/SnapView;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    goto :goto_0

    .line 610
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-eq p2, v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/ui/SnapView;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    goto :goto_0

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 623
    const-string v0, "SnapView"

    const-string v1, "SNAP-VIEW: next session stopped for %s, reason %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_5

    .line 627
    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v0

    .line 628
    instance-of v1, v0, Lajr;

    if-eqz v1, :cond_7

    .line 632
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapView;->g(Lcom/snapchat/android/ui/SnapView;)Lzd;

    move-result-object v1

    check-cast v0, Lajr;

    invoke-virtual {v1, v0}, Lzd;->a(Lajr;)Z

    .line 640
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Larj;

    move-result-object v0

    invoke-interface {v0}, Larj;->h()V

    .line 641
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Larj;)Larj;

    .line 643
    :cond_6
    return-void

    .line 634
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$3;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Larj;->a()Laje;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Laje;)V

    goto :goto_2
.end method
