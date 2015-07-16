.class public Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;,
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;,
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;
    }
.end annotation


# instance fields
.field private a:I

.field protected b:I

.field protected c:Landroid/widget/ListView;

.field public d:Z

.field protected e:Z

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

.field private n:I

.field private o:Z

.field private p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:I

.field private w:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->n:I

    .line 149
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 152
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    .line 154
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    .line 155
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    .line 156
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    .line 157
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    .line 158
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    .line 159
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;F)F
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    return-object v0
.end method

.method private a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 451
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 452
    return-void
.end method

.method private a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-nez p2, :cond_0

    move v0, v1

    .line 456
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    float-to-int v4, v4

    aput v4, v3, v2

    aput p2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 457
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 491
    return-void

    :cond_0
    move v0, v2

    .line 455
    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 503
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    .line 504
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    .line 505
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    .line 506
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    .line 507
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    .line 508
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    .line 509
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    .line 510
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    .line 511
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 432
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 176
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:Z

    .line 177
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->n:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 203
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->n:I

    .line 208
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 352
    :cond_1
    :goto_0
    return v2

    .line 210
    :pswitch_0
    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Landroid/view/View;

    .line 211
    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:Z

    if-nez v3, :cond_1

    .line 218
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 219
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 220
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 221
    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    aget v7, v3, v2

    sub-int/2addr v6, v7

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    aget v1, v3, v1

    sub-int/2addr v7, v1

    move v3, v2

    .line 225
    :goto_1
    if-ge v3, v5, :cond_3

    .line 226
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 230
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    instance-of v3, v3, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_2
    :goto_2
    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->r:F

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:F

    .line 240
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    .line 245
    :goto_3
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    .line 246
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 225
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 243
    :cond_7
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    goto :goto_3

    :pswitch_1
    move v0, v1

    .line 255
    :goto_4
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:Z

    if-nez v3, :cond_1

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    sub-float v5, v3, v4

    .line 260
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 261
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 262
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 263
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 264
    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_9

    .line 273
    cmpl-float v3, v5, v10

    if-lez v3, :cond_8

    move v3, v1

    .line 284
    :goto_5
    if-eqz v1, :cond_14

    .line 285
    iget-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-eqz v1, :cond_11

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v1, :cond_10

    if-eqz v3, :cond_10

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 324
    :goto_6
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Landroid/view/View;

    .line 325
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b()V

    goto/16 :goto_0

    :cond_8
    move v3, v2

    .line 273
    goto :goto_5

    .line 274
    :cond_9
    iget v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v7, v7

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_b

    .line 277
    cmpl-float v3, v5, v10

    if-lez v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    goto :goto_5

    .line 278
    :cond_b
    iget v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_2a

    cmpg-float v4, v6, v4

    if-gez v4, :cond_2a

    iget-boolean v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    if-eqz v4, :cond_2a

    .line 280
    cmpg-float v3, v3, v10

    if-gez v3, :cond_c

    move v4, v1

    :goto_7
    cmpg-float v3, v5, v10

    if-gez v3, :cond_d

    move v3, v1

    :goto_8
    if-ne v4, v3, :cond_e

    move v3, v1

    .line 281
    :goto_9
    cmpl-float v4, v5, v10

    if-lez v4, :cond_f

    :goto_a
    move v12, v1

    move v1, v3

    move v3, v12

    goto :goto_5

    :cond_c
    move v4, v2

    .line 280
    goto :goto_7

    :cond_d
    move v3, v2

    goto :goto_8

    :cond_e
    move v3, v2

    goto :goto_9

    :cond_f
    move v1, v2

    .line 281
    goto :goto_a

    .line 289
    :cond_10
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    goto :goto_6

    .line 292
    :cond_11
    if-nez v0, :cond_12

    cmpl-float v0, v5, v10

    if-lez v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 294
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfp;

    invoke-direct {v1}, Lbfp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_6

    .line 297
    :cond_12
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    if-eqz v0, :cond_13

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v1

    const/16 v3, 0x32

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto/16 :goto_6

    .line 310
    :cond_13
    iput v10, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    goto/16 :goto_6

    .line 315
    :cond_14
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    instance-of v0, v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;

    if-eqz v0, :cond_15

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;)I

    move-result v1

    .line 317
    const/4 v0, -0x1

    if-eq v1, v0, :cond_15

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    check-cast v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;->a(I)V

    .line 322
    :cond_15
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    :cond_16
    :goto_b
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    goto/16 :goto_6

    :cond_17
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    goto :goto_b

    .line 330
    :pswitch_2
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:Z

    if-nez v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 335
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    sub-float v5, v3, v4

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    sub-float v6, v3, v4

    .line 338
    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    if-nez v3, :cond_18

    .line 339
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1c

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    move v3, v1

    .line 340
    :goto_c
    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1d

    move v4, v1

    .line 341
    :goto_d
    if-eqz v4, :cond_18

    if-eqz v3, :cond_18

    .line 342
    iput-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    .line 346
    :cond_18
    cmpl-float v3, v5, v10

    if-lez v3, :cond_1e

    move v3, v1

    :goto_e
    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v4, v7}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;)F

    move-result v4

    float-to-int v4, v4

    if-nez v4, :cond_19

    if-nez v3, :cond_19

    iget-object v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v8, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-eq v7, v8, :cond_1a

    :cond_19
    if-nez v4, :cond_1f

    if-eqz v3, :cond_1f

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v7, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v4, v7, :cond_1f

    :cond_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 347
    :cond_1b
    :goto_f
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_0

    :cond_1c
    move v3, v2

    .line 339
    goto :goto_c

    :cond_1d
    move v4, v2

    .line 340
    goto :goto_d

    :cond_1e
    move v3, v2

    .line 346
    goto :goto_e

    :cond_1f
    iget-boolean v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-eqz v4, :cond_21

    if-eqz v3, :cond_21

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    if-ltz v4, :cond_21

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    :cond_20
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_f

    :cond_21
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_22

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v11

    cmpg-float v4, v4, v6

    if-gez v4, :cond_22

    iput-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    if-eqz v3, :cond_28

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    :goto_10
    iput v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:I

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_22
    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    if-eqz v3, :cond_1b

    :cond_23
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v3, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v3, :cond_24

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_24

    iput v10, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    :cond_24
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v3, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v3, :cond_25

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_25

    iput v10, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    :cond_25
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_29

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;)F

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_29

    :goto_11
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:Z

    if-nez v0, :cond_26

    if-eqz v1, :cond_27

    :cond_26
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_27
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:F

    invoke-interface {v0, v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;F)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_f

    :cond_28
    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    neg-int v3, v3

    goto/16 :goto_10

    :cond_29
    move v1, v2

    goto :goto_11

    :cond_2a
    move v3, v2

    move v1, v2

    goto/16 :goto_5

    :pswitch_3
    move v0, v2

    goto/16 :goto_4

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
