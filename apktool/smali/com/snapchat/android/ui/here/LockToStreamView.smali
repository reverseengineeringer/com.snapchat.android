.class public Lcom/snapchat/android/ui/here/LockToStreamView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field d:Z

.field e:Z

.field f:Z

.field g:Landroid/view/View;

.field h:F

.field i:F

.field private j:Landroid/graphics/RectF;

.field private k:[I

.field private l:Lcom/snapchat/android/analytics/HereAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/here/LockToStreamView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/HereAnalytics;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    .line 50
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    .line 51
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    .line 71
    iput-object p3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->l:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:Landroid/graphics/RectF;

    .line 81
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/here/LockToStreamView;->setBackgroundColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LockToStreamView;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getLocationOnScreen([I)V

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/here/LockToStreamView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/here/LockToStreamView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method final a(FF)F
    .locals 3

    .prologue
    .line 297
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    sub-float/2addr v0, v1

    .line 302
    :goto_0
    return v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 93
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    .line 94
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    .line 95
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    .line 96
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/snapchat/android/ui/here/LockToStreamView$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/LockToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 405
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    return-void
.end method

.method final a(II)V
    .locals 4

    .prologue
    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/snapchat/android/ui/here/LockToStreamView$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/LockToStreamView$4;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 421
    return-void
.end method

.method final a(Landroid/view/MotionEvent;Z)V
    .locals 5

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 268
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 269
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 270
    iget v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:F

    .line 278
    :goto_1
    if-eqz p2, :cond_2

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 280
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 282
    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v1

    .line 283
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 273
    :cond_1
    iget v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:F

    iget v3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    int-to-float v4, v1

    sub-float v0, v4, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, v3, v0}, Lats;->a(FFF)F

    move-result v0

    .line 276
    iget v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleX(F)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleY(F)V

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 173
    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 107
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    int-to-float v2, v2

    .line 113
    div-float v3, v2, v5

    .line 115
    int-to-float v0, v0

    div-float v4, v1, v5

    add-float/2addr v0, v4

    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 117
    sub-float v0, v2, v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 123
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleX(F)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleY(F)V

    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 126
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 127
    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    .line 128
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method

.method getParentHeight()I
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 431
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 191
    iget-object v6, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, v0, v1

    .line 200
    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 203
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setMeasuredDimension(II)V

    .line 204
    return-void

    .line 197
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
