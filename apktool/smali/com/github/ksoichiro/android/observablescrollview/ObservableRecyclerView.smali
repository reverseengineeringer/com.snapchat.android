.class public Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;
    }
.end annotation


# instance fields
.field private A:Landroid/view/MotionEvent;

.field private B:Landroid/view/ViewGroup;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/util/SparseIntArray;

.field private v:Lbr;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 56
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->j()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 61
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->j()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 66
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->j()V

    .line 67
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    .line 313
    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->y:Z

    iput-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->x:Z

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    .line 72
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    .line 73
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 74
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    .line 75
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->s:I

    .line 76
    iget v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->f:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    .line 77
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    .line 78
    iget-object v0, p1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->h:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 79
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;B)V

    .line 85
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 86
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 87
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    .line 88
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->s:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    .line 89
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    iput v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->f:I

    .line 90
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    .line 91
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 97
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 99
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->c(Landroid/view/View;)I

    move-result v3

    .line 100
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->c(Landroid/view/View;)I

    move-result v4

    move v0, v1

    move v2, v3

    .line 101
    :goto_0
    if-gt v2, v4, :cond_2

    .line 102
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_9

    .line 109
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    if-ge v0, v3, :cond_a

    .line 112
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    sub-int v0, v3, v0

    if-eq v0, v7, :cond_4

    .line 113
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    move v0, v1

    :goto_1
    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    if-le v2, v5, :cond_5

    .line 114
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 113
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_2

    :cond_4
    move v0, v1

    .line 124
    :cond_5
    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    iget v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 146
    :cond_6
    :goto_3
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    if-gez v0, :cond_7

    .line 147
    iput v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    .line 149
    :cond_7
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    .line 150
    iput v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    .line 152
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    iget-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->x:Z

    iget-boolean v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->y:Z

    invoke-interface {v0, v2, v3, v4}, Lbr;->a(IZZ)V

    .line 153
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->x:Z

    if-eqz v0, :cond_8

    .line 154
    iput-boolean v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->x:Z

    .line 157
    :cond_8
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->s:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    if-ge v0, v1, :cond_f

    .line 159
    sget v0, Lbs;->b:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->w:I

    .line 166
    :goto_4
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->s:I

    .line 170
    :cond_9
    return-void

    .line 126
    :cond_a
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    if-ge v3, v0, :cond_e

    .line 129
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    sub-int/2addr v0, v3

    if-eq v0, v7, :cond_c

    .line 130
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->p:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    :goto_5
    if-le v2, v3, :cond_d

    .line 131
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_b

    .line 132
    iget-object v5, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->u:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 130
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 137
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_6

    :cond_c
    move v0, v1

    .line 141
    :cond_d
    iget v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    sub-int v0, v2, v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->r:I

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    goto :goto_3

    .line 143
    :cond_e
    if-nez v3, :cond_6

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->q:I

    goto :goto_3

    .line 160
    :cond_f
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->t:I

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->s:I

    if-ge v0, v1, :cond_10

    .line 162
    sget v0, Lbs;->c:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->w:I

    goto :goto_4

    .line 164
    :cond_10
    sget v0, Lbs;->a:I

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->w:I

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 197
    :pswitch_0
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->z:Z

    .line 198
    iput-boolean v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->y:Z

    .line 199
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    iget v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->w:I

    invoke-interface {v0, v1}, Lbr;->a(I)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->A:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 203
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->A:Landroid/view/MotionEvent;

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->A:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 206
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->A:Landroid/view/MotionEvent;

    .line 207
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getCurrentScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 210
    iget-boolean v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->z:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 212
    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->B:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    :goto_2
    move-object v0, p0

    move v4, v3

    .line 227
    :goto_3
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_3

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->B:Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_2

    .line 231
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->z:Z

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 244
    new-instance v3, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;-><init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 250
    goto/16 :goto_1

    .line 255
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollViewCallbacks(Lbr;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->v:Lbr;

    .line 266
    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->B:Landroid/view/ViewGroup;

    .line 271
    return-void
.end method
