.class final Lbvx$5;
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
    .line 393
    iput-object p1, p0, Lbvx$5;->b:Lbvx;

    iput-object p2, p0, Lbvx$5;->a:Lbvx$c;

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
    iget-object v0, p0, Lbvx$5;->a:Lbvx$c;

    invoke-virtual {v0}, Lbvx$c;->b()V

    .line 407
    iget-object v0, p0, Lbvx$5;->a:Lbvx$c;

    invoke-virtual {v0}, Lbvx$c;->a()V

    .line 408
    iget-object v0, p0, Lbvx$5;->a:Lbvx$c;

    iget-object v1, p0, Lbvx$5;->a:Lbvx$c;

    iget v1, v1, Lbvx$c;->f:F

    invoke-virtual {v0, v1}, Lbvx$c;->a(F)V

    .line 409
    iget-object v0, p0, Lbvx$5;->b:Lbvx;

    iget-object v1, p0, Lbvx$5;->b:Lbvx;

    invoke-static {v1}, Lbvx;->c(Lbvx;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lbvx;->a(Lbvx;F)F

    .line 410
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lbvx$5;->b:Lbvx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbvx;->a(Lbvx;F)F

    .line 397
    return-void
.end method
