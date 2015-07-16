.class public final Laqh;
.super Laqg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Laqg;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Laqg;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    invoke-static {v0}, Lawf;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 25
    iget-object v1, p0, Laqh;->b:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Laqh;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 35
    iget-boolean v0, p0, Laqg;->d:Z

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Laqh;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 41
    iget-object v0, p0, Laqh;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
