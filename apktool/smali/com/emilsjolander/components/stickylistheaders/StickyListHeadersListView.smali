.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

.field private mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

.field private mAreHeadersSticky:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Ljava/lang/Boolean;

.field private mCurrentHeaderId:Ljava/lang/Long;

.field private mDataSetChangedObserver:Landroid/database/DataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDrawingListUnderStickyHeader:Z

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private mHeaderBeingPressed:Z

.field private mHeaderBottomPosition:I

.field private mHeaderDownY:F

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 107
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    .line 43
    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 45
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 46
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 51
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    .line 67
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    .line 79
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 114
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 117
    invoke-super {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-super {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 120
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 121
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 125
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 131
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorPosition"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 132
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static synthetic access$000(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    return-void
.end method

.method private static convertDpToPixel$62b020d0(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 375
    const/high16 v1, 0x42000000    # 32.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawStickyHeader(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 358
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    sub-int/2addr v1, v0

    .line 360
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 361
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 362
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 363
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    :goto_1
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 367
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 368
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fixedFirstVisibleItem(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return p1

    :cond_1
    move v0, v1

    .line 551
    :goto_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 552
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_3

    .line 553
    add-int/2addr p1, v0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 561
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 562
    if-lez p1, :cond_0

    .line 563
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 551
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectorPosition()I
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 337
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :goto_1
    return v0

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 351
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    .line 347
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private hasStickyHeaderAtPosition(I)Z
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 196
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    return v0
.end method

.method private isScrollBarOverlay()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getScrollBarStyle()I

    move-result v0

    .line 417
    if-eqz v0, :cond_0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->convertDpToPixel$62b020d0(Landroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getScrollBarStyle()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v3, 0x2000000

    if-ne v0, v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    sub-int v0, v2, v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 390
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    :cond_1
    if-eqz v0, :cond_5

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_5

    .line 400
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 406
    :goto_2
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    .line 408
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->convertDpToPixel$62b020d0(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 413
    return-void

    :cond_3
    move v0, v1

    .line 386
    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_1

    .line 403
    :cond_5
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private positionSelectorRect()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getSelectorPosition()I

    move-result v0

    .line 323
    if-ltz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v1

    .line 325
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    instance-of v1, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 328
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v2

    iget v0, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItemTop:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 332
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 154
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 155
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 157
    return-void
.end method

.method private scrollChanged(I)V
    .locals 13

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 433
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_1

    move v0, v3

    .line 434
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-nez v1, :cond_2

    .line 507
    :cond_0
    :goto_1
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v10

    .line 439
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v1

    sub-int v11, v1, v10

    .line 442
    if-ltz v11, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-le v11, v0, :cond_4

    .line 443
    :cond_3
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 444
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 445
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    goto :goto_1

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v11, :cond_9

    .line 450
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 451
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {v0, v11}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 452
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 453
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->convertDpToPixel$62b020d0(Landroid/content/Context;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getScrollBarStyle()I

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v2, 0x2000000

    if-ne v0, v2, :cond_d

    :cond_6
    move v0, v8

    :goto_2
    if-eqz v0, :cond_e

    move v0, v3

    :goto_3
    sub-int v0, v1, v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-eqz v0, :cond_f

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_f

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_4
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_8
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->convertDpToPixel$62b020d0(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 456
    :cond_9
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v12

    .line 457
    if-eqz v12, :cond_14

    .line 458
    const/4 v1, 0x0

    .line 459
    const v6, 0x7fffffff

    move v9, v3

    move v4, v3

    .line 462
    :goto_5
    if-ge v9, v12, :cond_12

    .line 463
    invoke-super {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 464
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v5, v8

    .line 467
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    :goto_7
    sub-int/2addr v7, v0

    .line 469
    if-ltz v7, :cond_1a

    .line 470
    if-eqz v1, :cond_c

    if-nez v4, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    if-nez v5, :cond_b

    move-object v0, v2

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_b
    if-ge v7, v6, :cond_1a

    :cond_c
    move v0, v5

    move v1, v7

    .line 462
    :goto_8
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v6, v1

    move v4, v0

    move-object v1, v2

    goto :goto_5

    :cond_d
    move v0, v3

    .line 453
    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getVerticalScrollbarWidth()I

    move-result v0

    goto/16 :goto_3

    :cond_f
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_4

    :cond_10
    move v5, v3

    .line 464
    goto :goto_6

    :cond_11
    move v0, v3

    .line 467
    goto :goto_7

    .line 483
    :cond_12
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v2

    .line 484
    if-eqz v1, :cond_18

    if-nez v4, :cond_13

    move-object v0, v1

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 487
    :cond_13
    if-ne v11, v10, :cond_15

    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 490
    iput v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 505
    :cond_14
    :goto_9
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 506
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    goto/16 :goto_1

    .line 492
    :cond_15
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    .line 494
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int v1, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 496
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    if-ge v0, v3, :cond_17

    add-int v0, v2, v3

    :goto_a
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_9

    :cond_17
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_a

    .line 501
    :cond_18
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    :cond_19
    add-int v0, v2, v3

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_9

    :cond_1a
    move v0, v4

    move-object v2, v1

    move v1, v6

    goto/16 :goto_8
.end method

.method private updateHeaderVisibilities()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    move v1, v0

    .line 529
    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v4

    move v3, v2

    .line 530
    :goto_1
    if-ge v3, v4, :cond_3

    .line 531
    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 532
    instance-of v5, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v5, :cond_0

    .line 533
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    .line 534
    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->hasHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 535
    iget-object v5, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 536
    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 537
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 528
    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 544
    :cond_3
    return-void
.end method

.method private wrapAdapter(Landroid/widget/ListAdapter;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
    .locals 2

    .prologue
    .line 268
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 276
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    iput v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    .line 277
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 278
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    iput-object v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    .line 279
    return-object v0

    .line 272
    :cond_0
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getSelectorPosition()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->getTop()I

    move-result v3

    iget v0, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItemTop:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_4

    .line 300
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 318
    :cond_3
    :goto_0
    return-void

    .line 304
    :cond_4
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 311
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 313
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_6

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    :goto_1
    iput v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public getWrappedAdapter()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public final getWrappedView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 290
    :cond_0
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 145
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 148
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 588
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 591
    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 592
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 593
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 594
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v4, v4, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    iget-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    if-eqz v2, :cond_4

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 600
    if-eq v1, v0, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 602
    :cond_2
    iput v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 603
    iput-boolean v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 604
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 605
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 606
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v4, v4, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 607
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    .line 614
    :cond_3
    iput v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderDownY:F

    .line 615
    iput-boolean v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 616
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 617
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 618
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 621
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 161
    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object p1, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    .line 164
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    :goto_0
    return-void

    .line 251
    :cond_0
    if-nez p1, :cond_1

    .line 252
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 253
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 254
    invoke-super {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 257
    :cond_1
    instance-of v0, p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    :goto_1
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    iput v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    iput-object v1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    .line 262
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V

    .line 263
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 261
    :cond_3
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-direct {v0, v1, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    goto :goto_1
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eq v0, p1, :cond_0

    .line 236
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 237
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 239
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 428
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 429
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 208
    if-ltz v0, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDividerHeight(I)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iput-object p1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 217
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .prologue
    .line 221
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDividerHeight:I

    .line 222
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mAdapter:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iput p1, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    .line 224
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 225
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 578
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    .line 573
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 232
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 173
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 182
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->hasStickyHeaderAtPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 191
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 192
    return-void
.end method
