.class public Lorg/lucasr/twowayview/TwoWayView;
.super Landroid/widget/AdapterView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lucasr/twowayview/TwoWayView$PositionScroller;,
        Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;,
        Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForTap;,
        Lorg/lucasr/twowayview/TwoWayView$PerformClick;,
        Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;,
        Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;,
        Lorg/lucasr/twowayview/TwoWayView$SavedState;,
        Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;,
        Lorg/lucasr/twowayview/TwoWayView$RecycleBin;,
        Lorg/lucasr/twowayview/TwoWayView$LayoutParams;,
        Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;,
        Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;,
        Lorg/lucasr/twowayview/TwoWayView$Orientation;,
        Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_MOVE_SELECTION:I = 0x6

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SET_SELECTION:I = 0x2

.field private static final LAYOUT_SPECIFIC:I = 0x4

.field private static final LAYOUT_SYNC:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "TwoWayView"

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0xa

.field private static final NO_POSITION:I = -0x1

.field public static final STATE_NOTHING:[I

.field private static final SYNC_FIRST_POSITION:I = 0x1

.field private static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field private static final SYNC_SELECTED_POSITION:I = 0x0

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x0

.field private static final TOUCH_MODE_DRAGGING:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field private static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1


# instance fields
.field private mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

.field private mBlockLayoutRequests:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

.field private final mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field private mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mDrawSelectorOnTop:Z

.field private mEmptyView:Landroid/view/View;

.field private mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mIsVertical:Z

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemsCanFocus:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field private mLastTouchPos:F

.field private mLayoutMode:I

.field private final mMaximumVelocity:I

.field private mMotionPosition:I

.field private mNeedSync:Z

.field private mNextSelectedPosition:I

.field private mNextSelectedRowId:J

.field private mOldItemCount:I

.field private mOldSelectedPosition:I

.field private mOldSelectedRowId:J

.field private mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

.field private mOverScroll:I

.field private final mOverscrollDistance:I

.field private mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

.field private mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

.field private mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

.field private mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

.field private mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field private mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

.field private final mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

.field private mResurrectToPosition:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSelectedPosition:I

.field private mSelectedRowId:J

.field private mSelectedStart:I

.field private mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorPosition:I

.field private final mSelectorRect:Landroid/graphics/Rect;

.field private mSpecificStart:I

.field private mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mSyncMode:I

.field private mSyncPosition:I

.field private mSyncRowId:J

.field private mSyncSize:J

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderPos:F

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lorg/lucasr/twowayview/TwoWayView;->STATE_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lucasr/twowayview/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 324
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    new-array v0, v4, [Z

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    .line 326
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mContext:Landroid/content/Context;

    .line 328
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 329
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 330
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    .line 332
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    .line 334
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchSlop:I

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mMaximumVelocity:I

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFlingVelocity:I

    .line 338
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    .line 340
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    .line 342
    iput-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    .line 346
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;-><init>(Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    .line 348
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    .line 352
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 354
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    .line 355
    iput-wide v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 356
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 357
    iput-wide v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    .line 358
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 359
    iput-wide v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 361
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    .line 363
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 365
    iput-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 367
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setClickable(Z)V

    .line 368
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setFocusableInTouchMode(Z)V

    .line 369
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setWillNotDraw(Z)V

    .line 370
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 371
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setWillNotDraw(Z)V

    .line 372
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setClipToPadding(Z)V

    .line 374
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode$5359dc9a(Landroid/view/View;)V

    .line 376
    sget-object v0, Lorg/lucasr/twowayview/R$styleable;->TwoWayView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    .line 381
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 387
    if-ltz v1, :cond_1

    .line 388
    invoke-static {}, Lorg/lucasr/twowayview/TwoWayView$Orientation;->values()[Lorg/lucasr/twowayview/TwoWayView$Orientation;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setOrientation(Lorg/lucasr/twowayview/TwoWayView$Orientation;)V

    .line 391
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 392
    if-ltz v1, :cond_2

    .line 393
    invoke-static {}, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->values()[Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setChoiceMode(Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;)V

    .line 396
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    return-void
.end method

.method static synthetic access$1200(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$1702(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$1800(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return v0
.end method

.method static synthetic access$1802(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1900(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->rememberSyncState()V

    return-void
.end method

.method static synthetic access$2100(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V

    return-void
.end method

.method static synthetic access$2200(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2202(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2300(Lorg/lucasr/twowayview/TwoWayView;)J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/lucasr/twowayview/TwoWayView;J)J
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2402(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    return p1
.end method

.method static synthetic access$2502(Lorg/lucasr/twowayview/TwoWayView;J)J
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2602(Lorg/lucasr/twowayview/TwoWayView;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$2900(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method static synthetic access$3000(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$3400(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$3502(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    return p1
.end method

.method static synthetic access$3600(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    return-void
.end method

.method static synthetic access$3700(Lorg/lucasr/twowayview/TwoWayView;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/lucasr/twowayview/TwoWayView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->triggerCheckForLongPress()V

    return-void
.end method

.method static synthetic access$400(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lucasr/twowayview/TwoWayView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$4100(Lorg/lucasr/twowayview/TwoWayView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    return v0
.end method

.method static synthetic access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$5000(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lorg/lucasr/twowayview/TwoWayView;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$602(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method private adjustViewsStartOrEnd()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5390
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5410
    :cond_0
    :goto_0
    return-void

    .line 5394
    :cond_1
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5398
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    if-gez v2, :cond_2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-eqz v2, :cond_3

    .line 5399
    :cond_2
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v1, v2

    .line 5402
    :cond_3
    if-gez v1, :cond_4

    .line 5407
    :goto_1
    if-eqz v0, :cond_0

    .line 5408
    neg-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private amountToScroll(II)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2398
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2400
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    .line 2402
    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_6

    .line 2403
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v1

    .line 2405
    add-int/lit8 v0, v3, -0x1

    .line 2406
    if-eq p2, v6, :cond_1

    .line 2407
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 2410
    :cond_1
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v4, v0

    .line 2411
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2414
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_b

    .line 2415
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v1, v0

    .line 2418
    :goto_0
    invoke-direct {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v4

    .line 2419
    invoke-direct {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v5

    .line 2421
    if-gt v5, v0, :cond_3

    .line 2483
    :cond_2
    :goto_1
    return v2

    .line 2426
    :cond_3
    if-eq p2, v6, :cond_4

    sub-int v4, v0, v4

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 2432
    :cond_4
    sub-int v0, v5, v0

    .line 2434
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v2, v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne v2, v4, :cond_5

    .line 2435
    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v2

    .line 2438
    sub-int v1, v2, v1

    .line 2439
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2442
    :cond_5
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 2444
    :cond_6
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v1

    .line 2447
    if-eq p2, v6, :cond_a

    .line 2448
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 2451
    :goto_2
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v3, v0

    .line 2452
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2455
    if-lez v3, :cond_9

    .line 2456
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v1

    .line 2459
    :goto_3
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 2460
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v4

    .line 2462
    if-ge v3, v0, :cond_2

    .line 2467
    if-eq p2, v6, :cond_7

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2473
    :cond_7
    sub-int/2addr v0, v3

    .line 2475
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v3, :cond_8

    .line 2476
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    .line 2479
    sub-int/2addr v1, v2

    .line 2480
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2483
    :cond_8
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3

    .prologue
    .line 2500
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2502
    const/4 v0, 0x0

    .line 2504
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2505
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2507
    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 2508
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v2

    .line 2509
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2511
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2512
    sub-int v0, v2, v1

    .line 2513
    if-lez p3, :cond_1

    .line 2514
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 2529
    :cond_1
    :goto_1
    return v0

    .line 2509
    :cond_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 2518
    :cond_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v2

    .line 2519
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 2521
    :goto_2
    if-le v1, v2, :cond_1

    .line 2522
    sub-int v0, v1, v2

    .line 2523
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_1

    .line 2524
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 2519
    :cond_4
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2
.end method

.method private arrowScroll(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2052
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2055
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    .line 2057
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :cond_0
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    throw v0
.end method

.method private arrowScrollFocused(I)Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;
    .locals 9

    .prologue
    const/16 v8, 0x82

    const/16 v6, 0x42

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2167
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2169
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2173
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2174
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2175
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 2212
    :goto_0
    if-eqz v3, :cond_13

    .line 2213
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 2217
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v0, v7, :cond_11

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v4, v0, :cond_11

    .line 2218
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 2220
    if-eq p1, v8, :cond_0

    if-ne p1, v6, :cond_10

    :cond_0
    move v0, v1

    .line 2222
    :goto_1
    const/16 v6, 0x21

    if-eq p1, v6, :cond_1

    const/16 v6, 0x11

    if-ne p1, v6, :cond_2

    :cond_1
    move v2, v1

    .line 2225
    :cond_2
    if-eq v5, v7, :cond_11

    if-eqz v0, :cond_3

    if-lt v5, v4, :cond_4

    :cond_3
    if-eqz v2, :cond_11

    if-le v5, v4, :cond_11

    .line 2228
    :cond_4
    const/4 v0, 0x0

    .line 2251
    :goto_2
    return-object v0

    .line 2177
    :cond_5
    if-eq p1, v8, :cond_6

    if-ne p1, v6, :cond_a

    .line 2178
    :cond_6
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v0, :cond_7

    move v0, v1

    .line 2179
    :goto_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v3

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    .line 2183
    if-eqz v4, :cond_9

    .line 2184
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 2189
    :goto_5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2205
    :goto_6
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_e

    move v3, v2

    .line 2206
    :goto_7
    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v4, :cond_f

    .line 2207
    :goto_8
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2209
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_7
    move v0, v2

    .line 2178
    goto :goto_3

    :cond_8
    move v0, v2

    .line 2179
    goto :goto_4

    :cond_9
    move v0, v3

    .line 2186
    goto :goto_5

    .line 2191
    :cond_a
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v0, v3, :cond_b

    move v0, v1

    .line 2193
    :goto_9
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v3

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_a
    sub-int/2addr v3, v0

    .line 2196
    if-eqz v4, :cond_d

    .line 2197
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    .line 2202
    :goto_b
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_6

    :cond_b
    move v0, v2

    .line 2191
    goto :goto_9

    :cond_c
    move v0, v2

    .line 2193
    goto :goto_a

    :cond_d
    move v0, v3

    .line 2199
    goto :goto_b

    :cond_e
    move v3, v0

    .line 2205
    goto :goto_7

    :cond_f
    move v0, v2

    .line 2206
    goto :goto_8

    :cond_10
    move v0, v2

    .line 2220
    goto/16 :goto_1

    .line 2232
    :cond_11
    invoke-direct {p0, p1, v3, v4}, Lorg/lucasr/twowayview/TwoWayView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v0

    .line 2234
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v1

    .line 2235
    if-ge v0, v1, :cond_12

    .line 2237
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2238
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    invoke-virtual {v1, v4, v0}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->populate(II)V

    .line 2239
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    goto/16 :goto_2

    .line 2240
    :cond_12
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->distanceToView(Landroid/view/View;)I

    move-result v0

    if-ge v0, v1, :cond_13

    .line 2245
    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2246
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    invoke-virtual {v0, v4, v1}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->populate(II)V

    .line 2247
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    goto/16 :goto_2

    .line 2251
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private arrowScrollImpl(I)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2298
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2300
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return v2

    .line 2304
    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2305
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 2307
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePositionOnScreen(I)I

    move-result v7

    .line 2308
    invoke-direct {p0, p1, v7}, Lorg/lucasr/twowayview/TwoWayView;->amountToScroll(II)I

    move-result v3

    .line 2311
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->arrowScrollFocused(I)Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    move-result-object v0

    move-object v8, v0

    .line 2312
    :goto_1
    if-eqz v8, :cond_2

    .line 2313
    invoke-virtual {v8}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v7

    .line 2314
    invoke-virtual {v8}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v3

    .line 2317
    :cond_2
    if-eqz v8, :cond_b

    move v0, v1

    .line 2318
    :goto_2
    if-eq v7, v9, :cond_f

    .line 2319
    if-eqz v8, :cond_c

    move v0, v1

    :goto_3
    invoke-direct {p0, v6, p1, v7, v0}, Lorg/lucasr/twowayview/TwoWayView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2321
    invoke-direct {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 2322
    invoke-direct {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 2324
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2327
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    .line 2330
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2331
    if-eqz v0, :cond_3

    .line 2332
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2337
    :cond_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    move v0, v1

    move v6, v7

    .line 2340
    :goto_4
    if-lez v3, :cond_5

    .line 2341
    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-ne p1, v0, :cond_d

    :cond_4
    move v0, v3

    :goto_5
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    move v0, v1

    .line 2348
    :cond_5
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v3, :cond_7

    if-nez v8, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2350
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2351
    invoke-direct {p0, v3, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->distanceToView(Landroid/view/View;)I

    move-result v8

    if-lez v8, :cond_7

    .line 2352
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 2357
    :cond_7
    if-ne v7, v9, :cond_e

    if-eqz v5, :cond_e

    invoke-direct {p0, v5, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2360
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 2364
    iput v9, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    move-object v3, v4

    .line 2367
    :goto_6
    if-eqz v0, :cond_0

    .line 2368
    if-eqz v3, :cond_8

    .line 2369
    invoke-direct {p0, v6, v3}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 2370
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 2373
    :cond_8
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2374
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 2377
    :cond_9
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    move v2, v1

    .line 2378
    goto/16 :goto_0

    :cond_a
    move-object v8, v4

    .line 2311
    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 2317
    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 2319
    goto/16 :goto_3

    .line 2341
    :cond_d
    neg-int v0, v3

    goto :goto_5

    :cond_e
    move-object v3, v5

    goto :goto_6

    :cond_f
    move v10, v5

    move-object v5, v6

    move v6, v10

    goto :goto_4
.end method

.method private awakenScrollbarsInternal()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 3270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->awakenScrollBars()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCheckForLongPress()V
    .locals 1

    .prologue
    .line 3131
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 3136
    :goto_0
    return-void

    .line 3135
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private cancelCheckForTap()V
    .locals 1

    .prologue
    .line 3112
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    if-nez v0, :cond_0

    .line 3117
    :goto_0
    return-void

    .line 3116
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private checkFocus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6283
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6284
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v3, v1

    .line 6289
    :goto_0
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6290
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6292
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6293
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateEmptyStatus()V

    .line 6295
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 6284
    goto :goto_0

    :cond_2
    move v0, v2

    .line 6289
    goto :goto_1

    :cond_3
    move v1, v2

    .line 6290
    goto :goto_2
.end method

.method private checkSelectionChanged()V
    .locals 4

    .prologue
    .line 3536
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    iget-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3537
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->selectionChanged()V

    .line 3538
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 3539
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 3541
    :cond_1
    return-void
.end method

.method private cloneCheckStates()Landroid/util/SparseBooleanArray;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5414
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 5415
    const/4 v0, 0x0

    .line 5430
    :goto_0
    return-object v0

    .line 5420
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 5421
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    goto :goto_0

    .line 5423
    :cond_1
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 5425
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5426
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3087
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 3088
    if-nez v2, :cond_1

    .line 3099
    :cond_0
    :goto_0
    return v0

    .line 3092
    :cond_1
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 3093
    goto :goto_0

    .line 3096
    :cond_2
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3097
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3099
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v3

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private correctTooHigh(I)V
    .locals 5

    .prologue
    .line 5296
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 5297
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 5337
    :cond_0
    :goto_0
    return-void

    .line 5302
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    .line 5305
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v1

    .line 5306
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v2

    .line 5310
    sub-int v0, v2, v0

    .line 5312
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5313
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 5317
    if-lez v0, :cond_0

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-gtz v4, :cond_2

    if-ge v3, v1, :cond_0

    .line 5318
    :cond_2
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v4, :cond_3

    .line 5320
    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5324
    :cond_3
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    .line 5326
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v0, :cond_0

    .line 5327
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 5331
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5334
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 6

    .prologue
    .line 5342
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 5387
    :cond_0
    :goto_0
    return-void

    .line 5346
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 5348
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v1

    .line 5349
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v2

    .line 5353
    sub-int/2addr v0, v1

    .line 5355
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5356
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    .line 5358
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 5363
    if-lez v0, :cond_0

    .line 5364
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_2

    if-le v3, v2, :cond_4

    .line 5365
    :cond_2
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 5367
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5371
    :cond_3
    neg-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    .line 5373
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_0

    .line 5374
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    .line 5378
    add-int/lit8 v1, v4, 0x1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 5381
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_0

    .line 5383
    :cond_4
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_0

    .line 5384
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_0
.end method

.method private createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 5628
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2540
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2541
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2543
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v3

    .line 2544
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v4

    .line 2546
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2547
    :goto_0
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v2, v1

    .line 2549
    :goto_1
    const/4 v1, 0x0

    .line 2550
    if-ge v2, v3, :cond_2

    .line 2551
    sub-int v0, v3, v2

    .line 2556
    :goto_2
    return v0

    .line 2546
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 2547
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move v2, v1

    goto :goto_1

    .line 2552
    :cond_2
    if-le v0, v4, :cond_3

    .line 2553
    sub-int/2addr v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private drawEndEdge(Landroid/graphics/Canvas;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3347
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3348
    const/4 v0, 0x0

    .line 3365
    :goto_0
    return v0

    .line 3351
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3352
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    .line 3353
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v2

    .line 3355
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_1

    .line 3356
    neg-int v3, v0

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3357
    const/high16 v2, 0x43340000    # 180.0f

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3363
    :goto_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 3364
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 3359
    :cond_1
    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3360
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 3379
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3380
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3381
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3382
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3384
    :cond_0
    return-void
.end method

.method private drawStartEdge(Landroid/graphics/Canvas;)Z
    .locals 3

    .prologue
    .line 3327
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    const/4 v0, 0x0

    .line 3343
    :goto_0
    return v0

    .line 3331
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3332
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0

    .line 3335
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3336
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    .line 3338
    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3339
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3341
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 3342
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private fillAfter(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 5149
    const/4 v1, 0x0

    .line 5151
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v4

    .line 5153
    :goto_0
    if-ge p2, v4, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge p1, v0, :cond_1

    .line 5154
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    move v2, v3

    .line 5156
    :goto_1
    invoke-direct {p0, p1, p2, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 5157
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int p2, v5, v6

    .line 5159
    if-eqz v2, :cond_2

    .line 5163
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move-object v1, v0

    .line 5164
    goto :goto_0

    .line 5154
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 5166
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private fillBefore(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 5126
    const/4 v1, 0x0

    .line 5128
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v4

    .line 5130
    :goto_0
    if-le p2, v4, :cond_1

    if-ltz p1, :cond_1

    .line 5131
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 5133
    :goto_1
    invoke-direct {p0, p1, p2, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 5134
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int p2, v5, v6

    .line 5136
    if-eqz v2, :cond_2

    .line 5140
    :goto_2
    add-int/lit8 p1, p1, -0x1

    move-object v1, v0

    .line 5141
    goto :goto_0

    :cond_0
    move v2, v3

    .line 5131
    goto :goto_1

    .line 5143
    :cond_1
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5145
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private fillBeforeAndAfter(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 5236
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v0, v1

    .line 5237
    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5239
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 5241
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v0, v1

    .line 5242
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 5243
    return-void
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 5211
    sub-int v0, p2, p1

    .line 5212
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->reconcileSelectedPosition()I

    move-result v1

    .line 5214
    invoke-direct {p0, v1, p1, v2, v2}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 5215
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5217
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_1

    .line 5218
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 5219
    if-gt v3, v0, :cond_0

    .line 5220
    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5229
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 5230
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    .line 5232
    return-object v2

    .line 5223
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 5224
    if-gt v3, v0, :cond_0

    .line 5225
    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method private fillFromOffset(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 5200
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5201
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5203
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 5204
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5207
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 5246
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    .line 5247
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 5249
    invoke-direct {p0, p2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMinSelectionPixel(III)I

    move-result v2

    .line 5250
    invoke-direct {p0, p3, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMaxSelectionPixel(III)I

    move-result v0

    .line 5252
    invoke-direct {p0, v1, p1, v3, v3}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v3

    .line 5254
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v4

    .line 5255
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v5

    .line 5258
    if-le v5, v0, :cond_1

    .line 5261
    sub-int v2, v4, v2

    .line 5265
    sub-int v0, v5, v0

    .line 5267
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5270
    neg-int v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5287
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 5288
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    .line 5290
    return-object v3

    .line 5271
    :cond_1
    if-ge v4, v2, :cond_0

    .line 5274
    sub-int/2addr v2, v4

    .line 5278
    sub-int/2addr v0, v5

    .line 5280
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5283
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 5170
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 5171
    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 5174
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5176
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v2, v3

    .line 5177
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    move-result-object v2

    .line 5180
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 5182
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v3, v4

    .line 5183
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4, v3}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    move-result-object v3

    .line 5185
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    .line 5186
    if-lez v4, :cond_0

    .line 5187
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    .line 5190
    :cond_0
    if-eqz v0, :cond_2

    move-object v0, v1

    .line 5195
    :goto_1
    return-object v0

    .line 5170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5192
    :cond_2
    if-eqz v2, :cond_3

    move-object v0, v2

    .line 5193
    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 5195
    goto :goto_1
.end method

.method private findClosestMotionRowOrColumn(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3000
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 3001
    if-nez v2, :cond_0

    .line 3009
    :goto_0
    return v0

    .line 3005
    :cond_0
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result v1

    .line 3006
    if-eq v1, v0, :cond_1

    move v0, v1

    .line 3007
    goto :goto_0

    .line 3009
    :cond_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private findMotionRowOrColumn(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 2984
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 2985
    if-nez v2, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return v0

    .line 2989
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 2990
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2991
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 2992
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2989
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findSyncPosition()I
    .locals 12

    .prologue
    .line 5434
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 5436
    if-nez v6, :cond_0

    .line 5437
    const/4 v3, -0x1

    .line 5510
    :goto_0
    return v3

    .line 5440
    :cond_0
    iget-wide v8, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5443
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 5444
    const/4 v3, -0x1

    goto :goto_0

    .line 5448
    :cond_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5449
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5450
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long v10, v2, v4

    .line 5463
    const/4 v0, 0x0

    .line 5473
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5474
    if-nez v7, :cond_b

    .line 5475
    const/4 v3, -0x1

    goto :goto_0

    .line 5485
    :cond_2
    add-int/lit8 v4, v6, -0x1

    if-ne v1, v4, :cond_6

    const/4 v4, 0x1

    move v5, v4

    .line 5486
    :goto_1
    if-nez v2, :cond_7

    const/4 v4, 0x1

    .line 5488
    :goto_2
    if-eqz v5, :cond_3

    if-nez v4, :cond_a

    .line 5490
    :cond_3
    if-nez v4, :cond_4

    if-eqz v0, :cond_8

    if-nez v5, :cond_8

    .line 5495
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 5499
    const/4 v0, 0x0

    move v3, v1

    .line 5478
    :cond_5
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gtz v4, :cond_a

    .line 5479
    invoke-interface {v7, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 5480
    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    goto :goto_0

    .line 5485
    :cond_6
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    .line 5486
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 5500
    :cond_8
    if-nez v5, :cond_9

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 5502
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 5506
    const/4 v0, 0x1

    move v3, v2

    goto :goto_3

    .line 5510
    :cond_a
    const/4 v3, -0x1

    goto :goto_0

    :cond_b
    move v2, v1

    move v3, v1

    goto :goto_3
.end method

.method private finishEdgeGlows()V
    .locals 1

    .prologue
    .line 3317
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 3321
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 3322
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 3324
    :cond_1
    return-void
.end method

.method private finishSmoothScrolling()V
    .locals 1

    .prologue
    .line 3369
    const/4 v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 3370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 3372
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3373
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 3376
    :cond_0
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 3566
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 3567
    if-nez v0, :cond_0

    .line 3579
    :goto_0
    return-void

    .line 3571
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v3

    .line 3572
    if-ltz v3, :cond_1

    .line 3573
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 3574
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 3577
    :cond_1
    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method private forceValidFocusDirection(I)V
    .locals 2

    .prologue
    .line 1871
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Focus direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1874
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    .line 1875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Focus direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1878
    :cond_1
    return-void
.end method

.method private forceValidInnerFocusDirection(I)V
    .locals 2

    .prologue
    .line 1881
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 1882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    .line 1885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1888
    :cond_1
    return-void
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .prologue
    .line 2266
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    const/16 v1, 0xa

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getAvailableSize()I
    .locals 2

    .prologue
    .line 3039
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 3040
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3042
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getChildEndEdge(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3051
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method private getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 4768
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4769
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4774
    :goto_0
    return v0

    .line 4770
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_1

    .line 4771
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4772
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 4774
    :cond_1
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private getChildMeasuredSize(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3059
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getChildSize(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3055
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getChildStartEdge(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3047
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 4757
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_0

    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4758
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4763
    :goto_0
    return v0

    .line 4759
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 4760
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4761
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 4763
    :cond_1
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private final getCurrVelocity()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3262
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 3265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5

    .prologue
    .line 2934
    sparse-switch p2, :sswitch_data_0

    .line 2972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2936
    :sswitch_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2937
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 2938
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2939
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2977
    :goto_0
    sub-int/2addr v0, v1

    .line 2978
    sub-int v1, v2, v3

    .line 2980
    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    return v0

    .line 2943
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2944
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 2945
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 2946
    iget v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2950
    :sswitch_2
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2951
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 2952
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2953
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2954
    goto :goto_0

    .line 2957
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2958
    iget v3, p0, Landroid/graphics/Rect;->top:I

    .line 2959
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 2960
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2965
    :sswitch_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2966
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 2967
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 2968
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2969
    goto :goto_0

    .line 2934
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getEndEdge()I
    .locals 2

    .prologue
    .line 3027
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 3028
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3030
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getFadingEdgeLength()I
    .locals 1

    .prologue
    .line 3063
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method private getMaxSelectionPixel(III)I
    .locals 1

    .prologue
    .line 3078
    .line 3079
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 3080
    sub-int/2addr p1, p2

    .line 3083
    :cond_0
    return p1
.end method

.method private getMinSelectionPixel(III)I
    .locals 0

    .prologue
    .line 3068
    .line 3069
    if-lez p3, :cond_0

    .line 3070
    add-int/2addr p1, p2

    .line 3073
    :cond_0
    return p1
.end method

.method private getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 3015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 3016
    const/4 v0, 0x0

    .line 3019
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    goto :goto_0
.end method

.method private getSize()I
    .locals 1

    .prologue
    .line 3035
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getStartEdge()I
    .locals 1

    .prologue
    .line 3023
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method private handleDataChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 4513
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v2, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4514
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->confirmCheckedPositionsById()V

    .line 4517
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clearTransientStateViews()V

    .line 4519
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 4520
    if-lez v2, :cond_9

    .line 4525
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz v0, :cond_1

    .line 4527
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4528
    iput-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 4530
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    packed-switch v0, :pswitch_data_0

    .line 4579
    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4581
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    .line 4584
    if-lt v0, v2, :cond_2

    .line 4585
    add-int/lit8 v0, v2, -0x1

    .line 4587
    :cond_2
    if-gez v0, :cond_3

    move v0, v1

    .line 4592
    :cond_3
    invoke-direct {p0, v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 4594
    if-ltz v2, :cond_7

    .line 4595
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 4624
    :cond_4
    :goto_0
    return-void

    .line 4532
    :pswitch_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4537
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4538
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    goto :goto_0

    .line 4544
    :cond_5
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->findSyncPosition()I

    move-result v0

    .line 4545
    if-ltz v0, :cond_1

    .line 4547
    invoke-direct {p0, v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4548
    if-ne v3, v0, :cond_1

    .line 4550
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 4552
    iget-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncSize:J

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 4555
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4563
    :goto_1
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4559
    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    goto :goto_1

    .line 4572
    :pswitch_1
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4573
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    goto :goto_0

    .line 4599
    :cond_7
    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 4600
    if-ltz v0, :cond_9

    .line 4601
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 4607
    :cond_8
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    if-gez v0, :cond_4

    .line 4614
    :cond_9
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4615
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 4616
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    .line 4617
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    .line 4618
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 4619
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4620
    iput-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 4621
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 4623
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    goto :goto_0

    .line 4530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDragChange(I)V
    .locals 3

    .prologue
    .line 2811
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2812
    if-eqz v0, :cond_0

    .line 2813
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2817
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ltz v0, :cond_3

    .line 2818
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 2825
    :goto_0
    const/4 v1, 0x0

    .line 2826
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2827
    if-eqz v2, :cond_1

    .line 2828
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 2831
    :cond_1
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    move-result v2

    .line 2833
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2834
    if-eqz v0, :cond_2

    .line 2835
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 2837
    if-eqz v2, :cond_2

    .line 2838
    neg-int v2, p1

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    .line 2839
    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->updateOverScrollState(II)V

    .line 2842
    :cond_2
    return-void

    .line 2822
    :cond_3
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private handleFocusWithinItem(I)Z
    .locals 3

    .prologue
    .line 2000
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidInnerFocusDirection(I)V

    .line 2002
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 2004
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2005
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2007
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2010
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2011
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2014
    if-eqz v0, :cond_0

    .line 2016
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2017
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2018
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2020
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    const/4 v0, 0x1

    .line 2039
    :goto_0
    return v0

    .line 2030
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2033
    if-eqz v0, :cond_1

    .line 2034
    invoke-direct {p0, v0, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 2039
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/16 v0, 0x42

    const/16 v1, 0x21

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2581
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2720
    :cond_1
    :goto_0
    return v4

    .line 2585
    :cond_2
    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2586
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 2590
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 2592
    if-eq v5, v4, :cond_4

    .line 2593
    sparse-switch p1, :sswitch_data_0

    :cond_4
    move v0, v3

    .line 2687
    :cond_5
    :goto_1
    if-nez v0, :cond_1

    .line 2691
    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 2720
    goto :goto_0

    .line 2595
    :sswitch_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_6

    .line 2596
    invoke-direct {p0, p3, p2, v1}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2597
    :cond_6
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2598
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v0

    goto :goto_1

    .line 2603
    :sswitch_1
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_7

    .line 2604
    const/16 v0, 0x82

    invoke-direct {p0, p3, p2, v0}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2605
    :cond_7
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2606
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v0

    goto :goto_1

    .line 2612
    :sswitch_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_8

    .line 2613
    invoke-direct {p0, p3, p2, v2}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2614
    :cond_8
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2615
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v0

    goto :goto_1

    .line 2620
    :sswitch_3
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v1, :cond_9

    .line 2621
    invoke-direct {p0, p3, p2, v0}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2622
    :cond_9
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2623
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v0

    goto :goto_1

    .line 2629
    :sswitch_4
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2630
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2631
    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2633
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->keyPressed()V

    move v0, v4

    .line 2634
    goto :goto_1

    .line 2640
    :sswitch_5
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2641
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_a

    const/16 v0, 0x82

    :cond_a
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    :cond_b
    :goto_2
    move v0, v4

    .line 2649
    goto/16 :goto_1

    .line 2643
    :cond_c
    invoke-static {p3, v4}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2644
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    goto :goto_2

    :cond_d
    move v0, v2

    goto :goto_3

    .line 2652
    :sswitch_6
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2653
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_f

    :goto_4
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v4

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto :goto_4

    :cond_10
    move v0, v3

    goto/16 :goto_1

    .line 2655
    :cond_11
    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2656
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_13

    :goto_5
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v4

    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_5

    :cond_14
    move v0, v3

    goto/16 :goto_1

    .line 2662
    :sswitch_7
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2663
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_15

    const/16 v0, 0x82

    :cond_15
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    move v0, v4

    goto/16 :goto_1

    :cond_17
    move v0, v3

    goto/16 :goto_1

    .line 2665
    :cond_18
    const/4 v1, 0x2

    invoke-static {p3, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2666
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_19

    const/16 v0, 0x82

    :cond_19
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move v0, v4

    goto/16 :goto_1

    :cond_1b
    move v0, v3

    goto/16 :goto_1

    .line 2672
    :sswitch_8
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2673
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1d

    :goto_6
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    move v0, v4

    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_6

    :cond_1e
    move v0, v3

    goto/16 :goto_1

    .line 2679
    :sswitch_9
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2680
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_1f

    const/16 v0, 0x82

    :cond_1f
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    move v0, v4

    goto/16 :goto_1

    :cond_21
    move v0, v3

    goto/16 :goto_1

    .line 2693
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2696
    :pswitch_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2700
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v0, :cond_23

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_23

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2704
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2705
    if-eqz v0, :cond_22

    .line 2706
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget-wide v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/lucasr/twowayview/TwoWayView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2707
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2710
    :cond_22
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    goto/16 :goto_0

    :cond_23
    move v4, v3

    .line 2714
    goto/16 :goto_0

    .line 2717
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2593
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleKeyScroll(Landroid/view/KeyEvent;II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2560
    .line 2562
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2563
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2564
    if-nez v0, :cond_2

    .line 2565
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_2

    .line 2566
    invoke-direct {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    move p2, v2

    .line 2567
    goto :goto_0

    .line 2573
    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2574
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 2577
    :cond_2
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2084
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2086
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2087
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v4, v0, v3

    .line 2095
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v3, p3, v0

    .line 2101
    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_4

    .line 2103
    :cond_1
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v5, p1

    move-object p1, v0

    move v0, v2

    move v8, v3

    move v3, v4

    move v4, v8

    .line 2114
    :goto_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v7

    .line 2117
    if-eqz p1, :cond_2

    .line 2118
    if-nez p4, :cond_5

    if-eqz v0, :cond_5

    move v6, v2

    :goto_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2119
    invoke-direct {p0, p1, v4, v7}, Lorg/lucasr/twowayview/TwoWayView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2123
    :cond_2
    if-eqz v5, :cond_3

    .line 2124
    if-nez p4, :cond_6

    if-nez v0, :cond_6

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2125
    invoke-direct {p0, v5, v3, v7}, Lorg/lucasr/twowayview/TwoWayView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2127
    :cond_3
    return-void

    .line 2111
    :cond_4
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    move v0, v1

    goto :goto_0

    :cond_5
    move v6, v1

    .line 2118
    goto :goto_1

    :cond_6
    move v2, v1

    .line 2124
    goto :goto_2
.end method

.method private handleOverScrollChange(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2888
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 2889
    sub-int v3, v1, p1

    .line 2891
    neg-int v0, p1

    .line 2892
    if-gez v3, :cond_0

    if-gez v1, :cond_1

    :cond_0
    if-lez v3, :cond_5

    if-gtz v1, :cond_5

    .line 2894
    :cond_1
    neg-int v0, v1

    .line 2895
    add-int v1, p1, v0

    .line 2900
    :goto_0
    if-eqz v0, :cond_2

    .line 2901
    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->updateOverScrollState(II)V

    .line 2904
    :cond_2
    if-eqz v1, :cond_4

    .line 2905
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v0, :cond_3

    .line 2906
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 2907
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2910
    :cond_3
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    .line 2911
    const/4 v0, 0x3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 2915
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->findClosestMotionRowOrColumn(I)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    .line 2916
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 2918
    :cond_4
    return-void

    :cond_5
    move v1, v2

    .line 2897
    goto :goto_0
.end method

.method private hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3414
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 3415
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3416
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 3419
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 3420
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 3423
    :cond_1
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 3424
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 3426
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 3428
    :cond_2
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2726
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2730
    :goto_0
    return-void

    .line 2728
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2734
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2736
    :cond_0
    return-void
.end method

.method private invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2749
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2750
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;->onScroll(Lorg/lucasr/twowayview/TwoWayView;III)V

    .line 2754
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    .line 2755
    return-void
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1860
    if-ne p1, p2, :cond_0

    move v0, v1

    .line 1866
    :goto_0
    return v0

    .line 1864
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1866
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3481
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3523
    :cond_0
    :goto_0
    return-void

    .line 3485
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3486
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3488
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3491
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3493
    if-eqz v1, :cond_3

    .line 3494
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3498
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3501
    :cond_3
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 3503
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v1

    .line 3504
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3505
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_4

    .line 3506
    if-eqz v1, :cond_6

    .line 3507
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3514
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 3515
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    if-nez v0, :cond_5

    .line 3516
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    .line 3519
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3520
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3510
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method private layoutChildren()V
    .locals 17

    .prologue
    .line 4035
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 4297
    :cond_0
    :goto_0
    return-void

    .line 4039
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4040
    if-nez v10, :cond_0

    .line 4041
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4047
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 4049
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4292
    if-nez v10, :cond_0

    .line 4293
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    goto :goto_0

    .line 4054
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v5

    .line 4055
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v6

    .line 4057
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v11

    .line 4058
    const/4 v4, 0x0

    .line 4061
    const/4 v7, 0x0

    .line 4063
    const/4 v2, 0x0

    .line 4065
    const/4 v3, 0x0

    .line 4066
    const/4 v1, 0x0

    .line 4068
    move-object/from16 v0, p0

    iget v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    packed-switch v8, :pswitch_data_0

    .line 4086
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v3, v1, v3

    .line 4087
    if-ltz v3, :cond_3

    if-ge v3, v11, :cond_3

    .line 4088
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4092
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4094
    move-object/from16 v0, p0

    iget v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    if-ltz v8, :cond_4

    .line 4095
    move-object/from16 v0, p0

    iget v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    sub-int/2addr v4, v8

    .line 4099
    :cond_4
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    .line 4102
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 4103
    if-eqz v12, :cond_5

    .line 4104
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->handleDataChanged()V

    .line 4109
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-nez v1, :cond_6

    .line 4110
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4292
    if-nez v10, :cond_0

    .line 4293
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    goto/16 :goto_0

    .line 4070
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v8, v9

    .line 4071
    if-ltz v8, :cond_20

    if-ge v8, v11, :cond_20

    .line 4072
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    goto :goto_1

    :pswitch_1
    move-object v9, v1

    .line 4081
    goto :goto_1

    .line 4112
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v1, v8, :cond_8

    .line 4113
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The content of the adapter has changed but TwoWayView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in TwoWayView("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4292
    :catchall_0
    move-exception v1

    if-nez v10, :cond_7

    .line 4293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    :cond_7
    throw v1

    .line 4120
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 4123
    const/4 v1, 0x0

    .line 4127
    move-object/from16 v0, p0

    iget v13, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4128
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 4130
    if-eqz v12, :cond_9

    .line 4131
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_a

    .line 4132
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    add-int v16, v13, v8

    invoke-virtual/range {v14 .. v16}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4131
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4135
    :cond_9
    invoke-virtual {v14, v11, v13}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->fillActiveViews(II)V

    .line 4142
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 4143
    if-eqz v8, :cond_1f

    .line 4146
    if-nez v12, :cond_c

    .line 4150
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 4151
    if-eqz v7, :cond_b

    .line 4153
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_b
    move-object v1, v8

    .line 4157
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->requestFocus()Z

    move-object v8, v7

    move-object v7, v1

    .line 4164
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->detachAllViewsFromParent()V

    .line 4166
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    packed-switch v1, :pswitch_data_1

    .line 4201
    if-nez v11, :cond_14

    .line 4202
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result v1

    .line 4203
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 4204
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4228
    :goto_4
    invoke-virtual {v14}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->scrapActiveViews()V

    .line 4230
    if-eqz v2, :cond_1c

    .line 4231
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4232
    if-ne v2, v7, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_e
    const/4 v1, 0x1

    .line 4236
    :goto_5
    if-nez v1, :cond_1a

    .line 4240
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 4241
    if-eqz v1, :cond_f

    .line 4242
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 4245
    :cond_f
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 4254
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 4276
    :cond_10
    :goto_7
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 4278
    invoke-virtual {v8}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 4281
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4282
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 4283
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4285
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 4286
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v1, :cond_12

    .line 4287
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    .line 4290
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4292
    if-nez v10, :cond_0

    .line 4293
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    goto/16 :goto_0

    .line 4168
    :pswitch_2
    if-eqz v3, :cond_13

    .line 4169
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 4170
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4171
    goto/16 :goto_4

    .line 4172
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4175
    goto/16 :goto_4

    .line 4178
    :pswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4179
    goto/16 :goto_4

    .line 4182
    :pswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    move-result-object v1

    .line 4183
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    move-object v2, v1

    .line 4184
    goto/16 :goto_4

    .line 4187
    :pswitch_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4188
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    .line 4189
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    move-object v2, v1

    .line 4190
    goto/16 :goto_4

    .line 4193
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->reconcileSelectedPosition()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4194
    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v1, p0

    .line 4197
    invoke-direct/range {v1 .. v6}, Lorg/lucasr/twowayview/TwoWayView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4198
    goto/16 :goto_4

    .line 4206
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v1, v3, :cond_16

    .line 4208
    if-eqz v2, :cond_15

    .line 4209
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    .line 4211
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4212
    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v1, v2, :cond_18

    .line 4214
    if-eqz v9, :cond_17

    .line 4215
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    .line 4218
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4219
    goto/16 :goto_4

    .line 4220
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 4232
    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 4247
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4248
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 4251
    :cond_1b
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_6

    .line 4256
    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-lez v1, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1e

    .line 4257
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4259
    if-eqz v1, :cond_1d

    .line 4260
    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 4269
    :cond_1d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v8, :cond_10

    .line 4270
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 4263
    :cond_1e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 4264
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :cond_1f
    move-object v8, v7

    move-object v7, v1

    goto/16 :goto_3

    :cond_20
    move-object v9, v1

    goto/16 :goto_1

    .line 4068
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private lookForSelectablePosition(I)I
    .locals 1

    .prologue
    .line 3590
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 3594
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3595
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v0

    .line 3623
    :cond_1
    :goto_0
    return p1

    .line 3599
    :cond_2
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 3600
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_6

    .line 3601
    if-eqz p2, :cond_3

    .line 3602
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3603
    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3604
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3607
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3608
    :goto_2
    if-ltz p1, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3609
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 3613
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_1

    :cond_5
    move p1, v0

    .line 3614
    goto :goto_0

    .line 3619
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_1

    :cond_7
    move p1, v0

    .line 3620
    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 3638
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 3640
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3641
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3643
    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_6

    .line 3644
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    .line 3647
    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v3

    .line 3685
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 3644
    goto :goto_0

    .line 3651
    :cond_3
    if-ge v0, v1, :cond_4

    move v0, v1

    .line 3655
    :cond_4
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v2

    .line 3657
    :goto_2
    if-gt v0, v2, :cond_b

    .line 3658
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3657
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3664
    :cond_6
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 3666
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v2, v3, :cond_8

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x1

    .line 3669
    :goto_3
    if-ltz v2, :cond_7

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_9

    :cond_7
    move v0, v3

    .line 3670
    goto :goto_1

    .line 3666
    :cond_8
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 3673
    :cond_9
    if-le v2, v0, :cond_c

    .line 3677
    :goto_4
    if-lt v0, v1, :cond_b

    .line 3678
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3677
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_b
    move v0, v3

    .line 3685
    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 5011
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 5013
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v4

    move v3, p2

    .line 5016
    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_1

    .line 5021
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 5022
    if-eqz v1, :cond_1

    .line 5025
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/lucasr/twowayview/TwoWayView;->setupChild(Landroid/view/View;IIIZZZ)V

    .line 5037
    :goto_1
    return-object v1

    .line 5015
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v3

    move v4, p2

    goto :goto_0

    .line 5032
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 5035
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/lucasr/twowayview/TwoWayView;->setupChild(Landroid/view/View;IIIZZZ)V

    goto :goto_1
.end method

.method private maybeScroll(I)V
    .locals 2

    .prologue
    .line 2801
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2802
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->handleDragChange(I)V

    .line 2806
    :cond_0
    :goto_0
    return-void

    .line 2803
    :cond_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2804
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->handleOverScrollChange(I)V

    goto :goto_0
.end method

.method private maybeStartScrolling(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2769
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 2770
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchSlop:I

    if-gt v3, v4, :cond_1

    if-nez v0, :cond_1

    .line 2797
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 2769
    goto :goto_0

    .line 2774
    :cond_1
    if-eqz v0, :cond_4

    .line 2775
    const/4 v0, 0x5

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 2782
    :goto_2
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2783
    if-eqz v0, :cond_2

    .line 2784
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2787
    :cond_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    .line 2789
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 2790
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2791
    if-eqz v0, :cond_3

    .line 2792
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2795
    :cond_3
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    move v2, v1

    .line 2797
    goto :goto_1

    .line 2777
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    goto :goto_2
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 2138
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I

    move-result v0

    .line 2139
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;)V

    .line 2141
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2153
    :cond_0
    return-void

    .line 2146
    :cond_1
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->relayoutMeasuredChild(Landroid/view/View;)V

    .line 2149
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 2150
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2151
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4779
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V

    .line 4780
    return-void
.end method

.method private measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V
    .locals 2

    .prologue
    .line 4783
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result v0

    .line 4784
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result v1

    .line 4785
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 4786
    return-void
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 4852
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    .line 4853
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    .line 4855
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4856
    if-nez v2, :cond_1

    .line 4857
    add-int/2addr v0, v1

    .line 4911
    :cond_0
    :goto_0
    return v0

    .line 4861
    :cond_1
    add-int/2addr v1, v0

    .line 4862
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    .line 4866
    const/4 v0, 0x0

    .line 4871
    if-ne p3, v7, :cond_2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 4872
    :cond_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 4873
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v4

    .line 4874
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    .line 4876
    :goto_1
    if-gt p2, p3, :cond_8

    .line 4877
    invoke-direct {p0, p2, v5}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 4879
    invoke-direct {p0, v6, p2, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    .line 4881
    if-lez p2, :cond_3

    .line 4883
    add-int/2addr v1, v3

    .line 4887
    :cond_3
    if-eqz v4, :cond_4

    .line 4888
    invoke-virtual {v2, v6, v7}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4891
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 4893
    if-lt v1, p4, :cond_6

    .line 4896
    if-ltz p5, :cond_5

    if-le p2, p5, :cond_5

    if-lez v0, :cond_5

    if-ne v1, p4, :cond_0

    :cond_5
    move v0, p4

    goto :goto_0

    .line 4904
    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    move v0, v1

    .line 4876
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 4911
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 4801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 4802
    if-nez v0, :cond_0

    .line 4803
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    .line 4804
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4807
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    .line 4808
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    .line 4812
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 4814
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result v0

    move v2, v0

    move v0, p3

    move p3, v2

    .line 4817
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 4821
    return-void

    .line 4816
    :cond_1
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidthOfChildren(IIIII)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 4943
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    .line 4944
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    .line 4946
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4947
    if-nez v2, :cond_1

    .line 4948
    add-int/2addr v0, v1

    .line 5002
    :cond_0
    :goto_0
    return v0

    .line 4952
    :cond_1
    add-int/2addr v1, v0

    .line 4953
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    .line 4957
    const/4 v0, 0x0

    .line 4962
    if-ne p3, v7, :cond_2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 4963
    :cond_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 4964
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v4

    .line 4965
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    .line 4967
    :goto_1
    if-gt p2, p3, :cond_8

    .line 4968
    invoke-direct {p0, p2, v5}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 4970
    invoke-direct {p0, v6, p2, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    .line 4972
    if-lez p2, :cond_3

    .line 4974
    add-int/2addr v1, v3

    .line 4978
    :cond_3
    if-eqz v4, :cond_4

    .line 4979
    invoke-virtual {v2, v6, v7}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4982
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 4984
    if-lt v1, p4, :cond_6

    .line 4987
    if-ltz p5, :cond_5

    if-le p2, p5, :cond_5

    if-lez v0, :cond_5

    if-ne v1, p4, :cond_0

    :cond_5
    move v0, p4

    goto :goto_0

    .line 4995
    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    move v0, v1

    .line 4967
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 5002
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4319
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    .line 4320
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 4322
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    .line 4323
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    .line 4325
    invoke-direct {p0, p4, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMinSelectionPixel(III)I

    move-result v4

    .line 4326
    invoke-direct {p0, p5, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMaxSelectionPixel(III)I

    move-result v5

    .line 4328
    if-lez p3, :cond_2

    .line 4352
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0, v2, v7, v6}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 4354
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    .line 4357
    add-int v0, v3, v6

    invoke-direct {p0, v1, v0, v7, v7}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 4359
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 4360
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    .line 4363
    if-le v3, p5, :cond_0

    .line 4365
    sub-int v4, v1, v4

    .line 4368
    sub-int v5, v3, v5

    .line 4371
    sub-int v7, p5, p4

    div-int/lit8 v7, v7, 0x2

    .line 4372
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4373
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4375
    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v5, :cond_1

    .line 4376
    neg-int v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4377
    neg-int v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4385
    :cond_0
    :goto_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    sub-int/2addr v1, v6

    invoke-direct {p0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 4386
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 4387
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    add-int v2, v3, v6

    invoke-direct {p0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 4473
    :goto_1
    return-object v0

    .line 4379
    :cond_1
    neg-int v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4380
    neg-int v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 4388
    :cond_2
    if-gez p3, :cond_6

    .line 4409
    if-eqz p2, :cond_4

    .line 4411
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 4412
    invoke-direct {p0, v1, v0, v7, v7}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 4419
    :goto_2
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    .line 4420
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    .line 4423
    if-ge v2, v4, :cond_3

    .line 4425
    sub-int v2, v4, v2

    .line 4428
    sub-int v3, v5, v3

    .line 4431
    sub-int v4, p5, p4

    div-int/lit8 v4, v4, 0x2

    .line 4432
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4433
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4435
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_5

    .line 4436
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4443
    :cond_3
    :goto_3
    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    goto :goto_1

    .line 4416
    :cond_4
    invoke-direct {p0, v1, v2, v6, v7}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 4438
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 4449
    :cond_6
    invoke-direct {p0, v1, v2, v7, v7}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 4451
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 4452
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v4

    .line 4455
    if-ge v2, p4, :cond_7

    .line 4458
    add-int/lit8 v2, p4, 0x14

    if-ge v4, v2, :cond_7

    .line 4461
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_8

    .line 4462
    sub-int v2, p4, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4470
    :cond_7
    :goto_4
    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    goto :goto_1

    .line 4464
    :cond_8
    sub-int v2, p4, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5515
    aput-boolean v2, p2, v2

    .line 5517
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v1

    .line 5518
    if-eqz v1, :cond_0

    .line 5561
    :goto_0
    return-object v1

    .line 5522
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 5525
    if-eqz v1, :cond_6

    .line 5526
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5528
    if-eq v0, v1, :cond_5

    .line 5529
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    move-object v1, v0

    .line 5537
    :goto_1
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 5538
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5541
    :cond_1
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    if-eqz v0, :cond_3

    .line 5542
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 5544
    if-nez v0, :cond_7

    .line 5545
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    .line 5550
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5552
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5555
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_4

    .line 5556
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0, v4}, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    .line 5559
    :cond_4
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    goto :goto_0

    .line 5531
    :cond_5
    aput-boolean v3, p2, v2

    move-object v1, v0

    goto :goto_1

    .line 5534
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 5546
    :cond_7
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5547
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    goto :goto_2
.end method

.method private offsetChildren(I)V
    .locals 4

    .prologue
    .line 4304
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 4306
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4307
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4309
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_0

    .line 4310
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4306
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4312
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 4315
    :cond_1
    return-void
.end method

.method private overScrollByInternal(IIIIIIIIZ)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 1061
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1062
    const/4 v0, 0x0

    .line 1065
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/AdapterView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 1

    .prologue
    .line 3582
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    .line 3583
    if-ltz v0, :cond_0

    .line 3585
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->sendAccessibilityEvent(I)V

    .line 3587
    :cond_0
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5700
    .line 5702
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 5703
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 5704
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 5708
    :goto_0
    if-nez v0, :cond_0

    .line 5709
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lucasr/twowayview/TwoWayView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5710
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 5713
    :cond_0
    if-eqz v0, :cond_1

    .line 5714
    invoke-virtual {p0, v6}, Lorg/lucasr/twowayview/TwoWayView;->performHapticFeedback(I)Z

    .line 5717
    :cond_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 2274
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 2276
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2277
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2278
    invoke-direct {p0, p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2279
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v1

    return v0

    .line 2276
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2283
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3396
    if-eq p1, v5, :cond_0

    .line 3397
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 3400
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3403
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    .line 3404
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3405
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    .line 3407
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 3408
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->refreshDrawableState()V

    .line 3411
    :cond_1
    return-void

    .line 3405
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 4627
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 4628
    if-gez v0, :cond_0

    .line 4629
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 4632
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4633
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4635
    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2741
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2743
    :cond_0
    return-void
.end method

.method private relayoutMeasuredChild(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 4789
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4790
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4792
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    .line 4793
    add-int/2addr v0, v2

    .line 4794
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 4795
    add-int/2addr v1, v3

    .line 4797
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 4798
    return-void
.end method

.method private rememberSyncState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5589
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5625
    :goto_0
    return-void

    .line 5593
    :cond_0
    iput-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5595
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 5596
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5598
    iget-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5599
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5601
    if-eqz v0, :cond_1

    .line 5602
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5605
    :cond_1
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    goto :goto_0

    .line 5608
    :cond_2
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5609
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 5611
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5612
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5617
    :goto_1
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5619
    if-eqz v0, :cond_3

    .line 5620
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5623
    :cond_3
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    goto :goto_0

    .line 5614
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    goto :goto_1
.end method

.method private reportScrollStateChange(I)V
    .locals 1

    .prologue
    .line 2758
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    if-ne p1, v0, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return-void

    .line 2762
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2763
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    .line 2764
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;->onScrollStateChanged(Lorg/lucasr/twowayview/TwoWayView;I)V

    goto :goto_0
.end method

.method private scrollListItemsBy(I)Z
    .locals 16

    .prologue
    .line 3139
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v6

    .line 3140
    if-nez v6, :cond_0

    .line 3141
    const/4 v1, 0x1

    .line 3256
    :goto_0
    return v1

    .line 3144
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 3145
    add-int/lit8 v1, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v4

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v1

    .line 3148
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    .line 3150
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v5, :cond_2

    .line 3152
    :goto_1
    sub-int v7, v1, v3

    .line 3153
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v8

    .line 3154
    sub-int v9, v4, v8

    .line 3156
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result v2

    .line 3158
    if-gez p1, :cond_3

    .line 3159
    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3164
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3166
    if-nez v10, :cond_4

    if-lt v3, v1, :cond_4

    if-ltz v2, :cond_4

    const/4 v3, 0x1

    .line 3168
    :goto_3
    add-int v5, v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne v5, v11, :cond_5

    if-gt v4, v8, :cond_5

    if-gtz v2, :cond_5

    const/4 v4, 0x1

    .line 3171
    :goto_4
    if-nez v3, :cond_1

    if-eqz v4, :cond_7

    .line 3172
    :cond_1
    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3150
    goto :goto_1

    .line 3161
    :cond_3
    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 3166
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 3168
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 3172
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 3175
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v11

    .line 3176
    if-eqz v11, :cond_8

    .line 3177
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 3180
    :cond_8
    const/4 v3, 0x0

    .line 3181
    const/4 v4, 0x0

    .line 3183
    if-gez v2, :cond_9

    const/4 v5, 0x1

    .line 3184
    :goto_5
    if-eqz v5, :cond_a

    .line 3185
    neg-int v8, v2

    add-int/2addr v8, v1

    .line 3187
    const/4 v1, 0x0

    move v15, v4

    move v4, v1

    move v1, v15

    :goto_6
    if-ge v4, v6, :cond_b

    .line 3188
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3189
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v13

    .line 3191
    if-ge v13, v8, :cond_b

    .line 3192
    add-int/lit8 v1, v1, 0x1

    .line 3196
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    add-int v14, v10, v4

    invoke-virtual {v13, v12, v14}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3187
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3183
    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    .line 3199
    :cond_a
    sub-int/2addr v8, v2

    .line 3201
    add-int/lit8 v1, v6, -0x1

    move v15, v4

    move v4, v1

    move v1, v15

    :goto_7
    if-ltz v4, :cond_b

    .line 3202
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3203
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v12

    .line 3205
    if-le v12, v8, :cond_b

    .line 3210
    add-int/lit8 v1, v1, 0x1

    .line 3211
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    add-int v12, v10, v4

    invoke-virtual {v3, v6, v12}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3201
    add-int/lit8 v3, v4, -0x1

    move v15, v3

    move v3, v4

    move v4, v15

    goto :goto_7

    .line 3215
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 3217
    if-lez v1, :cond_c

    .line 3218
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lorg/lucasr/twowayview/TwoWayView;->detachViewsFromParent(II)V

    .line 3223
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3224
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 3227
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    .line 3229
    if-eqz v5, :cond_e

    .line 3230
    move-object/from16 v0, p0

    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3233
    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3234
    if-lt v7, v1, :cond_f

    if-ge v9, v1, :cond_10

    .line 3235
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillGap(Z)V

    .line 3238
    :cond_10
    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 3239
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3240
    if-ltz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 3241
    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 3252
    :cond_11
    :goto_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 3254
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    .line 3256
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3243
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 3244
    move-object/from16 v0, p0

    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3245
    if-ltz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 3246
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto :goto_8

    .line 3249
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_8
.end method

.method private selectionChanged()V
    .locals 2

    .prologue
    .line 3544
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 3545
    if-nez v0, :cond_0

    .line 3563
    :goto_0
    return-void

    .line 3549
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 3554
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    if-nez v0, :cond_2

    .line 3555
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    .line 3558
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3560
    :cond_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->fireOnSelected()V

    .line 3561
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method private setNextSelectedPositionInt(I)V
    .locals 2

    .prologue
    .line 3456
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    .line 3457
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 3460
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 3461
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 3462
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 3464
    :cond_0
    return-void
.end method

.method private setSelectedPositionInt(I)V
    .locals 2

    .prologue
    .line 3431
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 3432
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    .line 3433
    return-void
.end method

.method private setSelectionInt(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3436
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 3437
    const/4 v1, 0x0

    .line 3439
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 3440
    if-ltz v2, :cond_3

    .line 3441
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_2

    .line 3448
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 3450
    if-eqz v0, :cond_1

    .line 3451
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    .line 3453
    :cond_1
    return-void

    .line 3443
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;IIIZZZ)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 5043
    if-eqz p6, :cond_6

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    .line 5044
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_7

    const/4 v0, 0x1

    move v2, v0

    .line 5045
    :goto_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 5047
    if-lez v0, :cond_8

    const/4 v3, 0x3

    if-ge v0, v3, :cond_8

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    move v3, v0

    .line 5050
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v3, v0, :cond_9

    const/4 v0, 0x1

    move v6, v0

    .line 5051
    :goto_3
    if-eqz p7, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 5054
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 5055
    if-nez v0, :cond_11

    .line 5056
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    move-object v5, v0

    .line 5059
    :goto_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v5, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    .line 5061
    if-eqz p7, :cond_c

    iget-boolean v0, v5, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    if-nez v0, :cond_c

    .line 5062
    if-eqz p5, :cond_b

    const/4 v0, -0x1

    :goto_6
    invoke-virtual {p0, p1, v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5068
    :goto_7
    if-eqz v2, :cond_1

    .line 5069
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5072
    :cond_1
    if-eqz v6, :cond_2

    .line 5073
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5076
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    .line 5077
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 5078
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 5084
    :cond_3
    :goto_8
    if-eqz v4, :cond_f

    .line 5085
    invoke-direct {p0, p1, v5}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V

    .line 5090
    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 5091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 5093
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_4

    if-nez p5, :cond_4

    sub-int/2addr p3, v1

    .line 5094
    :cond_4
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v2, :cond_5

    if-nez p5, :cond_5

    sub-int/2addr p4, v0

    .line 5096
    :cond_5
    if-eqz v4, :cond_10

    .line 5097
    add-int/2addr v0, p4

    .line 5098
    add-int/2addr v1, p3

    .line 5100
    invoke-virtual {p1, p4, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 5105
    :goto_a
    return-void

    .line 5043
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 5044
    :cond_7
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 5047
    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    .line 5050
    :cond_9
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_3

    .line 5051
    :cond_a
    const/4 v0, 0x0

    move v4, v0

    goto :goto_4

    .line 5062
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 5064
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, v5, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    .line 5065
    if-eqz p5, :cond_d

    const/4 v0, -0x1

    :goto_b
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v0, v5, v7}, Lorg/lucasr/twowayview/TwoWayView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 5079
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 5080
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_8

    .line 5087
    :cond_f
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_9

    .line 5102
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 5103
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_a

    :cond_11
    move-object v5, v0

    goto/16 :goto_5
.end method

.method private shouldShowSelector()Z
    .locals 1

    .prologue
    .line 3392
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3467
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3472
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3470
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private triggerCheckForLongPress()V
    .locals 4

    .prologue
    .line 3120
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 3121
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    .line 3124
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3126
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3128
    return-void
.end method

.method private triggerCheckForTap()V
    .locals 4

    .prologue
    .line 3104
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    if-nez v0, :cond_0

    .line 3105
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    .line 3108
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3109
    return-void
.end method

.method private updateEmptyStatus()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6298
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 6300
    :goto_0
    if-eqz v0, :cond_4

    .line 6301
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 6302
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6303
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    .line 6313
    :goto_1
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 6314
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->layout(IIII)V

    .line 6323
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 6298
    goto :goto_0

    .line 6307
    :cond_3
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    goto :goto_1

    .line 6317
    :cond_4
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 6318
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6321
    :cond_5
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 5633
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5634
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    .line 5636
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 5637
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5638
    add-int v4, v2, v1

    .line 5640
    instance-of v5, v0, Landroid/widget/Checkable;

    if-eqz v5, :cond_1

    .line 5641
    check-cast v0, Landroid/widget/Checkable;

    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 5636
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5642
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 5643
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 5646
    :cond_2
    return-void
.end method

.method private updateOverScrollState(II)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 2845
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_4

    move v1, v5

    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_5

    move v2, p2

    :goto_1
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_6

    move v3, v5

    :goto_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_7

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    :goto_3
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_8

    move v7, v5

    :goto_4
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_9

    iget v8, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    :goto_5
    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lorg/lucasr/twowayview/TwoWayView;->overScrollByInternal(IIIIIIIIZ)Z

    .line 2854
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2856
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2861
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    .line 2862
    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_3

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2864
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 2866
    int-to-float v0, p2

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2867
    if-lez p1, :cond_a

    .line 2868
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2870
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2871
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2881
    :cond_2
    :goto_6
    if-eqz p1, :cond_3

    .line 2882
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2885
    :cond_3
    return-void

    :cond_4
    move v1, p2

    .line 2845
    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3

    :cond_8
    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    goto :goto_4

    :cond_9
    move v8, v5

    goto :goto_5

    .line 2873
    :cond_a
    if-gez p1, :cond_2

    .line 2874
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2876
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2877
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_6
.end method

.method private updateSelectorState()V
    .locals 2

    .prologue
    .line 3526
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3527
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3528
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3533
    :cond_0
    :goto_0
    return-void

    .line 3530
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView;->STATE_NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 3387
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3389
    return-void
.end method


# virtual methods
.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 3730
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 5736
    instance-of v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 730
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 731
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1247
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 1248
    if-nez v2, :cond_1

    move v0, v1

    .line 1270
    :cond_0
    :goto_0
    return v0

    .line 1252
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    .line 1254
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1255
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1257
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1258
    if-lez v1, :cond_2

    .line 1259
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1262
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1265
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1266
    if-lez v1, :cond_0

    .line 1267
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 1296
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 1298
    if-ltz v1, :cond_0

    if-nez v2, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v0

    .line 1302
    :cond_1
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1303
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1305
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1306
    if-lez v2, :cond_0

    .line 1307
    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v2, v3, v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1327
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1329
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1331
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1334
    :cond_0
    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 3275
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3314
    :goto_0
    return-void

    .line 3280
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3281
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 3286
    :goto_1
    int-to-float v1, v0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3287
    int-to-float v0, v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 3289
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    move-result v0

    .line 3291
    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3292
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 3283
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    .line 3294
    :cond_2
    if-eqz v0, :cond_4

    .line 3295
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    .line 3296
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 3297
    if-lez v1, :cond_5

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3300
    :goto_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v0

    .line 3303
    if-eqz v0, :cond_3

    .line 3304
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3308
    :cond_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 3311
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 3312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 3297
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 1220
    if-nez v2, :cond_1

    move v0, v1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1224
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    .line 1226
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1227
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1229
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1230
    if-lez v1, :cond_2

    .line 1231
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1234
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1235
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1237
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1238
    if-lez v1, :cond_0

    .line 1239
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1275
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 1276
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 1278
    if-ltz v1, :cond_0

    if-nez v2, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1285
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1286
    if-lez v2, :cond_0

    .line 1287
    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v2, v3, v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1315
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1317
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1319
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1322
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4478
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    move v1, v2

    .line 4480
    :goto_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 4481
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 4482
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4484
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 4485
    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    .line 4487
    add-int/lit8 v0, v6, -0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4488
    add-int/lit8 v6, v6, 0x14

    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4491
    :goto_1
    if-ge v0, v6, :cond_5

    .line 4492
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 4493
    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 4495
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4496
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v7, v6, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->gc()V

    :cond_0
    iget-object v6, v6, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object v0, v6, v1

    move v0, v3

    .line 4501
    :goto_2
    if-nez v0, :cond_1

    .line 4502
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 4503
    add-int/lit8 v1, v1, -0x1

    .line 4504
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 4480
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4491
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4507
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 4510
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 3735
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    .line 3736
    if-nez v0, :cond_0

    .line 3737
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3740
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3742
    if-eqz v0, :cond_1

    .line 3743
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3745
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3926
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3927
    if-nez v0, :cond_0

    .line 3929
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 3930
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3933
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3937
    :cond_0
    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 3944
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 3749
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3751
    const/4 v0, 0x0

    .line 3753
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 3754
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawStartEdge(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 3757
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 3758
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawEndEdge(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3761
    :cond_1
    if-eqz v0, :cond_2

    .line 3762
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3764
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3690
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3691
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 3692
    return-void
.end method

.method fillGap(Z)V
    .locals 3

    .prologue
    .line 5108
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 5110
    if-eqz p1, :cond_1

    .line 5111
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    .line 5112
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v2

    .line 5113
    if-lez v1, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v0, v2

    .line 5114
    :cond_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 5115
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    .line 5123
    :goto_0
    return-void

    .line 5117
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v0

    .line 5118
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    .line 5119
    if-lez v1, :cond_2

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int v0, v2, v0

    .line 5120
    :cond_2
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5121
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->correctTooLow(I)V

    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1953
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 1956
    const/16 v2, 0x21

    if-eq p1, v2, :cond_0

    const/16 v2, 0x11

    if-ne p1, v2, :cond_4

    .line 1957
    :cond_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eqz v2, :cond_2

    .line 1958
    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 1959
    if-ltz v0, :cond_1

    .line 1960
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1961
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1962
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    :cond_1
    move v0, v1

    .line 1980
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1981
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    .line 1982
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 1985
    :cond_3
    return v0

    .line 1967
    :cond_4
    const/16 v2, 0x82

    if-eq p1, v2, :cond_5

    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 1968
    :cond_5
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1969
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 1970
    if-ltz v0, :cond_6

    .line 1971
    const/4 v2, 0x3

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1972
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1973
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    :cond_6
    move v0, v1

    .line 1976
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 5722
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 5723
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(II)V

    .line 5725
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 5741
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
    .locals 1

    .prologue
    .line 5731
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    .line 1140
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_1

    .line 1141
    const/4 v0, 0x0

    .line 1160
    :cond_0
    :goto_0
    return v0

    .line 1144
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v0

    .line 1146
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 1147
    if-eqz v1, :cond_0

    .line 1150
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1151
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1154
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1155
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v2

    .line 1157
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v3

    .line 1158
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 1160
    sub-int v5, v3, v2

    if-le v1, v5, :cond_0

    sub-int v0, v1, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v2, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    .line 634
    :cond_0
    new-array v0, v1, [J

    .line 645
    :cond_1
    return-object v0

    .line 637
    :cond_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 638
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    .line 639
    new-array v0, v3, [J

    .line 641
    :goto_0
    if-ge v1, v3, :cond_1

    .line 642
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->SINGLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 5746
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 871
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 876
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 877
    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getItemMargin()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1167
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 1168
    const/4 v0, 0x0

    .line 1186
    :cond_0
    :goto_0
    return v0

    .line 1171
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1173
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 1174
    if-eqz v1, :cond_0

    .line 1177
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1178
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1181
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1182
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    .line 1184
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1186
    if-ge v1, v2, :cond_0

    sub-int v0, v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 2259
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOrientation()Lorg/lucasr/twowayview/TwoWayView$Orientation;
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->HORIZONTAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    goto :goto_0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 846
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v0

    .line 850
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    move v0, v1

    .line 866
    :goto_1
    return v0

    .line 858
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 859
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 860
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 859
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 866
    goto :goto_1
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    .line 1192
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 1193
    const/4 v0, 0x0

    .line 1212
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1198
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 1199
    if-eqz v1, :cond_0

    .line 1202
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1203
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1206
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1207
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v2

    .line 1209
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v3

    .line 1210
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 1212
    sub-int v5, v3, v2

    if-le v1, v5, :cond_0

    sub-int v0, v1, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 550
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 3775
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3776
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1115
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_1

    .line 1116
    const/4 v0, 0x0

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1119
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v0

    .line 1121
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 1122
    if-eqz v1, :cond_0

    .line 1125
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1126
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1129
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1130
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v2

    .line 1132
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1134
    if-ge v1, v2, :cond_0

    sub-int v0, v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 948
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 950
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 951
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 953
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 955
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 958
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 959
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 960
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 963
    :cond_0
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    .line 964
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 3697
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_1

    .line 3699
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3725
    :cond_0
    :goto_0
    return-object v0

    .line 3705
    :cond_1
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 3710
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3711
    const/4 v2, -0x1

    .line 3712
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 3713
    aget v4, v0, v1

    if-ne v4, v3, :cond_2

    .line 3720
    :goto_2
    if-ltz v1, :cond_0

    .line 3721
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3712
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 968
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 971
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 973
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 974
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 976
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 981
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 985
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 987
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 990
    :cond_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    .line 993
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 887
    if-eqz p1, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 892
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 893
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 896
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    .line 899
    :cond_1
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 900
    const/4 v4, -0x1

    .line 903
    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 904
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 908
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 909
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 910
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 915
    :cond_2
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    .line 916
    const v1, 0x7fffffff

    .line 917
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v7

    .line 918
    iget v8, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    move v3, v2

    .line 920
    :goto_0
    if-ge v3, v7, :cond_3

    .line 922
    add-int v0, v8, v3

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 923
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 927
    invoke-virtual {v9, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 928
    invoke-virtual {p0, v9, v6}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 929
    invoke-static {p3, v6, p2}, Lorg/lucasr/twowayview/TwoWayView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v0

    .line 931
    if-ge v0, v1, :cond_5

    .line 934
    invoke-direct {p0, v9}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    move v2, v3

    .line 920
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 939
    :cond_3
    if-ltz v4, :cond_4

    .line 940
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionFromOffset(II)V

    .line 944
    :goto_2
    return-void

    .line 942
    :cond_4
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    goto :goto_2

    :cond_5
    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1805
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1806
    const-class v0, Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1807
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1812
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1813
    const-class v0, Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1815
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 1817
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1818
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 1819
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1823
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1826
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1375
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 1453
    :goto_0
    return v0

    .line 1379
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1380
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v3

    .line 1453
    goto :goto_0

    .line 1382
    :pswitch_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->initOrResetVelocityTracker()V

    .line 1383
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1385
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1386
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v0, :cond_3

    .line 1387
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 1390
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1393
    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v4, :cond_4

    :goto_2
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 1395
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result v0

    .line 1397
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    .line 1398
    const/4 v1, 0x0

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1400
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    move v0, v2

    .line 1401
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1393
    goto :goto_2

    .line 1402
    :cond_5
    if-ltz v0, :cond_2

    .line 1403
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    .line 1404
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    goto :goto_1

    .line 1410
    :pswitch_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-nez v0, :cond_2

    .line 1411
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->initVelocityTrackerIfNotExists()V

    .line 1415
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1417
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1418
    if-gez v0, :cond_6

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 1422
    goto :goto_0

    .line 1426
    :cond_6
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_7

    .line 1427
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1432
    :goto_3
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    add-float/2addr v0, v1

    .line 1433
    float-to-int v1, v0

    .line 1434
    int-to-float v4, v1

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1436
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->maybeStartScrolling(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1437
    goto/16 :goto_0

    .line 1429
    :cond_7
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_3

    .line 1445
    :pswitch_2
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    .line 1446
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1447
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    .line 1448
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto/16 :goto_1

    .line 1380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1773
    invoke-direct {p0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    .line 4007
    if-eqz p1, :cond_1

    .line 4008
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 4009
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4010
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 4009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4013
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->markChildrenDirty()V

    .line 4016
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 4018
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    .line 4020
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4021
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4023
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_2

    .line 4024
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_3

    .line 4025
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 4026
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 4032
    :cond_2
    :goto_1
    return-void

    .line 4028
    :cond_3
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 4029
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3948
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3949
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->useDefaultSelector()V

    .line 3952
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 3953
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 3954
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 3955
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3960
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 3961
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_9

    if-eqz v8, :cond_1

    if-nez v5, :cond_9

    .line 3963
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    invoke-direct {p0, v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 3965
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_6

    move v0, p1

    .line 3968
    :goto_1
    invoke-direct {p0, v6, v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    .line 3970
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3971
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3973
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3974
    iget-object v9, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v9, v6, v3}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3978
    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 3979
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int v7, v6, v1

    .line 3980
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_3

    .line 3981
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int/2addr v7, v1

    .line 3985
    :cond_3
    if-nez v5, :cond_4

    .line 3986
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int v4, v1, v0

    .line 3987
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_4

    .line 3988
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalScrollbarHeight()I

    move-result v0

    add-int/2addr v4, v0

    .line 3992
    :cond_4
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_8

    if-ne v5, v10, :cond_8

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 3993
    invoke-direct/range {v0 .. v5}, Lorg/lucasr/twowayview/TwoWayView;->measureHeightOfChildren(IIIII)I

    move-result v4

    move v6, v4

    .line 3996
    :goto_3
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_7

    if-ne v8, v10, :cond_7

    move-object v0, p0

    move v1, p2

    move v4, v7

    move v5, v3

    .line 3997
    invoke-direct/range {v0 .. v5}, Lorg/lucasr/twowayview/TwoWayView;->measureWidthOfChildren(IIIII)I

    move-result v0

    .line 4000
    :goto_4
    invoke-virtual {p0, v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->setMeasuredDimension(II)V

    .line 4001
    return-void

    .line 3960
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, p2

    .line 3965
    goto :goto_1

    :cond_7
    move v0, v7

    goto :goto_4

    :cond_8
    move v6, v4

    goto :goto_3

    :cond_9
    move v0, v2

    move v1, v2

    goto :goto_2
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1037
    const/4 v1, 0x0

    .line 1039
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eq v2, p2, :cond_1

    .line 1040
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-virtual {p0, v1, p2, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    .line 1041
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 1049
    :goto_0
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 1051
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    .line 1053
    :cond_0
    return-void

    .line 1043
    :cond_1
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eq v2, p1, :cond_2

    .line 1044
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result v1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    .line 1045
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 5823
    check-cast p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5824
    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5826
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 5827
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncSize:J

    .line 5829
    iget-wide v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 5830
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5831
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5832
    iget-wide v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5833
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5834
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5835
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    .line 5851
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 5852
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5855
    :cond_1
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 5856
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 5859
    :cond_2
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkedItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 5861
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    .line 5862
    return-void

    .line 5836
    :cond_3
    iget-wide v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 5837
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 5840
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 5842
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 5843
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5844
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5845
    iget-wide v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5846
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5847
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5848
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 5751
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5752
    new-instance v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;

    invoke-direct {v2, v0}, Lorg/lucasr/twowayview/TwoWayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5754
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    if-eqz v0, :cond_0

    .line 5755
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget-wide v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    iput-wide v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    .line 5756
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget-wide v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    iput-wide v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    .line 5757
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5758
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5759
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    move-object v0, v2

    .line 5818
    :goto_0
    return-object v0

    .line 5764
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 5765
    :goto_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemId()J

    move-result-wide v4

    .line 5766
    iput-wide v4, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    .line 5767
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v3

    iput v3, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    .line 5769
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 5770
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5771
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5772
    iput-wide v8, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    .line 5801
    :goto_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 5802
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cloneCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 5805
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_7

    .line 5806
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 5808
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    .line 5809
    :goto_3
    if-ge v1, v3, :cond_6

    .line 5810
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5809
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v0, v1

    .line 5764
    goto :goto_1

    .line 5773
    :cond_3
    if-eqz v0, :cond_5

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v0, :cond_5

    .line 5786
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5788
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5789
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lt v0, v3, :cond_4

    .line 5790
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 5793
    :cond_4
    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5794
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    goto :goto_2

    .line 5796
    :cond_5
    iput v1, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5797
    iput-wide v8, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    .line 5798
    iput v1, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    goto :goto_2

    .line 5813
    :cond_6
    iput-object v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 5816
    :cond_7
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    iput v0, v2, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkedItemCount:I

    move-object v0, v2

    .line 5818
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/high16 v7, -0x80000000

    const/4 v10, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1458
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1461
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v9

    .line 1736
    :cond_1
    :goto_0
    return v1

    .line 1464
    :cond_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 1470
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->initVelocityTrackerIfNotExists()V

    .line 1471
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1474
    packed-switch v0, :pswitch_data_0

    .line 1732
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1733
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    move v1, v9

    .line 1736
    goto :goto_0

    .line 1476
    :pswitch_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_3

    .line 1477
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1481
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1482
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v0, :cond_5

    .line 1483
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 1486
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1489
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_2
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 1491
    float-to-int v0, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->pointToPosition(II)I

    move-result v0

    .line 1493
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    .line 1494
    iput v10, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1496
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v2, :cond_3

    .line 1497
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 1501
    const/4 v0, 0x3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1502
    invoke-direct {p0, v9}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1503
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result v0

    .line 1509
    :cond_6
    :goto_3
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    goto :goto_1

    :cond_7
    move v0, v3

    .line 1489
    goto :goto_2

    .line 1504
    :cond_8
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ltz v2, :cond_6

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1505
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1506
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->triggerCheckForTap()V

    goto :goto_3

    .line 1515
    :pswitch_1
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1516
    if-gez v0, :cond_9

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1524
    :cond_9
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_b

    .line 1525
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1530
    :goto_4
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v2, :cond_a

    .line 1533
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 1536
    :cond_a
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float v2, v0, v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    add-float/2addr v2, v3

    .line 1537
    float-to-int v3, v2

    .line 1538
    int-to-float v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1540
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1

    .line 1546
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->maybeStartScrolling(I)Z

    goto/16 :goto_1

    .line 1527
    :cond_b
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_4

    .line 1551
    :pswitch_4
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 1552
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->maybeScroll(I)V

    goto/16 :goto_1

    .line 1560
    :pswitch_5
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    .line 1561
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1562
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1564
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1565
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1566
    if-eqz v0, :cond_c

    .line 1567
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1570
    :cond_c
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_d

    .line 1571
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v1, v0

    .line 1574
    :cond_d
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 1579
    :pswitch_6
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    packed-switch v0, :pswitch_data_2

    :goto_5
    :pswitch_7
    move v0, v1

    .line 1718
    :goto_6
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    .line 1719
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    .line 1720
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1722
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_e

    .line 1723
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1726
    :cond_e
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    move v1, v0

    goto/16 :goto_1

    .line 1583
    :pswitch_8
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    .line 1584
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1590
    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v5, :cond_16

    .line 1591
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_15

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_15

    move v0, v9

    .line 1596
    :goto_7
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_14

    if-eqz v0, :cond_14

    .line 1597
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eqz v0, :cond_f

    .line 1598
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1601
    :cond_f
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    if-nez v0, :cond_10

    .line 1602
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    .line 1605
    :cond_10
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    .line 1606
    iput v2, v4, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->mClickMotionPosition:I

    .line 1607
    invoke-virtual {v4}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->rememberWindowAttachCount()V

    .line 1609
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 1611
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-ne v0, v9, :cond_1a

    .line 1612
    :cond_11
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-nez v0, :cond_18

    .line 1613
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    .line 1618
    :goto_8
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1620
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1621
    iput v9, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1623
    invoke-virtual {p0, v9}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1624
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    invoke-direct {p0, v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 1625
    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 1627
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 1628
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1629
    if-eqz v0, :cond_12

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_12

    .line 1630
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 1634
    :cond_12
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 1635
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1638
    :cond_13
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$1;

    invoke-direct {v0, p0, v3, v4}, Lorg/lucasr/twowayview/TwoWayView$1;-><init>(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$PerformClick;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 1654
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1665
    :cond_14
    :goto_9
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1667
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1668
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    move v0, v1

    .line 1670
    goto/16 :goto_6

    :cond_15
    move v0, v1

    .line 1591
    goto/16 :goto_7

    .line 1593
    :cond_16
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_17

    move v0, v9

    goto/16 :goto_7

    :cond_17
    move v0, v1

    goto/16 :goto_7

    .line 1615
    :cond_18
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    goto :goto_8

    .line 1657
    :cond_19
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1658
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    goto :goto_9

    .line 1660
    :cond_1a
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1661
    invoke-virtual {v4}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->run()V

    goto :goto_9

    .line 1674
    :pswitch_9
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1675
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1683
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1b

    .line 1684
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    move v2, v0

    .line 1691
    :goto_a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_22

    .line 1692
    const/4 v0, 0x4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1693
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1695
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_1c

    move v3, v10

    :goto_b
    float-to-int v3, v3

    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v4, :cond_1d

    :goto_c
    float-to-int v4, v2

    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_1e

    move v5, v1

    :goto_d
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_1f

    move v6, v1

    :goto_e
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_20

    :goto_f
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_21

    const v8, 0x7fffffff

    :goto_10
    move v2, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1703
    iput v10, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    move v0, v9

    .line 1704
    goto/16 :goto_6

    .line 1687
    :cond_1b
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    move v2, v0

    goto :goto_a

    :cond_1c
    move v3, v2

    .line 1695
    goto :goto_b

    :cond_1d
    move v2, v10

    goto :goto_c

    :cond_1e
    move v5, v7

    goto :goto_d

    :cond_1f
    const v6, 0x7fffffff

    goto :goto_e

    :cond_20
    move v7, v1

    goto :goto_f

    :cond_21
    move v8, v1

    goto :goto_10

    .line 1706
    :cond_22
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1707
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    move v0, v1

    .line 1710
    goto/16 :goto_6

    .line 1713
    :cond_23
    :pswitch_a
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1714
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto/16 :goto_5

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 1540
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1579
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 1741
    if-eqz p1, :cond_2

    .line 1743
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 1748
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1749
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 1752
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 1764
    :cond_1
    :goto_0
    return-void

    .line 1754
    :cond_2
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1755
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1756
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1757
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v0, :cond_1

    .line 1758
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 1759
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishEdgeGlows()V

    .line 1760
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 997
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 999
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1001
    :goto_0
    if-nez p1, :cond_3

    .line 1002
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1003
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1004
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v3, :cond_0

    .line 1005
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 1006
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishEdgeGlows()V

    .line 1007
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 1011
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1013
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 1032
    :cond_1
    :goto_1
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    .line 1033
    return-void

    :cond_2
    move v0, v2

    .line 999
    goto :goto_0

    .line 1017
    :cond_3
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1019
    if-ne v0, v2, :cond_4

    .line 1021
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    goto :goto_1

    .line 1025
    :cond_4
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 1026
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1027
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    goto :goto_1
.end method

.method pageScroll(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1900
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 1903
    const/4 v2, -0x1

    .line 1905
    const/16 v3, 0x21

    if-eq p1, v3, :cond_0

    const/16 v3, 0x11

    if-ne p1, v3, :cond_2

    .line 1906
    :cond_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v0

    .line 1912
    :goto_0
    if-gez v2, :cond_4

    .line 1939
    :cond_1
    :goto_1
    return v0

    .line 1907
    :cond_2
    const/16 v3, 0x82

    if-eq p1, v3, :cond_3

    const/16 v3, 0x42

    if-ne p1, v3, :cond_8

    .line 1908
    :cond_3
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    .line 1909
    goto :goto_0

    .line 1916
    :cond_4
    invoke-direct {p0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1917
    if-ltz v2, :cond_1

    .line 1918
    const/4 v0, 0x4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1919
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 1921
    if-eqz v3, :cond_5

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    sub-int/2addr v0, v4

    if-le v2, v0, :cond_5

    .line 1922
    const/4 v0, 0x3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1925
    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 1926
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1929
    :cond_6
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1930
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    .line 1932
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1933
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    :cond_7
    move v0, v1

    .line 1936
    goto :goto_1

    :cond_8
    move v3, v0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1831
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1853
    :goto_0
    return v0

    .line 1835
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1853
    goto :goto_0

    .line 1837
    :sswitch_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1839
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1842
    goto :goto_0

    .line 1845
    :sswitch_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v2, :cond_2

    .line 1847
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1850
    goto :goto_0

    .line 1835
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5650
    .line 5652
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v3, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->MULTIPLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v2, v3, :cond_6

    .line 5653
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 5654
    :cond_0
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5656
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5657
    if-eqz v0, :cond_4

    .line 5658
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5664
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 5665
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 5690
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 5691
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateOnScreenCheckedViews()V

    .line 5694
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 5660
    :cond_4
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 5667
    :cond_5
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    .line 5671
    :cond_6
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v3, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->SINGLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v2, v3, :cond_b

    .line 5672
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v1

    .line 5673
    :goto_2
    if-eqz v2, :cond_9

    .line 5674
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5675
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5677
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5678
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 5679
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5682
    :cond_7
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    :cond_8
    move v2, v0

    .line 5672
    goto :goto_2

    .line 5683
    :cond_9
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5684
    :cond_a
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    :cond_b
    move v1, v0

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 4

    .prologue
    .line 1092
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1093
    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1095
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 1099
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1100
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1103
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1105
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 1110
    :goto_1
    return v0

    .line 1099
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1110
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 4300
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 1366
    if-eqz p1, :cond_0

    .line 1367
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    .line 1370
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1371
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3768
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 3769
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 3771
    :cond_0
    return-void
.end method

.method resetState()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 5565
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5567
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->removeAllViewsInLayout()V

    .line 5569
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 5570
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5571
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 5572
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5573
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5574
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 5575
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 5577
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 5579
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 5580
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 5582
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 5583
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5585
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 5586
    return-void
.end method

.method resurrectSelection()Z
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 4639
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v9

    .line 4640
    if-gtz v9, :cond_1

    .line 4740
    :cond_0
    :goto_0
    return v2

    .line 4647
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v5

    .line 4648
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v7

    .line 4650
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4651
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 4654
    if-lt v3, v4, :cond_4

    add-int v0, v4, v9

    if-ge v3, v0, :cond_4

    .line 4655
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4658
    invoke-direct {p0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 4660
    invoke-direct {p0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v9

    .line 4663
    if-ge v0, v5, :cond_2

    .line 4664
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v0

    move v0, v1

    .line 4721
    :goto_1
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 4723
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 4725
    iput v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 4726
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 4728
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 4730
    invoke-direct {p0, v3, v0}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 4731
    if-lt v0, v4, :cond_b

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_b

    .line 4732
    const/4 v3, 0x4

    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4733
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 4734
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 4735
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    .line 4740
    :goto_2
    if-ltz v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4665
    :cond_2
    if-le v9, v7, :cond_3

    .line 4666
    invoke-direct {p0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result v0

    sub-int v0, v7, v0

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_3
    move v5, v0

    move v0, v1

    .line 4668
    goto :goto_1

    :cond_4
    if-ge v3, v4, :cond_8

    move v7, v2

    move v0, v2

    .line 4672
    :goto_3
    if-ge v7, v9, :cond_7

    .line 4673
    invoke-virtual {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4674
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 4676
    if-nez v7, :cond_10

    .line 4681
    if-gtz v4, :cond_5

    if-ge v3, v5, :cond_f

    .line 4684
    :cond_5
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v3

    .line 4688
    :goto_4
    if-lt v3, v0, :cond_6

    .line 4690
    add-int v0, v4, v7

    move v5, v3

    move v3, v0

    move v0, v1

    .line 4692
    goto :goto_1

    .line 4672
    :cond_6
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_3

    :cond_7
    move v3, v4

    move v5, v0

    move v0, v1

    goto :goto_1

    .line 4696
    :cond_8
    iget v10, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 4697
    add-int v0, v4, v9

    add-int/lit8 v0, v0, -0x1

    .line 4700
    add-int/lit8 v3, v9, -0x1

    move v8, v3

    move v5, v2

    :goto_5
    if-ltz v8, :cond_e

    .line 4701
    invoke-virtual {p0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4702
    invoke-direct {p0, v11}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    .line 4703
    invoke-direct {p0, v11}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v11

    .line 4705
    add-int/lit8 v12, v9, -0x1

    if-ne v8, v12, :cond_d

    .line 4708
    add-int v5, v4, v9

    if-lt v5, v10, :cond_9

    if-le v11, v7, :cond_c

    .line 4709
    :cond_9
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v5

    sub-int v5, v7, v5

    move v7, v3

    .line 4713
    :goto_6
    if-gt v11, v5, :cond_a

    .line 4714
    add-int v0, v4, v8

    move v5, v3

    move v3, v0

    move v0, v2

    .line 4716
    goto/16 :goto_1

    .line 4700
    :cond_a
    add-int/lit8 v3, v8, -0x1

    move v8, v3

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_5

    :cond_b
    move v0, v6

    .line 4737
    goto :goto_2

    :cond_c
    move v5, v7

    move v7, v3

    goto :goto_6

    :cond_d
    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_6

    :cond_e
    move v3, v0

    move v0, v2

    goto/16 :goto_1

    :cond_f
    move v0, v5

    move v5, v3

    goto :goto_4

    :cond_10
    move v13, v5

    move v5, v0

    move v0, v13

    goto :goto_4
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 4748
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4749
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 4750
    const/4 v0, 0x1

    .line 4753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollBy(I)V
    .locals 1

    .prologue
    .line 3820
    neg-int v0, p1

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    .line 3821
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    .prologue
    .line 1786
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1787
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result v0

    .line 1788
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v1

    .line 1790
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1794
    :cond_0
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1795
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventToIndex:I

    .line 1799
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V

    .line 778
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 780
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    .line 781
    iput-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 784
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 786
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 790
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 794
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 795
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 796
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 798
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 799
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 801
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->setViewTypeCount(I)V

    .line 803
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    .line 804
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 806
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_3

    .line 807
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 810
    :cond_3
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result v0

    .line 811
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 812
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 814
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-nez v0, :cond_4

    .line 815
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    .line 825
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V

    .line 826
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    .line 827
    return-void

    .line 818
    :cond_5
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 819
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    .line 820
    iput-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 822
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setChoiceMode(Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;)V
    .locals 2

    .prologue
    .line 753
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    .line 755
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_1

    .line 756
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 764
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 490
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    .line 491
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 6251
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 6252
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    .line 6253
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateEmptyStatus()V

    .line 6254
    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6258
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6259
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 6261
    :goto_0
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    .line 6262
    if-nez p1, :cond_1

    .line 6263
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    .line 6266
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6267
    return-void

    :cond_2
    move v0, v1

    .line 6259
    goto :goto_0

    :cond_3
    move v2, v1

    .line 6266
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6271
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6272
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 6274
    :goto_0
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    .line 6275
    if-eqz p1, :cond_1

    .line 6276
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    .line 6279
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6280
    return-void

    :cond_2
    move v0, v1

    .line 6272
    goto :goto_0

    :cond_3
    move v2, v1

    .line 6279
    goto :goto_1
.end method

.method public setItemChecked(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 658
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v3, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v3, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v3, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->MULTIPLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v3, :cond_6

    .line 663
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 664
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 666
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    if-eqz p2, :cond_4

    .line 668
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 674
    :cond_2
    :goto_1
    if-eq v0, p2, :cond_3

    .line 675
    if-eqz p2, :cond_5

    .line 676
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 710
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 711
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 712
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->rememberSyncState()V

    .line 713
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    goto :goto_0

    .line 670
    :cond_4
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 678
    :cond_5
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2

    .line 682
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 686
    :goto_3
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 687
    :cond_7
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 689
    if-eqz v0, :cond_8

    .line 690
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 696
    :cond_8
    if-eqz p2, :cond_b

    .line 697
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 699
    if-eqz v0, :cond_9

    .line 700
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 703
    :cond_9
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2

    :cond_a
    move v0, v2

    .line 682
    goto :goto_3

    .line 704
    :cond_b
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 705
    :cond_c
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2
.end method

.method public setItemMargin(I)V
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    if-ne v0, p1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    .line 423
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    goto :goto_0
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    .prologue
    .line 439
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    .line 440
    if-nez p1, :cond_0

    .line 441
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setDescendantFocusability(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    .line 461
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    .line 462
    return-void
.end method

.method public setOrientation(Lorg/lucasr/twowayview/TwoWayView$Orientation;)V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 401
    :goto_0
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-ne v1, v0, :cond_1

    .line 411
    :goto_1
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_1
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    .line 407
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V

    .line 408
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 410
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    goto :goto_1
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1076
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 1077
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 1078
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1080
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1081
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1088
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    goto :goto_0

    .line 1084
    :cond_2
    iput-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1085
    iput-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_1
.end method

.method public setRecyclerListener(Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    # setter for: Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;
    invoke-static {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->access$102(Lorg/lucasr/twowayview/TwoWayView$RecycleBin;Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    .line 477
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 3784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionFromOffset(II)V

    .line 3785
    return-void
.end method

.method public setSelectionFromOffset(II)V
    .locals 2

    .prologue
    .line 3788
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 3817
    :cond_0
    :goto_0
    return-void

    .line 3792
    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3793
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result p1

    .line 3794
    if-ltz p1, :cond_2

    .line 3795
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 3801
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 3802
    const/4 v0, 0x4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 3804
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_5

    .line 3805
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 3810
    :goto_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 3811
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 3812
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 3815
    :cond_3
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    goto :goto_0

    .line 3798
    :cond_4
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    goto :goto_1

    .line 3807
    :cond_5
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    goto :goto_2
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 503
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 515
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_0
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 519
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 520
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 522
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 523
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 524
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1340
    if-ltz v3, :cond_1

    .line 1341
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1344
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    .line 1346
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1350
    :goto_0
    if-nez v0, :cond_0

    .line 1351
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1355
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1361
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3897
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3898
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    .line 3899
    add-int v3, v0, v2

    .line 3900
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v4

    .line 3901
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v5

    .line 3903
    if-eqz p1, :cond_1

    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    if-ne v0, v5, :cond_2

    if-lez p1, :cond_2

    .line 3907
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 3921
    :goto_0
    return-void

    .line 3909
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_3

    move v3, v1

    :goto_1
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_4

    neg-int v4, p1

    :goto_2
    move v2, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3914
    const/4 v0, 0x0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 3916
    const/4 v0, 0x4

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 3917
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 3919
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 3909
    :cond_3
    neg-int v3, p1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .prologue
    .line 3829
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3830
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3832
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V

    .line 3833
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    .prologue
    .line 3884
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3885
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3887
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(II)V

    .line 3888
    return-void
.end method

.method public smoothScrollToPositionFromOffset(II)V
    .locals 1

    .prologue
    .line 3867
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3868
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3870
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(II)V

    .line 3871
    return-void
.end method

.method public smoothScrollToPositionFromOffset(III)V
    .locals 1

    .prologue
    .line 3849
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3850
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3852
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(III)V

    .line 3853
    return-void
.end method
