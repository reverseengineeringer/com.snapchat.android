.class public Lcom/snapchat/android/util/SnapchatViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# static fields
.field private static final OFFSCREEN_PAGE_LIMIT:I = 0x2

.field public static final PAGER_WINDOW_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnapchatViewPager"


# instance fields
.field private mAdapter:Lavs;

.field public mIsAnimating:Z

.field private mIsChatFragmentAccessible:Z

.field public mIsPagingEnabled:Z

.field public mIsScrolling:Z

.field private mLastOnScrollPage:I

.field private mLastOnScrollPagePixelOffset:I

.field private mLastRawX:F

.field private mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field public mUserSwipedIntoChatEvent:Lbfr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    .line 42
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    .line 43
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsAnimating:Z

    .line 46
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    .line 47
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastRawX:F

    .line 52
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    .line 42
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    .line 43
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsAnimating:Z

    .line 46
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    .line 47
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastRawX:F

    .line 52
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    if-nez p0, :cond_0

    .line 393
    const-string v0, "Background"

    .line 407
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 407
    const-string v0, "Unknown"

    goto :goto_0

    .line 397
    :pswitch_0
    const-string v0, "Chat"

    goto :goto_0

    .line 399
    :pswitch_1
    const-string v0, "Feed"

    goto :goto_0

    .line 401
    :pswitch_2
    const-string v0, "Camera"

    goto :goto_0

    .line 403
    :pswitch_3
    const-string v0, "Stories"

    goto :goto_0

    .line 405
    :pswitch_4
    const-string v0, "Discover"

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 180
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mAdapter:Lavs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mAdapter:Lavs;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1, p1}, Lavs;->a(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lavs;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    goto :goto_0
.end method

.method public final a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 372
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 373
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_0

    .line 376
    sub-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 377
    iget-boolean v3, v2, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-nez v3, :cond_0

    .line 378
    invoke-virtual {v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_1
    iget-boolean v3, v2, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-eqz v3, :cond_0

    .line 382
    iput-boolean v1, v2, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    goto :goto_1

    .line 386
    :cond_2
    return-void
.end method

.method public final executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getLastScrolledPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAllowAccessToChatFragmentEvent(Lbbn;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p1, Lbbn;->allow:Z

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    .line 119
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    .line 73
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    .line 91
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 72
    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Landroid/view/MotionEvent;)Z

    move v2, v1

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastRawX:F

    move v0, v2

    :goto_3
    if-nez v0, :cond_0

    .line 87
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 81
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastRawX:F

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastRawX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    if-nez v0, :cond_4

    :cond_6
    move v0, v1

    goto :goto_3

    .line 91
    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final onPageScrolled(IFI)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 244
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_c

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsScrolling:Z

    .line 245
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-ne v0, v3, :cond_0

    iput p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    .line 246
    :cond_0
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    if-ne v0, v3, :cond_1

    iput p3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    .line 248
    :cond_1
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    if-eq p1, v5, :cond_4

    :cond_2
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-nez v0, :cond_5

    if-ne p1, v5, :cond_5

    .line 251
    :cond_4
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lbfk;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v3, v4}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 254
    :cond_5
    if-ne p1, v1, :cond_6

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_8

    :cond_6
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-ne v0, v5, :cond_7

    if-gt p1, v5, :cond_8

    :cond_7
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    if-ne v0, v1, :cond_9

    if-gtz p1, :cond_9

    .line 257
    :cond_8
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lbfk;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v3, v4}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 260
    :cond_9
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    if-nez v0, :cond_a

    .line 261
    const/4 v0, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_a
    :goto_1
    if-nez p3, :cond_b

    .line 265
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->a(II)V

    .line 267
    if-ne p1, v1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b()V

    .line 276
    :cond_b
    :goto_2
    iput p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    .line 277
    iput p3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    .line 279
    new-array v0, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mLastOnScrollPagePixelOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 280
    return-void

    :cond_c
    move v0, v2

    .line 244
    goto/16 :goto_0

    .line 269
    :cond_d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b()V

    goto :goto_2

    .line 271
    :cond_e
    if-nez p1, :cond_b

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    .line 354
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(I)V

    .line 356
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 97
    iget-boolean v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    iget-object v1, v1, Lbfr;->mFeedListItem:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    iget-object v1, v1, Lbfr;->mFeedListItem:Landroid/view/View;

    const v2, 0x7f0a0228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lavk;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Lavk;-><init>(Landroid/view/View;I)V

    iget v1, v2, Lavk;->mStartOffset:I

    iput v1, v2, Lavk;->mPreviousXPositionForShutAnimator:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v3, v2, Lavk;->mStartOffset:I

    aput v3, v1, v0

    iget v3, v2, Lavk;->mEndOffset:I

    aput v3, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v3, v2, Lavk;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lavk$1;

    invoke-direct {v3, v2}, Lavk$1;-><init>(Lavk;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    iget-boolean v1, v1, Lbfr;->mIsFlinging:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, v6}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    :cond_4
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 102
    :cond_5
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserFlingedIntoChatEvent(Lbfp;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 114
    return-void
.end method

.method public onUserSwipedIntoChatEvent(Lbfr;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    .line 108
    return-void
.end method

.method public setAdapter(Lavs;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mAdapter:Lavs;

    .line 68
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsAnimating:Z

    .line 304
    return-void
.end method

.method public setChatFragmentAccessible(Z)V
    .locals 0

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsChatFragmentAccessible:Z

    .line 284
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    .line 291
    return-void
.end method
