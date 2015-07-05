.class public final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;,
        Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;,
        Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;,
        Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;,
        Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;
    }
.end annotation


# instance fields
.field private A:J

.field protected a:I

.field public b:Z

.field protected c:Z

.field protected d:Z

.field public e:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;

.field public f:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;

.field public g:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private final m:Landroid/support/v7/widget/RecyclerView;

.field private final n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

.field private final o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

.field private final p:Landroid/os/Handler;

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Z

.field private y:I

.field private z:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;)V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 199
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    .line 201
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->h:I

    .line 202
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->i:I

    .line 203
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    .line 204
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    .line 205
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    .line 206
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->p:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;F)F
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 579
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    .line 580
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->r:F

    .line 581
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->t:F

    .line 582
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    .line 583
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c:Z

    .line 584
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    .line 585
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    .line 586
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    .line 587
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->A:J

    .line 588
    return-void
.end method

.method private a(Ljava/lang/Integer;II)V
    .locals 1

    .prologue
    .line 522
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;IILandroid/view/animation/Interpolator;)V

    .line 523
    return-void
.end method

.method private a(Ljava/lang/Integer;IILandroid/view/animation/Interpolator;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    if-nez p2, :cond_0

    move v0, v1

    .line 528
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    float-to-int v4, v4

    aput v4, v3, v2

    aput p2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 529
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 543
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 568
    return-void

    :cond_0
    move v0, v2

    .line 527
    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->g:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->w:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->s:F

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->u:F

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 236
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d:Z

    .line 237
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v11, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 266
    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return v6

    .line 270
    :pswitch_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v1}, Lad;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v7

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v8

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v8

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_1

    .line 276
    :goto_2
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v11, :cond_0

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->r:F

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->t:F

    .line 281
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->s:F

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->u:F

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 284
    iget-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->q:Z

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->c(Landroid/support/v7/widget/RecyclerView$s;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    .line 289
    :goto_3
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    .line 290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->A:J

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->g:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->p:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 275
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    .line 287
    :cond_3
    iput v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    goto :goto_3

    :pswitch_1
    move v0, v4

    .line 311
    :goto_4
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v11, :cond_0

    .line 312
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->p:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v5

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->r:F

    sub-float v7, v1, v2

    .line 319
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 320
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 321
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 322
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 323
    iget-object v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 328
    iget-object v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v9, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->b(Landroid/support/v7/widget/RecyclerView$s;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 329
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v10, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    .line 334
    cmpl-float v1, v7, v3

    if-lez v1, :cond_5

    move v1, v4

    .line 346
    :goto_5
    if-eqz v4, :cond_11

    .line 347
    iget-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->q:Z

    if-eqz v2, :cond_e

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    if-ne v0, v2, :cond_d

    if-eqz v1, :cond_d

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    invoke-direct {p0, v0, v6, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;II)V

    .line 403
    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a()V

    goto/16 :goto_0

    :cond_5
    move v1, v6

    .line 334
    goto :goto_5

    .line 335
    :cond_6
    iget v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->h:I

    int-to-float v9, v9

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_8

    .line 338
    cmpl-float v1, v7, v3

    if-lez v1, :cond_7

    move v1, v4

    goto :goto_5

    :cond_7
    move v1, v6

    goto :goto_5

    .line 339
    :cond_8
    iget v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->h:I

    int-to-float v9, v9

    cmpg-float v9, v9, v2

    if-gtz v9, :cond_2e

    cmpg-float v2, v8, v2

    if-gez v2, :cond_2e

    iget-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c:Z

    if-eqz v2, :cond_2e

    .line 341
    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    move v2, v4

    :goto_7
    cmpg-float v1, v7, v3

    if-gez v1, :cond_a

    move v1, v4

    :goto_8
    if-ne v2, v1, :cond_b

    move v1, v4

    .line 342
    :goto_9
    cmpl-float v2, v7, v3

    if-lez v2, :cond_c

    :goto_a
    move v12, v4

    move v4, v1

    move v1, v12

    goto :goto_5

    :cond_9
    move v2, v6

    .line 341
    goto :goto_7

    :cond_a
    move v1, v6

    goto :goto_8

    :cond_b
    move v1, v6

    goto :goto_9

    :cond_c
    move v4, v6

    .line 342
    goto :goto_a

    .line 351
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;II)V

    goto :goto_6

    .line 354
    :cond_e
    if-nez v0, :cond_f

    cmpl-float v0, v7, v3

    if-lez v0, :cond_f

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    invoke-direct {p0, v0, v6, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;II)V

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->d(Landroid/support/v7/widget/RecyclerView$s;)V

    goto :goto_6

    .line 359
    :cond_f
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    if-eqz v0, :cond_10

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v1

    const/16 v2, 0x32

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;IILandroid/view/animation/Interpolator;)V

    goto :goto_6

    .line 372
    :cond_10
    iput v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    goto :goto_6

    .line 377
    :cond_11
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->t:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13

    .line 378
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->e:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;

    if-eqz v0, :cond_12

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->A:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbe

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v11, :cond_12

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->e:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;

    invoke-interface {v0, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$a;->e(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 385
    :cond_12
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->f:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;

    if-eqz v0, :cond_13

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v11, :cond_15

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->w:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->f:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;

    invoke-interface {v0, v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$b;->f(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 392
    :goto_b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$3;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    :cond_13
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    int-to-float v2, v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    :cond_14
    :goto_c
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;II)V

    goto/16 :goto_6

    .line 390
    :cond_15
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->w:Ljava/lang/Integer;

    goto :goto_b

    .line 401
    :cond_16
    iput v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    goto :goto_c

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v11, :cond_0

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->r:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_17

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->t:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 413
    :cond_17
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 416
    :cond_18
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 417
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->r:F

    sub-float v5, v0, v1

    .line 418
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->t:F

    sub-float v7, v0, v1

    .line 420
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    if-nez v0, :cond_19

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1d

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->h:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    move v0, v4

    .line 422
    :goto_d
    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->i:I

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1e

    move v1, v4

    .line 423
    :goto_e
    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 424
    iput-boolean v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    .line 428
    :cond_19
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->b(Landroid/support/v7/widget/RecyclerView$s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    cmpl-float v0, v5, v3

    if-lez v0, :cond_1f

    move v0, v4

    :goto_f
    iget-object v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v8, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->c(Landroid/support/v7/widget/RecyclerView$s;)F

    move-result v8

    float-to-int v8, v8

    if-nez v8, :cond_1a

    if-nez v0, :cond_1a

    iget-object v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v10, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    if-eq v9, v10, :cond_1b

    :cond_1a
    if-nez v8, :cond_20

    if-eqz v0, :cond_20

    iget-object v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v9, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    if-ne v8, v9, :cond_20

    :cond_1b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 431
    :cond_1c
    :goto_10
    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto/16 :goto_0

    :cond_1d
    move v0, v6

    .line 421
    goto :goto_d

    :cond_1e
    move v1, v6

    .line 422
    goto :goto_e

    :cond_1f
    move v0, v6

    .line 430
    goto :goto_f

    :cond_20
    iget-boolean v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->q:Z

    if-eqz v8, :cond_22

    if-eqz v0, :cond_22

    iget v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    if-ltz v8, :cond_22

    if-eqz v1, :cond_21

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->j:I

    invoke-direct {p0, v0, v6, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;II)V

    :cond_21
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_10

    :cond_22
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_23

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_23

    iput-boolean v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    :goto_11
    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->y:I

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_23
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    if-eqz v0, :cond_1c

    :cond_24
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->k:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->y:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_25

    iput v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    :cond_25
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$SwipeDirection;

    if-ne v0, v2, :cond_26

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_26

    iput v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    :cond_26
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    neg-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2d

    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_27

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_27
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v5, v0

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2c

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    invoke-interface {v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->c(Landroid/support/v7/widget/RecyclerView$s;)F

    move-result v2

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2c

    :goto_13
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    if-nez v0, :cond_28

    if-eqz v4, :cond_2a

    :cond_28
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->b:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_29
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->x:Z

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;Z)V

    :cond_2a
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->n:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->l:F

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->s:F

    iget v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->u:F

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_10

    :cond_2b
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a:I

    neg-int v0, v0

    goto/16 :goto_11

    :cond_2c
    move v4, v6

    goto :goto_13

    :cond_2d
    move v3, v0

    goto :goto_12

    :cond_2e
    move v1, v6

    move v4, v6

    goto/16 :goto_5

    :pswitch_3
    move v0, v6

    goto/16 :goto_4

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
