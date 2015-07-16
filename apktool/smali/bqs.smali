.class public final Lbqs;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "SourceFile"


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lbqr;

.field private final c:Lbqu;

.field private final d:Lbqz;

.field private final e:Lbqq;

.field private final f:Lbqx;

.field private final g:Lbqw;


# direct methods
.method public constructor <init>(Lbqr;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lbqy;

    invoke-direct {v0}, Lbqy;-><init>()V

    new-instance v1, Lbqw;

    invoke-direct {v1}, Lbqw;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lbqs;-><init>(Lbqr;Lbqz;Lbqw;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lbqr;Lbqx;Lbqz;Lbqw;Lbqu;Lbqq;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbqs;->a:Landroid/util/SparseArray;

    .line 55
    iput-object p1, p0, Lbqs;->b:Lbqr;

    .line 56
    iput-object p5, p0, Lbqs;->c:Lbqu;

    .line 57
    iput-object p3, p0, Lbqs;->d:Lbqz;

    .line 58
    iput-object p2, p0, Lbqs;->f:Lbqx;

    .line 59
    iput-object p4, p0, Lbqs;->g:Lbqw;

    .line 60
    iput-object p6, p0, Lbqs;->e:Lbqq;

    .line 61
    return-void
.end method

.method private constructor <init>(Lbqr;Lbqz;Lbqw;)V
    .locals 6

    .prologue
    .line 35
    new-instance v4, Lbqx;

    invoke-direct {v4, p2}, Lbqx;-><init>(Lbqz;)V

    new-instance v5, Lbqv;

    invoke-direct {v5, p1, p2}, Lbqv;-><init>(Lbqr;Lbqz;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lbqs;-><init>(Lbqr;Lbqz;Lbqw;Lbqx;Lbqu;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lbqr;Lbqz;Lbqw;Lbqx;Lbqu;)V
    .locals 7

    .prologue
    .line 44
    new-instance v6, Lbqq;

    invoke-direct {v6, p1, p5, p2, p3}, Lbqq;-><init>(Lbqr;Lbqu;Lbqz;Lbqw;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbqs;-><init>(Lbqr;Lbqx;Lbqz;Lbqw;Lbqu;Lbqq;)V

    .line 47
    return-void
.end method

.method private a(II)Z
    .locals 4

    .prologue
    .line 112
    if-gtz p1, :cond_0

    iget-object v0, p0, Lbqs;->b:Lbqr;

    invoke-interface {v0, p2}, Lbqr;->e(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbqs;->c:Lbqu;

    invoke-interface {v0, p1, p2}, Lbqu;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 11

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 92
    iget-object v0, p0, Lbqs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 94
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbqs;->b:Lbqr;

    invoke-interface {v0}, Lbqr;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 100
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v4

    .line 101
    invoke-direct {p0, v0, v4}, Lbqs;->a(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbqs;->e:Lbqq;

    invoke-virtual {v1, v4}, Lbqq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    :cond_2
    iget-object v1, p0, Lbqs;->c:Lbqu;

    invoke-interface {v1, p2, v4}, Lbqu;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v5

    .line 103
    iget-object v6, p0, Lbqs;->e:Lbqq;

    invoke-direct {p0, v0, v4}, Lbqs;->a(II)Z

    move-result v7

    iget-object v1, v6, Lbqq;->a:Lbqz;

    invoke-interface {v1, p2}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    invoke-static {v5}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-static {p2}, Lbqq;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-direct {v3, v2, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v7, :cond_3

    invoke-virtual {v6, p2, v5}, Lbqq;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v6, v2}, Lbqq;->a(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v6, Lbqq;->b:Lbqu;

    invoke-interface {v7, p2, v2}, Lbqu;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v5}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v6, Lbqq;->a:Lbqz;

    invoke-interface {v9, p2}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v7

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v7

    if-ge v1, v2, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v6, p2, v5}, Lbqq;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v2

    iget-object v7, v6, Lbqq;->b:Lbqu;

    invoke-interface {v7, p2, v2}, Lbqu;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v2

    iget-object v6, v6, Lbqq;->a:Lbqz;

    invoke-interface {v6, p2}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    invoke-static {v2}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v5}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_9

    invoke-static {p2}, Lbqq;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v9

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v6

    if-ge v1, v6, :cond_3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 105
    :cond_3
    :goto_3
    iget-object v1, p0, Lbqs;->f:Lbqx;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$h;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v5}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v1, v1, Lbqx;->b:Lbqz;

    invoke-interface {v1, p2}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v1, v6, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_4
    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    iget-object v1, p0, Lbqs;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 103
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {p2}, Lbqq;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v9

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v7

    iget v7, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v7

    if-ge v1, v2, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-static {p2}, Lbqq;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v9

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v6

    if-ge v1, v6, :cond_3

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 105
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v9, v2

    invoke-direct {v1, v6, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_4
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 66
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    .line 67
    iget-object v1, p0, Lbqs;->e:Lbqq;

    invoke-virtual {v1, v0}, Lbqq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, p3, v0}, Lbqs;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lbqs;->d:Lbqz;

    invoke-interface {v1, p3}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    invoke-static {v0}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method
