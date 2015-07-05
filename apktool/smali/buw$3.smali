.class final Lbuw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuw$c;

.field final synthetic b:Lbuw;


# direct methods
.method constructor <init>(Lbuw;Lbuw$c;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lbuw$3;->b:Lbuw;

    iput-object p2, p0, Lbuw$3;->a:Lbuw$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lbuw$3;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->a()V

    .line 354
    iget-object v0, p0, Lbuw$3;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->b()V

    .line 355
    iget-object v0, p0, Lbuw$3;->a:Lbuw$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbuw$c;->a(Z)V

    .line 356
    iget-object v0, p0, Lbuw$3;->b:Lbuw;

    invoke-static {v0}, Lbuw;->b(Lbuw;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbuw$3;->b:Lbuw;

    invoke-static {v1}, Lbuw;->a(Lbuw;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method
