.class public final Laj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_1
    if-nez p5, :cond_2

    .line 65
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v0

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1, p3}, Lah;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lah;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 69
    invoke-virtual {p1}, Lah;->e()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;ZZ)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$h;->l()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 37
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 38
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 41
    :goto_1
    if-eqz p5, :cond_0

    .line 44
    invoke-virtual {p1, p3}, Lah;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, p2}, Lah;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 46
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 47
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 49
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lah;->b()I

    move-result v1

    invoke-virtual {p1, p2}, Lah;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method public static b(Landroid/support/v7/widget/RecyclerView$p;Lah;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$h;Z)I
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$h;->l()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    .line 83
    :cond_1
    if-nez p5, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1, p3}, Lah;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lah;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 89
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 92
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method
