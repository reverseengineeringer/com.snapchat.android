.class final Lbvx$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


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
    .line 363
    iput-object p1, p0, Lbvx$4;->b:Lbvx;

    iput-object p2, p0, Lbvx$4;->a:Lbvx$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    .line 368
    iget-object v0, p0, Lbvx$4;->a:Lbvx$c;

    iget v0, v0, Lbvx$c;->h:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Lbvx$4;->a:Lbvx$c;

    iget-wide v4, v4, Lbvx$c;->r:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 370
    iget-object v1, p0, Lbvx$4;->a:Lbvx$c;

    iget v1, v1, Lbvx$c;->m:F

    .line 371
    iget-object v2, p0, Lbvx$4;->a:Lbvx$c;

    iget v2, v2, Lbvx$c;->l:F

    .line 372
    iget-object v3, p0, Lbvx$4;->a:Lbvx$c;

    iget v3, v3, Lbvx$c;->n:F

    .line 374
    sub-float v0, v6, v0

    .line 375
    invoke-static {}, Lbvx;->a()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 377
    iget-object v1, p0, Lbvx$4;->a:Lbvx$c;

    invoke-virtual {v1, v0}, Lbvx$c;->b(F)V

    .line 378
    invoke-static {}, Lbvx;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 381
    iget-object v1, p0, Lbvx$4;->a:Lbvx$c;

    invoke-virtual {v1, v0}, Lbvx$c;->a(F)V

    .line 382
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 383
    iget-object v1, p0, Lbvx$4;->a:Lbvx$c;

    invoke-virtual {v1, v0}, Lbvx$c;->c(F)V

    .line 384
    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44340000    # 720.0f

    iget-object v2, p0, Lbvx$4;->b:Lbvx;

    invoke-static {v2}, Lbvx;->c(Lbvx;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 386
    iget-object v1, p0, Lbvx$4;->b:Lbvx;

    invoke-virtual {v1, v0}, Lbvx;->a(F)V

    .line 387
    return-void
.end method
