.class final Lbuw$5;
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
    .line 393
    iput-object p1, p0, Lbuw$5;->b:Lbuw;

    iput-object p2, p0, Lbuw$5;->a:Lbuw$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lbuw$5;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->b()V

    .line 407
    iget-object v0, p0, Lbuw$5;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->a()V

    .line 408
    iget-object v0, p0, Lbuw$5;->a:Lbuw$c;

    iget-object v1, p0, Lbuw$5;->a:Lbuw$c;

    iget v1, v1, Lbuw$c;->f:F

    invoke-virtual {v0, v1}, Lbuw$c;->a(F)V

    .line 409
    iget-object v0, p0, Lbuw$5;->b:Lbuw;

    iget-object v1, p0, Lbuw$5;->b:Lbuw;

    invoke-static {v1}, Lbuw;->c(Lbuw;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lbuw;->a(Lbuw;F)F

    .line 410
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lbuw$5;->b:Lbuw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbuw;->a(Lbuw;F)F

    .line 397
    return-void
.end method
