.class final Laqk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Laqk;


# direct methods
.method constructor <init>(Laqk;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Laqk$1;->d:Laqk;

    iput p2, p0, Laqk$1;->a:I

    iput-object p3, p0, Laqk$1;->b:Landroid/view/View;

    iput-object p4, p0, Laqk$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 187
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Laqk$1;->d:Laqk;

    invoke-static {v1}, Laqk;->a(Laqk;)F

    move-result v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 188
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 190
    iget-object v1, p0, Laqk$1;->d:Laqk;

    invoke-static {v1}, Laqk;->b(Laqk;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Laqk$1;->a:I

    if-lez v1, :cond_0

    .line 191
    new-instance v1, Laqk$1$1;

    invoke-direct {v1, p0}, Laqk$1$1;-><init>(Laqk$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    :goto_0
    iget-object v1, p0, Laqk$1;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Laqk$1;->d:Laqk;

    invoke-static {v1}, Laqk;->c(Laqk;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
