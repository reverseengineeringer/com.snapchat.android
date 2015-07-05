.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private f()V
    .locals 3

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1956
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1957
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2, v0}, Lah;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 1958
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1961
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1962
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 1965
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1990
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1991
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2, v0}, Lah;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 1992
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1995
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1996
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 1999
    :cond_0
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 1969
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1970
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 1973
    :goto_0
    return v0

    .line 1972
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()V

    .line 1973
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_0
.end method

.method final a(I)I
    .locals 2

    .prologue
    .line 1944
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1945
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 1951
    :cond_0
    :goto_0
    return p1

    .line 1947
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f()V

    .line 1951
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2011
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2012
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2013
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2014
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2015
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2016
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2018
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2019
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v1, p1}, Lah;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2021
    :cond_2
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 2003
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2004
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2007
    :goto_0
    return v0

    .line 2006
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->g()V

    .line 2007
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    goto :goto_0
.end method

.method final b(I)I
    .locals 2

    .prologue
    .line 1977
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1978
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 1985
    :cond_0
    :goto_0
    return p1

    .line 1980
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1981
    if-eqz v0, :cond_0

    .line 1984
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->g()V

    .line 1985
    iget p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2024
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2025
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2026
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2028
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2029
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2031
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2032
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v1, p1}, Lah;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2034
    :cond_2
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2059
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2060
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2061
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2062
    return-void
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 2070
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2071
    return-void
.end method

.method final d()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2075
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2076
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2077
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2078
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2079
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v3, v0}, Lah;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2081
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 2082
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2084
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2085
    return-void
.end method

.method final d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2109
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    if-eq v0, v1, :cond_0

    .line 2110
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2112
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    if-eq v0, v1, :cond_1

    .line 2113
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2115
    :cond_1
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2088
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2089
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2090
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroid/support/v7/widget/StaggeredGridLayoutManager$b;

    .line 2091
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2092
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2094
    :cond_0
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2095
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lah;

    invoke-virtual {v2, v0}, Lah;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2097
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2098
    return-void
.end method
