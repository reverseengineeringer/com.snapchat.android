.class public final Landroid/support/v7/widget/RecyclerView$o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:I


# direct methods
.method static synthetic a(Landroid/support/v7/widget/RecyclerView$o$a;Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7340
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->c:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->c:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$r;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$o$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$o$a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$r;->a(II)V

    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$o$a;->f:I

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$o$a;->e:Z

    :goto_1
    return-void

    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$r;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$o$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$o$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$o$a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$r;->a(III)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$r;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$o$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$o$a;->b:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$o$a;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o$a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$r;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_4
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$o$a;->f:I

    goto :goto_1
.end method
