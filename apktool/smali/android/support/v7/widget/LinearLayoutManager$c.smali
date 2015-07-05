.class final Landroid/support/v7/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->a:Z

    .line 1778
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->h:I

    .line 1785
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView$l;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1807
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1808
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_0
    if-ge v5, v6, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->i:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v2

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    sub-int/2addr v2, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    mul-int/2addr v2, v7

    if-ltz v2, :cond_5

    if-ge v2, v1, :cond_5

    if-eqz v2, :cond_2

    move-object v1, v0

    move v0, v2

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    .line 1812
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v4

    .line 1808
    goto :goto_2

    .line 1810
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$l;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1811
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    goto :goto_2

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$p;)Z
    .locals 2

    .prologue
    .line 1797
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
