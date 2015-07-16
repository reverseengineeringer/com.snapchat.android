.class public Lcom/snapchat/android/ui/camera/TakeSnapButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Runnable;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:F

.field private final k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    .line 41
    iput-boolean v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->c:Z

    .line 126
    new-instance v0, Lcom/snapchat/android/ui/camera/TakeSnapButton$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/camera/TakeSnapButton$1;-><init>(Lcom/snapchat/android/ui/camera/TakeSnapButton;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->e:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->h:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->i:Landroid/graphics/RectF;

    .line 60
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0, p1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->k:F

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    iget v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    iget v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    iget v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->k:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->b:Z

    if-eqz v0, :cond_4

    .line 94
    iget-boolean v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->invalidate()V

    .line 95
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a:J

    sub-long/2addr v0, v2

    .line 97
    iget-boolean v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->d:Z

    if-eqz v2, :cond_3

    .line 98
    const-wide/16 v2, 0x168

    const-wide/16 v4, 0x1f4

    sub-long/2addr v0, v4

    mul-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 99
    invoke-direct {p0, p1, v6}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a(Landroid/graphics/Canvas;F)V

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->i:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 102
    :cond_3
    const-wide/16 v2, 0x7d

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x177

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x43bb8000    # 375.0f

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 68
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Lavp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->o:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    .line 78
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    .line 79
    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x14

    iput v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    .line 80
    iget v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->l:F

    iget v2, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->m:F

    iget v3, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->j:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->o:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->i:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method
