.class final Lcom/snapchat/android/ui/SnapView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lasj;


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
    .line 515
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasi;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v3

    aput-object v3, v2, v1

    .line 521
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v2}, Lcom/snapchat/android/ui/SnapView;->b(Lcom/snapchat/android/ui/SnapView;)Laoh;

    move-result-object v3

    invoke-interface {p1}, Lasi;->c()Lcom/snapchat/android/rendering/SnapMediaRenderer;

    move-result-object v4

    move v2, v1

    :goto_0
    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    iget-object v5, v3, Laoh;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    if-eq v5, v4, :cond_0

    iget-object v5, v3, Laoh;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    :cond_0
    iget-object v5, v3, Laoh;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    if-eq v5, v4, :cond_1

    iget-object v5, v3, Laoh;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v2, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Z)Z

    .line 526
    invoke-interface {p1}, Lasi;->b()Lajk;

    move-result-object v2

    .line 527
    invoke-interface {v2}, Lajk;->d()Laka;

    move-result-object v3

    .line 528
    if-eqz v3, :cond_6

    .line 531
    sget-boolean v4, Latt;->IS_GALAXY_S6:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Laka;->ag()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    :goto_1
    if-eqz v0, :cond_5

    .line 548
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 531
    goto :goto_1

    .line 536
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SNAP-VIEW: Preloading next snap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Lasi;->e()Z

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/snapchat/android/ui/SnapView;->b(Laka;Lajk;Z)Lasi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Lasi;)Lasi;

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/ui/SnapView;)Lasj;

    move-result-object v1

    invoke-interface {v0, v1}, Lasi;->a(Lasj;)V

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzq;

    .line 546
    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v2

    invoke-interface {v0, v2}, Lzq;->d(Laka;)V

    goto :goto_2
.end method

.method public final a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 553
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p2, v0, v2

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Z)Z

    .line 557
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Laka;)V

    .line 562
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 583
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

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

    check-cast v0, Lzq;

    .line 585
    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v2

    invoke-interface {v0, v2, p2, v4}, Lzq;->a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V

    goto :goto_1

    .line 564
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_3

    .line 568
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->f(Lcom/snapchat/android/ui/SnapView;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v3, "ALPHA-ONLY: Snap skipped, media player error"

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/ui/SnapView;->a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    goto :goto_0

    .line 576
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-eq p2, v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/ui/SnapView;->a(Lasi;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    goto :goto_0

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 589
    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p2, v0, v2

    .line 592
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_5

    .line 593
    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v0

    .line 594
    instance-of v1, v0, Lakl;

    if-eqz v1, :cond_7

    .line 598
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapView;->g(Lcom/snapchat/android/ui/SnapView;)Lzz;

    move-result-object v1

    check-cast v0, Lakl;

    invoke-virtual {v1, v0}, Lzz;->a(Lakl;)Z

    .line 606
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Lasi;

    move-result-object v0

    invoke-interface {v0}, Lasi;->h()V

    .line 607
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Lasi;)Lasi;

    .line 609
    :cond_6
    return-void

    .line 600
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$2;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-interface {p1}, Lasi;->a()Laka;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Laka;)V

    goto :goto_2
.end method
