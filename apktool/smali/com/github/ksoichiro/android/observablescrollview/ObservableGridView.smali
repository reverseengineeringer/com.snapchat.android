.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/util/SparseIntArray;

.field private g:Lbr;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/view/MotionEvent;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    .line 53
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 75
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    .line 53
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 80
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    .line 53
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;

    invoke-direct {v0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 85
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->n:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    .line 233
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 234
    return-void
.end method

.method static synthetic b(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getFirstVisiblePosition()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getLastVisiblePosition()I

    move-result v4

    if-gt v2, v4, :cond_2

    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    if-ge v0, v3, :cond_a

    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    sub-int v0, v3, v0

    if-eq v0, v6, :cond_4

    add-int/lit8 v0, v3, -0x1

    move v2, v1

    :goto_1
    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    if-le v0, v5, :cond_5

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v2, v5

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :cond_5
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    :cond_6
    :goto_2
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    if-gez v0, :cond_7

    iput v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    :cond_7
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    iput v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->i:Z

    iget-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->j:Z

    invoke-interface {v0, v2, v3, v4}, Lbr;->a(IZZ)V

    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->i:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->i:Z

    :cond_8
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->d:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    if-ge v0, v1, :cond_f

    sget v0, Lbs;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->h:I

    :goto_3
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->d:I

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    if-ge v3, v0, :cond_e

    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    sub-int/2addr v0, v3

    if-eq v0, v6, :cond_c

    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    :goto_4
    if-le v2, v3, :cond_d

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v0, v5

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_c
    move v0, v1

    :cond_d
    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    sub-int v0, v2, v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    goto :goto_2

    :cond_e
    if-nez v3, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    goto :goto_2

    :cond_f
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->d:I

    if-ge v0, v1, :cond_10

    sget v0, Lbs;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->h:I

    goto :goto_3

    :cond_10
    sget v0, Lbs;->a:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->h:I

    goto :goto_3
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->j:Z

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->i:Z

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 90
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;

    .line 91
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->a:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    .line 92
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    .line 93
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    .line 94
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->d:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->d:I

    .line 95
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    .line 96
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 98
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;-><init>(Landroid/os/Parcelable;B)V

    .line 104
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->a:I

    .line 105
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    .line 106
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->c:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->c:I

    .line 107
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->d:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->d:I

    .line 108
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->e:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->e:I

    .line 109
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->f:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 110
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 138
    :pswitch_0
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->k:Z

    .line 139
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->j:Z

    .line 140
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->h:I

    invoke-interface {v0, v1}, Lbr;->a(I)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->l:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 144
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->l:Landroid/view/MotionEvent;

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->l:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 147
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->l:Landroid/view/MotionEvent;

    .line 148
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getCurrentScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->k:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 153
    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_2
    move-object v0, p0

    move v4, v3

    .line 168
    :goto_3
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_3

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->m:Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_2

    .line 172
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->k:Z

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 185
    new-instance v3, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$2;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 191
    goto/16 :goto_1

    .line 196
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 135
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
    .line 208
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 209
    return-void
.end method

.method public setScrollViewCallbacks(Lbr;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->g:Lbr;

    .line 214
    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->m:Landroid/view/ViewGroup;

    .line 219
    return-void
.end method
