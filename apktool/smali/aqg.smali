.class public abstract Laqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final a:Landroid/animation/AnimatorSet;

.field protected final b:Landroid/view/View;

.field protected final c:Landroid/view/View;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;J)V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Laqg;->b:Landroid/view/View;

    .line 22
    iput-object p2, p0, Laqg;->c:Landroid/view/View;

    .line 24
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    .line 25
    iget-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 26
    iget-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 27
    iget-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iget-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Laqg;->a()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Laqg;->b()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/animation/ObjectAnimator;
.end method

.method protected abstract b()Landroid/animation/ObjectAnimator;
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqg;->d:Z

    .line 78
    iget-object v0, p0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 79
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
