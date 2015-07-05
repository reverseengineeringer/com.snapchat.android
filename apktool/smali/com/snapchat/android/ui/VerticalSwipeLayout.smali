.class public Lcom/snapchat/android/ui/VerticalSwipeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VerticalSwipeLayout$a;
    }
.end annotation


# instance fields
.field a:I

.field public b:Z

.field private c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/widget/Scroller;

.field private i:F

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/view/VelocityTracker;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    .line 82
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lmd$a;->VerticalSwipeLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a()V
    .locals 1
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 495
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 502
    :cond_0
    return-void
.end method

.method private a(F)Z
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 268
    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FZZ)Z
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    if-nez p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)V
    .locals 4
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 373
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 374
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 375
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 379
    :cond_0
    :goto_0
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-ne v0, v1, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getFlingType()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 385
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 386
    return-void

    .line 376
    :cond_2
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 377
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getFlingType()I
    .locals 2

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getYVelocity()I

    move-result v0

    .line 453
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-lez v1, :cond_0

    .line 454
    const/4 v0, -0x1

    .line 458
    :goto_0
    return v0

    .line 455
    :cond_0
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getYVelocity()I
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ID)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 412
    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-ltz v0, :cond_2

    move v0, v6

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 414
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eq p1, v0, :cond_3

    move v0, v6

    .line 417
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 419
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    const/4 v2, 0x2

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v2, v3, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    .line 424
    :cond_1
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 426
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    mul-int/2addr v0, p1

    .line 427
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    sub-int v4, v0, v2

    .line 428
    const-wide v2, 0x406f400000000000L    # 250.0

    mul-double/2addr v2, p2

    double-to-int v5, v2

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 430
    iput-boolean v6, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 431
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->invalidate()V

    .line 432
    return-void

    :cond_2
    move v0, v1

    .line 412
    goto :goto_0

    :cond_3
    move v0, v1

    .line 414
    goto :goto_1
.end method

.method public a(Z)V
    .locals 4
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    mul-int/2addr v0, v1

    .line 176
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 179
    :cond_0
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 3

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0

    .line 485
    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 487
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_3
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->c(I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->scrollTo(II)V

    .line 475
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    .line 95
    iput v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 97
    iput-boolean v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:I

    .line 103
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    .line 105
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    .line 106
    return-void
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 186
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 185
    goto :goto_0
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 208
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 255
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v2

    .line 207
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 216
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 221
    :cond_4
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    goto :goto_1

    .line 224
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 228
    invoke-static {v4, v8}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    .line 229
    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v6

    .line 230
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v0, v3, v0

    iget v7, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    if-nez v5, :cond_6

    :cond_5
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v0, v3

    iget v7, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    if-eqz v6, :cond_7

    :cond_6
    move v0, v1

    :goto_2
    if-eqz v0, :cond_8

    .line 231
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 232
    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_7
    move v0, v2

    .line 230
    goto :goto_2

    .line 236
    :cond_8
    invoke-direct {p0, v3, v5, v6}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(FZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 239
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 240
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v1, v2, v8}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    .line 245
    :cond_9
    iput-boolean v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    move v2, v1

    goto :goto_1

    .line 249
    :pswitch_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    if-eqz v0, :cond_a

    move v2, v1

    .line 250
    goto :goto_1

    .line 252
    :cond_a
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(F)V

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 149
    :goto_0
    if-ge v1, v3, :cond_1

    .line 150
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 152
    sub-int v5, p4, p2

    iget v6, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 153
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    add-int/2addr v0, v4

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Z)V

    .line 168
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 124
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    .line 128
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    move v1, v0

    .line 130
    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->measureChild(Landroid/view/View;II)V

    .line 135
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    add-int/2addr v0, v3

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lq;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 294
    iget-boolean v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    move v0, v1

    .line 301
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 306
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 365
    goto :goto_0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 311
    :cond_3
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    move v0, v1

    .line 312
    goto :goto_0

    .line 316
    :pswitch_1
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 318
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v2, v3, v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eqz v2, :cond_0

    :cond_4
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v2, v3, v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    .line 330
    :cond_5
    iget-boolean v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    if-eqz v2, :cond_6

    .line 331
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v0, v3

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollY(I)V

    move v0, v1

    .line 332
    goto :goto_0

    .line 334
    :cond_6
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_0

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    invoke-direct {p0, v3, v4, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(FZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 340
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 341
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    if-eqz v0, :cond_7

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v1, v2, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    .line 345
    :cond_7
    iput-boolean v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    move v0, v1

    .line 346
    goto/16 :goto_0

    .line 354
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(F)V

    .line 355
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    .line 356
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    goto/16 :goto_0

    .line 361
    :pswitch_3
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    goto/16 :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 506
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    .line 191
    return-void
.end method
