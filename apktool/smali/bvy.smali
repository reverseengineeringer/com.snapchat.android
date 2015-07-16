.class public final Lbvy;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:F

.field public final c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/PointF;

.field public e:Landroid/graphics/PointF;

.field private f:F

.field private g:F


# virtual methods
.method public final a(F)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lbvy;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lbvy;->f:F

    .line 63
    iput p2, p0, Lbvy;->g:F

    .line 64
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    .line 65
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    .line 51
    int-to-float v0, v0

    iput v0, p0, Lbvy;->b:F

    .line 52
    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lbvy;->f:F

    .line 57
    iget v1, p0, Lbvy;->g:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 58
    invoke-virtual {p0, v0}, Lbvy;->a(F)V

    .line 59
    return-void
.end method
