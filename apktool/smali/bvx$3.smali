.class final Lbvx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvx$c;

.field final synthetic b:Lbvx;


# direct methods
.method constructor <init>(Lbvx;Lbvx$c;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lbvx$3;->b:Lbvx;

    iput-object p2, p0, Lbvx$3;->a:Lbvx$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lbvx$3;->a:Lbvx$c;

    invoke-virtual {v0}, Lbvx$c;->a()V

    .line 354
    iget-object v0, p0, Lbvx$3;->a:Lbvx$c;

    invoke-virtual {v0}, Lbvx$c;->b()V

    .line 355
    iget-object v0, p0, Lbvx$3;->a:Lbvx$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbvx$c;->a(Z)V

    .line 356
    iget-object v0, p0, Lbvx$3;->b:Lbvx;

    invoke-static {v0}, Lbvx;->b(Lbvx;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbvx$3;->b:Lbvx;

    invoke-static {v1}, Lbvx;->a(Lbvx;)Landroid/view/animation/Animation;

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
