.class public Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;,
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;,
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

.field b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/view/View;

.field private o:I

.field private p:Landroid/view/VelocityTracker;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b:I

    .line 40
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Z

    .line 43
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    .line 44
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    .line 46
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    .line 65
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->t:Z

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOffscreenPageLimit(I)V

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPageMargin(I)V

    .line 110
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPageMarginDrawable(I)V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->o:I

    const/high16 v0, 0x442f0000    # 700.0f

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->q:I

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:I

    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$a;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;B)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->s:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b:I

    return p1
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    .line 403
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    .line 408
    :cond_0
    return-void
.end method

.method private a(FF)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    .line 228
    iput p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:F

    .line 229
    return-void
.end method

.method private a(FFI)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 237
    if-nez p3, :cond_1

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 239
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    .line 240
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    goto :goto_0

    .line 246
    :cond_2
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 248
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    .line 249
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 490
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->s:I

    return p1
.end method

.method private b(I)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Laem;

    invoke-virtual {v0, p0, p1}, Laem;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    return-object v0
.end method

.method private b(FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_0
    move v0, v1

    .line 267
    :cond_1
    :goto_0
    return v0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->a()V

    .line 523
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->a(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->t:Z

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->t:Z

    .line 457
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->post(Ljava/lang/Runnable;)Z

    .line 464
    :cond_0
    return-void
.end method

.method getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    return-object v0
.end method

.method public getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_DOWN:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_BEGINNING:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->SWIPE_END:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 155
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Z

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v2

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 191
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-nez v2, :cond_0

    .line 193
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 199
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FF)V

    .line 169
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    .line 170
    invoke-direct {p0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:Landroid/view/View;

    goto :goto_1

    .line 175
    :pswitch_2
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:Landroid/view/View;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 177
    :cond_4
    invoke-direct {p0, v3, v4, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FFI)V

    .line 179
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-eqz v2, :cond_3

    .line 180
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FF)V

    goto :goto_1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    const-string v3, "EditionViewerPager"

    const-string v4, "Swallowing exception from ViewPager.onInterceptTouchEvent: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v0, v1

    .line 204
    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/high16 v1, 0x41000000    # 8.0f

    .line 116
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 117
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->m:F

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 286
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 373
    :goto_0
    return v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 298
    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 303
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 308
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 311
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 358
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-eqz v0, :cond_10

    move v0, v1

    .line 359
    goto :goto_0

    .line 317
    :pswitch_0
    iget-boolean v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-nez v6, :cond_5

    iget v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-nez v5, :cond_5

    .line 318
    invoke-direct {p0, v3, v4, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FFI)V

    .line 321
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-eqz v0, :cond_4

    .line 322
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float v0, v3, v0

    iget v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    div-float/2addr v0, v5

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 323
    :goto_2
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    invoke-interface {v5, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->a(F)V

    .line 324
    :cond_6
    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    .line 325
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    move-result-object v0

    .line 326
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a()V

    .line 327
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    invoke-interface {v5, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 328
    :cond_7
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    goto :goto_1

    .line 322
    :cond_8
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:F

    sub-float/2addr v0, v3

    iget v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    div-float/2addr v0, v5

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:F

    sub-float v0, v4, v0

    iget v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->m:F

    div-float/2addr v0, v5

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    .line 335
    :pswitch_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-eqz v0, :cond_d

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    if-eqz v0, :cond_d

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->o:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    iget v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->q:I

    if-le v0, v6, :cond_a

    iget-boolean v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-eqz v6, :cond_c

    :cond_a
    iget v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->q:I

    neg-int v6, v6

    if-ge v0, v6, :cond_b

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-eqz v0, :cond_c

    :cond_b
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:I

    if-le v5, v0, :cond_e

    :cond_c
    move v0, v1

    :goto_3
    if-eqz v0, :cond_f

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 339
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    .line 345
    :cond_d
    :goto_4
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a()V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 337
    goto :goto_3

    .line 341
    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->i()V

    goto :goto_4

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a()V

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;->i()V

    goto/16 :goto_1

    .line 363
    :cond_10
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:Z

    if-nez v0, :cond_11

    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v0

    if-nez v0, :cond_11

    .line 368
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v3, "EditionViewerPager"

    const-string v4, "Swallowing exception from ViewPager.onTouchEvent: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    move v0, v2

    .line 373
    goto/16 :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(IZ)V

    .line 441
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 433
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 434
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(II)V

    .line 436
    :cond_0
    return-void
.end method

.method public setLockedInPlace(Z)V
    .locals 0

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Z

    .line 473
    return-void
.end method

.method public setOnSwipeOutListener(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$b;

    .line 144
    return-void
.end method

.method public setPanel(I)V
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(II)V

    .line 426
    return-void
.end method
