.class public final Lbpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpt;


# instance fields
.field private final a:Lbpq;

.field private final b:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbpy;


# direct methods
.method public constructor <init>(Lbpq;Lbpy;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lbpu;->b:Landroid/support/v4/util/LongSparseArray;

    .line 23
    iput-object p1, p0, Lbpu;->a:Lbpq;

    .line 24
    iput-object p2, p0, Lbpu;->c:Lbpy;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 29
    iget-object v0, p0, Lbpu;->a:Lbpq;

    invoke-interface {v0, p2}, Lbpq;->e(I)J

    move-result-wide v4

    .line 31
    iget-object v0, p0, Lbpu;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v2, v0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v4, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v1

    sget-object v3, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/View;

    .line 32
    if-nez v0, :cond_2

    .line 34
    iget-object v0, p0, Lbpu;->a:Lbpq;

    invoke-interface {v0, p1}, Lbpq;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lbpu;->a:Lbpq;

    invoke-interface {v1, v0, p2}, Lbpq;->c(Landroid/support/v7/widget/RecyclerView$s;I)V

    .line 36
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lbpu;->c:Lbpy;

    invoke-interface {v0, p1}, Lbpy;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 46
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 47
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v3, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 57
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2, v7, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 59
    iget-object v0, p0, Lbpu;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v2

    .line 61
    :cond_2
    return-object v0

    .line 31
    :cond_3
    iget-object v0, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 50
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method
