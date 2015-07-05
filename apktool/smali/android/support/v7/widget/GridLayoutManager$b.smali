.class public abstract Landroid/support/v7/widget/GridLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(II)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v4

    .line 651
    if-ne v4, p2, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 657
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_3

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-ge v5, p1, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 659
    :goto_2
    if-ltz v0, :cond_8

    .line 660
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 661
    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v3, v0

    .line 664
    :goto_4
    if-ge v3, p1, :cond_7

    .line 665
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v0

    .line 666
    add-int/2addr v2, v0

    .line 667
    if-ne v2, p2, :cond_6

    move v0, v1

    .line 664
    :cond_4
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 658
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 669
    :cond_6
    if-gt v2, p2, :cond_4

    move v0, v2

    goto :goto_5

    .line 674
    :cond_7
    add-int v0, v2, v4

    if-gt v0, p2, :cond_0

    move v1, v2

    .line 675
    goto :goto_0

    :cond_8
    move v0, v1

    move v2, v1

    goto :goto_3
.end method

.method final b(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 614
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->b:Z

    if-nez v0, :cond_1

    .line 615
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(II)I

    move-result v0

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 618
    if-ne v0, v1, :cond_0

    .line 621
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$b;->a(II)I

    move-result v0

    .line 622
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public final c(II)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 711
    .line 713
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v5

    move v4, v2

    move v0, v2

    move v3, v2

    .line 714
    :goto_0
    if-ge v4, p1, :cond_1

    .line 715
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v1

    .line 716
    add-int/2addr v3, v1

    .line 717
    if-ne v3, p2, :cond_0

    .line 719
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 714
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 720
    :cond_0
    if-le v3, p2, :cond_3

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 726
    :cond_1
    add-int v1, v3, v5

    if-le v1, p2, :cond_2

    .line 727
    add-int/lit8 v0, v0, 0x1

    .line 729
    :cond_2
    return v0

    :cond_3
    move v1, v3

    goto :goto_1
.end method
