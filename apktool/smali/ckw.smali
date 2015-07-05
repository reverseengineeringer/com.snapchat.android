.class public final Lckw;
.super Lckx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcks;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lckx;-><init>(Lcks;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;)F
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 28
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    const/4 v0, 0x0

    .line 43
    :goto_1
    return v0

    .line 26
    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    .line 33
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    .line 35
    div-int v1, v2, v1

    .line 37
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v2

    .line 38
    sub-int v1, v2, v1

    .line 39
    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 41
    sub-int/2addr v0, v2

    .line 43
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method
