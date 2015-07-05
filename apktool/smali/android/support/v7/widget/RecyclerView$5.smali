.class final Landroid/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lac$b;)V
    .locals 3

    .prologue
    .line 441
    iget v0, p1, Lac$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iget v1, p1, Lac$b;->b:I

    iget v2, p1, Lac$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->a(II)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iget v1, p1, Lac$b;->b:I

    iget v2, p1, Lac$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->b(II)V

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iget v1, p1, Lac$b;->b:I

    iget v2, p1, Lac$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->c(II)V

    goto :goto_0

    .line 452
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    iget v1, p1, Lac$b;->b:I

    iget v2, p1, Lac$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$h;->d(II)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$p;->g:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$p;->g:I

    .line 421
    return-void
.end method

.method public final a(Lac$b;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->c(Lac$b;)V

    .line 438
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 427
    return-void
.end method

.method public final b(Lac$b;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->c(Lac$b;)V

    .line 460
    return-void
.end method

.method public final c(II)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 431
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v4

    add-int v5, p1, p2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0, v2}, Lad;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v6, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v7, p1, :cond_1

    iget v7, v6, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-ge v7, v5, :cond_1

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    add-int v3, p1, p2

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_4

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v5

    if-lt v5, p1, :cond_3

    if-ge v5, v3, :cond_3

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 432
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 433
    return-void
.end method

.method public final d(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 464
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v1}, Lad;->b()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v4, v1}, Lad;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v5, p1, :cond_0

    invoke-virtual {v4, p2, v0}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v6, v4, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v1, v3, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v5

    if-lt v5, p1, :cond_2

    invoke-virtual {v0, p2, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 466
    return-void
.end method

.method public final e(II)V
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 470
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->b()I

    move-result v8

    if-ge p1, p2, :cond_1

    move v0, v1

    move v3, p2

    move v4, p1

    :goto_0
    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v9, v5}, Lad;->c(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v10, v4, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-gt v10, v3, :cond_0

    iget v10, v9, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    :goto_2
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v2, v9, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v0, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    goto :goto_2

    :cond_3
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$l;

    if-ge p1, p2, :cond_5

    move v3, p2

    move v4, p1

    :goto_3
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v6

    :goto_4
    if-ge v5, v9, :cond_7

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v0, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-lt v10, v4, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-gt v10, v3, :cond_4

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-ne v10, p1, :cond_6

    sub-int v10, p2, p1

    invoke-virtual {v0, v10, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    :cond_4
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    move v1, v2

    move v3, p1

    move v4, p2

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/RecyclerView$s;->a(IZ)V

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->n:Z

    .line 473
    return-void
.end method
