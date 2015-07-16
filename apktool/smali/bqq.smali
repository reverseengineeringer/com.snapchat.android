.class public final Lbqq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lbqz;

.field final b:Lbqu;

.field final c:Lbqw;

.field private final d:Lbqr;


# direct methods
.method public constructor <init>(Lbqr;Lbqu;Lbqz;Lbqw;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbqq;->d:Lbqr;

    .line 27
    iput-object p2, p0, Lbqq;->b:Lbqu;

    .line 28
    iput-object p3, p0, Lbqq;->a:Lbqz;

    .line 29
    iput-object p4, p0, Lbqq;->c:Lbqw;

    .line 30
    return-void
.end method

.method static a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 153
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 154
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 155
    iget-object v0, p0, Lbqq;->a:Lbqz;

    invoke-interface {v0, p1}, Lbqz;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p2}, Lbqw;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v5, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    if-le v0, v5, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v3

    .line 159
    :goto_2
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v0, v5, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    if-le v0, v5, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_1

    .line 153
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(I)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    move v0, v1

    :goto_0
    iget-object v3, p0, Lbqq;->d:Lbqr;

    invoke-interface {v3}, Lbqr;->a()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lbqq;->d:Lbqr;

    invoke-interface {v3, v0}, Lbqr;->e(I)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    :goto_1
    if-ne v0, p1, :cond_3

    move v1, v2

    .line 49
    :cond_0
    :goto_2
    return v1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, p0, Lbqq;->d:Lbqr;

    invoke-interface {v0, p1}, Lbqr;->e(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    if-ltz p1, :cond_4

    iget-object v0, p0, Lbqq;->d:Lbqr;

    invoke-interface {v0}, Lbqr;->a()I

    move-result v0

    if-lt p1, v0, :cond_5

    :cond_4
    move v0, v2

    :goto_3
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lbqq;->d:Lbqr;

    invoke-interface {v0, p1}, Lbqr;->e(I)J

    move-result-wide v4

    iget-object v0, p0, Lbqq;->d:Lbqr;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Lbqr;->e(I)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v1

    .line 45
    goto :goto_3
.end method
