.class public abstract Laow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final a:Landroid/animation/AnimatorSet;

.field protected final b:Landroid/view/View;

.field protected final c:Landroid/view/View;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Laow;->b:Landroid/view/View;

    .line 26
    iput-object p2, p0, Laow;->c:Landroid/view/View;

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Laow;->a:Landroid/animation/AnimatorSet;

    .line 29
    iget-object v0, p0, Laow;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 30
    iget-object v0, p0, Laow;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 31
    iget-object v0, p0, Laow;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    iget-object v0, p0, Laow;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Laow;->a()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Laow;->b()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/animation/ObjectAnimator;
.end method

.method protected abstract b()Landroid/animation/ObjectAnimator;
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
