.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/util/SparseIntArray;

.field private d:Lbr;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/view/MotionEvent;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/AbsListView$OnScrollListener;

.field private l:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    .line 72
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    .line 77
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    .line 82
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->k:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    .line 229
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->l:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 230
    return-void
.end method

.method static synthetic b(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getFirstVisiblePosition()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->computeVerticalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Z

    iget-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Z

    invoke-interface {v0, v2, v3, v4}, Lbr;->a(IZZ)V

    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Z

    :cond_3
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    if-ge v0, v1, :cond_5

    sget v0, Lbs;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    :goto_1
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    if-ge v0, v1, :cond_6

    sget v0, Lbs;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    goto :goto_1

    :cond_6
    sget v0, Lbs;->a:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    goto :goto_1
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 115
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Z

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->f:Z

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    .line 88
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    .line 89
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    .line 90
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    .line 91
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 92
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcelable;B)V

    .line 98
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->a:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    .line 99
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->b:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    .line 100
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->c:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 101
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 129
    :pswitch_0
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Z

    .line 130
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->g:Z

    .line 131
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->e:I

    invoke-interface {v0, v1}, Lbr;->a(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 135
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Landroid/view/MotionEvent;

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 138
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->i:Landroid/view/MotionEvent;

    .line 139
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getCurrentScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 144
    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_2
    move-object v0, p0

    move v4, v3

    .line 159
    :goto_3
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_3

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_2

    .line 163
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 166
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->h:Z

    .line 172
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 176
    new-instance v3, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$2;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 182
    goto/16 :goto_1

    .line 187
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->k:Landroid/widget/AbsListView$OnScrollListener;

    .line 200
    return-void
.end method

.method public setScrollViewCallbacks(Lbr;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->d:Lbr;

    .line 205
    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->j:Landroid/view/ViewGroup;

    .line 210
    return-void
.end method
