.class public final Larc;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Larc;->d:F

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Larc;->a:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Larc;->c:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Larc;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Larc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 43
    iget-object v0, p0, Larc;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Larc;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 47
    div-float v1, v0, v4

    float-to-int v1, v1

    .line 50
    int-to-float v2, v1

    iget v3, p0, Larc;->d:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 52
    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 53
    int-to-float v0, v1

    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Larc;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    :cond_0
    iget v0, p0, Larc;->d:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 57
    int-to-float v0, v1

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Larc;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    :cond_1
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 37
    iget-object v0, p0, Larc;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 38
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    iget-object v0, p0, Larc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    invoke-virtual {p0}, Larc;->invalidateSelf()V

    .line 66
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Larc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 71
    iget-object v0, p0, Larc;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    invoke-virtual {p0}, Larc;->invalidateSelf()V

    .line 73
    return-void
.end method
