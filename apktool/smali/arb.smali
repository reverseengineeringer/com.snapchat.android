.class public final Larb;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/BitmapShader;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Larb;->b:F

    .line 40
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Larb;->d:Landroid/graphics/BitmapShader;

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Larb;->f:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Larb;->g:I

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Larb;->c:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Larb;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Larb;->a:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Larb;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Larb;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Larb;->f:I

    int-to-float v2, v2

    iget v3, p0, Larb;->g:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Larb;->f:I

    int-to-float v3, v3

    iget v4, p0, Larb;->g:I

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    iget-object v3, p0, Larb;->c:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 68
    iget v3, p0, Larb;->b:F

    div-float/2addr v3, v5

    iget v4, p0, Larb;->b:F

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 69
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 70
    iget-object v1, p0, Larb;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 73
    iget-object v0, p0, Larb;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Larb;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 77
    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 80
    int-to-float v1, v0

    iget v2, p0, Larb;->b:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 81
    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Larb;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    iget v2, p0, Larb;->b:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 83
    int-to-float v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Larb;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Larb;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Larb;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    invoke-virtual {p0}, Larb;->invalidateSelf()V

    .line 92
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Larb;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 97
    invoke-virtual {p0}, Larb;->invalidateSelf()V

    .line 98
    return-void
.end method
