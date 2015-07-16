.class public final Lbgd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/ListView;)Z
    .locals 3
    .param p0    # Landroid/widget/ListView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/widget/ListView;)Z
    .locals 4
    .param p0    # Landroid/widget/ListView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
