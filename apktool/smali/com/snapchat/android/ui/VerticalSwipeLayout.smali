.class public Lcom/snapchat/android/ui/VerticalSwipeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VerticalSwipeLayout$a;,
        Lcom/snapchat/android/ui/VerticalSwipeLayout$b;
    }
.end annotation


# instance fields
.field a:I

.field public b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/VerticalSwipeLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/widget/Scroller;

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/view/VelocityTracker;

.field private o:I

.field private final p:Landroid/graphics/Rect;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/snapchat/android/ui/VerticalSwipeLayout$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->p:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    .line 165
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d()V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lmv$a;->VerticalSwipeLayout:[I

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

.method private a(Landroid/view/View;I)I
    .locals 2
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;

    .line 111
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return p2

    .line 114
    :cond_0
    iget v1, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;->b:I

    .line 115
    if-eqz v1, :cond_1

    if-le v1, p2, :cond_2

    .line 118
    :cond_1
    :goto_1
    iget v0, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;->a:I

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_1
.end method

.method private a()V
    .locals 1
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 627
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 630
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    .line 634
    :cond_0
    return-void
.end method

.method private a(F)Z
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 354
    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v0, p1, v0

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 375
    :goto_0
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v3, p1

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    if-nez p3, :cond_3

    move v3, v1

    .line 376
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 374
    goto :goto_0

    :cond_3
    move v3, v2

    .line 375
    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 469
    aget v3, v0, v2

    aget v4, v0, v1

    aget v5, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {p2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 473
    check-cast v0, Landroid/view/ViewGroup;

    .line 474
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 475
    :goto_0
    if-ge v2, v3, :cond_1

    .line 476
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 477
    invoke-direct {p0, v4, p2, p3, p4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 484
    :goto_1
    return v0

    .line 475
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {p1, p4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 484
    goto :goto_1
.end method

.method private b(F)V
    .locals 5
    .annotation build Lcf;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 493
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 494
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v1, p1

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 495
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 499
    :cond_0
    :goto_0
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-ne v0, v1, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getYVelocity()I

    move-result v1

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v3, p1, v3

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->o:I

    if-le v1, v4, :cond_3

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-lez v4, :cond_3

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v0, v1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 505
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 506
    return-void

    .line 496
    :cond_2
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float v1, p1, v1

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 497
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 500
    :cond_3
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:F

    neg-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->o:I

    neg-int v3, v3

    if-ge v1, v3, :cond_4

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private getYVelocity()I
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 573
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

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

    .line 532
    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-ltz v0, :cond_1

    move v0, v6

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    .line 534
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-eq p1, v0, :cond_2

    move v0, v6

    .line 537
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 538
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 539
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 542
    const/4 v3, 0x2

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v3, v4, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 532
    goto :goto_0

    :cond_2
    move v0, v1

    .line 534
    goto :goto_1

    .line 544
    :cond_3
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 547
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    if-ne v0, v2, :cond_5

    .line 549
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    sub-int/2addr v0, v2

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    sub-int v4, v0, v2

    .line 557
    const-wide v2, 0x406f400000000000L    # 250.0

    mul-double/2addr v2, p2

    double-to-int v5, v2

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 559
    iput-boolean v6, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:Z

    .line 560
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->invalidate()V

    .line 561
    return-void

    :cond_5
    move v2, v1

    move v0, v1

    .line 551
    :goto_3
    if-ge v2, p1, :cond_4

    .line 552
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 553
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v0

    .line 551
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_3
.end method

.method public final a(Landroid/view/View;II)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;

    invoke-direct {v0, p0, v3, p3}, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;-><init>(Lcom/snapchat/android/ui/VerticalSwipeLayout;II)V

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    new-instance v1, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;

    invoke-direct {v1, p0, p2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;-><init>(Lcom/snapchat/android/ui/VerticalSwipeLayout;II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void

    .line 133
    :cond_1
    iput p3, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$b;->a:I

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V
    .locals 1
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 638
    invoke-static {}, Lbhp;->a()V

    .line 639
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    return-void
.end method

.method public a(Z)V
    .locals 4
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 261
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    mul-int/2addr v0, v1

    .line 262
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 263
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 265
    :cond_0
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 3

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 622
    :goto_0
    return v0

    .line 617
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

    .line 619
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 622
    :cond_3
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:Z

    if-eqz v0, :cond_1

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:Z

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 600
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->c(I)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->scrollTo(II)V

    .line 607
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->postInvalidate()V

    .line 608
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    .line 178
    iput v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    .line 180
    iput-boolean v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:Z

    .line 182
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:F

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:F

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:I

    .line 187
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->o:I

    .line 189
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    .line 190
    return-void
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 272
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 271
    goto :goto_0
.end method

.method public final f()V
    .locals 1
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 644
    invoke-static {}, Lbhp;->a()V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    return-void
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 294
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 341
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v2

    .line 293
    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 302
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 307
    :cond_4
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    goto :goto_1

    .line 310
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->p:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0, p1, v8}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;I)Z

    move-result v5

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->p:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/MotionEvent;I)Z

    move-result v6

    .line 316
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

    .line 317
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 318
    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_7
    move v0, v2

    .line 316
    goto :goto_2

    .line 322
    :cond_8
    invoke-direct {p0, v3, v5, v6}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(FZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 325
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 326
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 329
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v1, v3, v8}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    goto :goto_3

    .line 331
    :cond_9
    iput-boolean v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    move v2, v1

    goto/16 :goto_1

    .line 335
    :pswitch_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-eqz v0, :cond_a

    move v2, v1

    .line 336
    goto/16 :goto_1

    .line 338
    :cond_a
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(F)V

    goto/16 :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 234
    :goto_0
    if-ge v1, v3, :cond_1

    .line 235
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 236
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 237
    iget v5, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;I)I

    move-result v5

    .line 238
    sub-int v6, p4, p2

    add-int v7, v0, v5

    invoke-virtual {v4, v2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 239
    add-int/2addr v0, v5

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Z)V

    .line 254
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 208
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    .line 211
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    .line 212
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:I

    move v1, v0

    .line 214
    :goto_0
    if-ge v1, v2, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 217
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/view/View;I)I

    move-result v4

    .line 218
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->measureChild(Landroid/view/View;II)V

    .line 220
    add-int/2addr v0, v4

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 225
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

    .line 381
    iget-boolean v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-nez v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    move v0, v1

    .line 388
    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 393
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 456
    goto :goto_0

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 398
    :cond_3
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    move v0, v1

    .line 399
    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 405
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
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

    .line 417
    :cond_5
    iget-boolean v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-eqz v2, :cond_6

    .line 418
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 420
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 421
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollY(I)V

    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_6
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_0

    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    invoke-direct {p0, v3, v4, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(FZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 431
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:F

    .line 432
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 434
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:I

    invoke-interface {v0, v1, v3, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout$a;->a(III)V

    goto :goto_1

    .line 436
    :cond_7
    iput-boolean v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    move v0, v1

    .line 437
    goto/16 :goto_0

    .line 445
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(F)V

    .line 446
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 447
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    goto/16 :goto_0

    .line 452
    :pswitch_3
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    goto/16 :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    .line 277
    return-void
.end method
